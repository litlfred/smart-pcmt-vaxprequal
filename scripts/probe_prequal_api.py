#!/usr/bin/env python3
"""Probe the ePQS SOA API to establish how it actually paginates.

The SOA services answer HTTP 200 whether or not they honour a pagination
parameter, so a client that guesses wrong gets a short result set and no
error.  This script asks the service a fixed set of questions and prints
what it observes, so the sync can be configured from evidence instead of
assumption.

It must run somewhere that can reach the SOA host (WHO intranet / VPN);
the services are not published on the public internet.

Environment variables:
  PREQUAL_API_ENDPOINT  - API endpoint URL
  PREQUAL_API_USERNAME  - API username
  PREQUAL_API_PASSWORD  - API password

Usage:
  python scripts/probe_prequal_api.py
  python scripts/probe_prequal_api.py --limits 5,20,50,200
"""

import argparse
import base64
import json
import logging
import os
import sys
import urllib.error
import urllib.parse
import urllib.request

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from import_salesforce import (  # noqa: E402
    PARAM_LIMIT,
    PARAM_OFFSET,
    PreQualAPIError,
    build_api_url,
    parse_response,
    product_key,
)

logging.basicConfig(level=logging.INFO, format="%(levelname)s: %(message)s")
logger = logging.getLogger(__name__)


def request_json(url, username, password, timeout=180):
    """Fetch a URL and return (parsed JSON, error string).

    Args:
        url: Full request URL.
        username: API username.
        password: API password.
        timeout: Request timeout in seconds.

    Returns:
        Tuple of (parsed body or None, error description or None).
    """
    req = urllib.request.Request(url)
    credentials = base64.b64encode(f"{username}:{password}".encode("utf-8")).decode("ascii")
    req.add_header("Authorization", f"Basic {credentials}")
    req.add_header("Accept", "application/json")
    try:
        with urllib.request.urlopen(req, timeout=timeout) as resp:
            data = parse_response(resp.read().decode("utf-8"))
    except urllib.error.HTTPError as exc:
        hint = " - check the password for THIS environment" if exc.code == 401 else ""
        return None, f"HTTP {exc.code} {exc.reason}{hint}"
    except urllib.error.URLError as exc:
        return None, f"unreachable ({exc.reason}) - are you on the WHO network/VPN?"
    except (TimeoutError, PreQualAPIError) as exc:
        return None, f"{type(exc).__name__}: {exc}"

    # The services answer HTTP 200 and report failures in the body, so an
    # unchecked fault would look like an empty result set.
    status = data.get("Status") or {}
    code = status.get("StatusCode")
    if code is not None and str(code).upper() != "SUCCESS":
        return None, f"{code}: {status.get('StatusMessage') or status}"
    return data, None


def summarize(data):
    """Reduce a response to the facts the probe compares.

    Args:
        data: Parsed JSON response.

    Returns:
        Dict with record count, ids, and the echoed AdditionalInfo values.
    """
    products = data.get("FinishedVaccineProducts") or []
    info = data.get("AdditionalInfo") or {}
    return {
        "count": len(products),
        "ids": [product_key(p) for p in products],
        "echoed_offset": info.get(PARAM_OFFSET),
        "echoed_limit": info.get(PARAM_LIMIT),
        "total_records": info.get("TotalRecords"),
        "status": (data.get("Status") or {}).get("StatusCode"),
    }


def probe_limit(endpoint, username, password, limits, timeout):
    """Report how many records the service returns for each requested Limit.

    Args:
        endpoint: Base API URL.
        username: API username.
        password: API password.
        limits: Iterable of Limit values to try.
        timeout: Request timeout in seconds.

    Returns:
        Dict mapping requested limit to its summary (or None on failure).
    """
    print("\n== Does Limit control page size? ==")
    results = {}
    for limit in limits:
        url = build_api_url(endpoint, offset=0, limit=limit)
        data, error = request_json(url, username, password, timeout)
        if error:
            print(f"  Limit={limit:<5} FAILED: {error}")
            results[limit] = None
            continue
        summary = summarize(data)
        results[limit] = summary
        print(
            f"  Limit={limit:<5} returned {summary['count']:<4} records "
            f"(echoed Limit={summary['echoed_limit']}, TotalRecords={summary['total_records']})"
        )
    return results


def probe_offset(endpoint, username, password, page_size, timeout):
    """Report whether OffSet moves the window, and whether casing matters.

    Args:
        endpoint: Base API URL.
        username: API username.
        password: API password.
        page_size: Page size to hold constant across the comparison.
        timeout: Request timeout in seconds.

    Returns:
        Dict of observations, including whether OffSet shifted the window.
    """
    print("\n== Does OffSet move the window? ==")
    observations = {}

    first_url = build_api_url(endpoint, offset=0, limit=page_size)
    first, error = request_json(first_url, username, password, timeout)
    if error:
        print(f"  OffSet=0 FAILED: {error}")
        return observations
    first_summary = summarize(first)
    observations["first"] = first_summary
    print(f"  OffSet=0           -> {first_summary['count']} records, first id {first_summary['ids'][:1]}")

    step = first_summary["count"] or page_size
    second_url = build_api_url(endpoint, offset=step, limit=page_size)
    second, error = request_json(second_url, username, password, timeout)
    if error:
        print(f"  OffSet={step} FAILED: {error}")
        return observations
    second_summary = summarize(second)
    observations["second"] = second_summary
    print(f"  OffSet={step:<12} -> {second_summary['count']} records, first id {second_summary['ids'][:1]}")

    overlap = set(first_summary["ids"]) & set(second_summary["ids"])
    honoured = bool(second_summary["ids"]) and not overlap
    observations["offset_honoured"] = honoured
    observations["overlap"] = len(overlap)
    print(
        f"  -> overlap of {len(overlap)} ids; OffSet is "
        f"{'HONOURED' if honoured else 'IGNORED (or past the end)'}"
    )

    # The historical bug: lowercase spellings are accepted by HTTP and then
    # ignored by the service, which silently re-serves the first page.
    parts = urllib.parse.urlsplit(endpoint)
    lower_query = urllib.parse.parse_qsl(parts.query, keep_blank_values=True)
    lower_query = [(k, v) for k, v in lower_query if k.lower() not in {"offset", "limit"}]
    lower_query += [("offset", str(step)), ("limit", str(page_size))]
    lower_url = urllib.parse.urlunsplit(
        (
            parts.scheme,
            parts.netloc,
            parts.path,
            urllib.parse.urlencode(lower_query, safe=":.", quote_via=urllib.parse.quote),
            parts.fragment,
        )
    )
    lower, error = request_json(lower_url, username, password, timeout)
    if error:
        print(f"  lowercase offset={step} FAILED: {error}")
        return observations
    lower_summary = summarize(lower)
    observations["lowercase"] = lower_summary
    # Three outcomes, and only one of them means the lowercase names worked:
    # matching page 1 means the service fell back to its own paging, an
    # empty result means it needs the PascalCase names and got neither, and
    # anything else means lowercase genuinely had an effect.
    if lower_summary["ids"] == first_summary["ids"]:
        observations["lowercase_ignored"] = True
        verdict = "IGNORED, re-served page 1"
    elif not lower_summary["ids"]:
        observations["lowercase_ignored"] = True
        verdict = "IGNORED, and with no valid OffSet/Limit the service returns nothing"
    else:
        observations["lowercase_ignored"] = False
        verdict = "had an effect"
    print(f"  lowercase offset/limit -> {lower_summary['count']} records; {verdict}")
    return observations


def report(limit_results, offset_results):
    """Print the configuration the observations support.

    Args:
        limit_results: Output of probe_limit.
        offset_results: Output of probe_offset.
    """
    print("\n== Verdict ==")
    usable = {k: v for k, v in limit_results.items() if v}
    if not usable:
        print("  No successful requests; nothing to conclude.")
        return

    totals = {v["total_records"] for v in usable.values() if v["total_records"] is not None}
    total = sorted(totals)[0] if totals else None
    cap = max(v["count"] for v in usable.values())
    biggest_request = max(usable)

    if total is not None:
        print(f"  The service reports {total} total records.")
    print(f"  The most records one response ever returned was {cap}.")

    if cap < biggest_request:
        print(
            f"  Limit={biggest_request} returned only {cap}, so the row count per "
            "response is capped server side. Page size must come from the "
            "records actually returned, never from the requested Limit."
        )

    if offset_results.get("lowercase_ignored"):
        if offset_results.get("offset_honoured"):
            print(
                "  Lowercase offset/limit were ignored while the PascalCase "
                "spellings worked. This is the cause of the 35-record ceiling: "
                "the old client sent lowercase parameters, so OffSet never "
                "advanced and every page was the same one."
            )
        else:
            print(
                "  Lowercase offset/limit were ignored, but so was PascalCase "
                "OffSet, so this run cannot tell casing apart from the service "
                "not implementing paging at all."
            )

    if offset_results.get("offset_honoured"):
        print("  OffSet works. Run the sync with:")
        print(f"    --pagination-strategy offset --page-size {min(cap, 20) or 20}")
    elif "offset_honoured" in offset_results:
        print(
            "  OffSet did NOT move the window. Either the deployed FVP service "
            "version does not implement it (ask the WHO integration team for a "
            "version that does), or use:"
        )
        print("    --pagination-strategy timestamp")
    if total is not None and cap >= total:
        print("  One request already returns everything; pagination is moot today.")


def main():
    parser = argparse.ArgumentParser(description="Probe the ePQS SOA API pagination contract")
    parser.add_argument(
        "--limits",
        default="5,20,50,200,2000",
        help="Comma-separated Limit values to try (default: 5,20,50,200,2000)",
    )
    parser.add_argument(
        "--page-size",
        type=int,
        default=20,
        help="Page size held constant while testing OffSet (default: 20)",
    )
    parser.add_argument(
        "--timeout",
        type=int,
        default=180,
        help="Per-request timeout in seconds (default: 180)",
    )
    args = parser.parse_args()

    endpoint = os.environ.get("PREQUAL_API_ENDPOINT")
    username = os.environ.get("PREQUAL_API_USERNAME")
    password = os.environ.get("PREQUAL_API_PASSWORD")
    if not endpoint:
        logger.error("PREQUAL_API_ENDPOINT environment variable is required")
        sys.exit(1)
    if not username or not password:
        logger.error("PREQUAL_API_USERNAME and PREQUAL_API_PASSWORD environment variables are required")
        sys.exit(1)

    parts = urllib.parse.urlsplit(endpoint)
    print(f"Probing {parts.netloc}{parts.path}")

    limits = [int(x) for x in args.limits.split(",") if x.strip()]
    limit_results = probe_limit(endpoint, username, password, limits, args.timeout)
    offset_results = probe_offset(endpoint, username, password, args.page_size, args.timeout)
    report(limit_results, offset_results)


if __name__ == "__main__":
    main()
