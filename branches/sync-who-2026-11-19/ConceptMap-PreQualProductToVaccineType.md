# WHO PreQual Vaccine Product to Vaccine Type - SMART Product Dataset for Prequalified Vaccines v0.2.0

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **WHO PreQual Vaccine Product to Vaccine Type**

## ConceptMap: WHO PreQual Vaccine Product to Vaccine Type (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/pcmt-vaxprequal/ConceptMap/PreQualProductToVaccineType | *Version*:0.2.0 |
| Active as of 2026-11-19 | *Computable Name*:PreQualProductToVaccineType |

 
Maps each WHO PreQual finished vaccine product identifier to the vaccine type it belongs to. Products whose detail has been de-published carry no vaccine type and are marked as having no map. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PreQualProductToVaccineType",
  "url" : "http://smart.who.int/pcmt-vaxprequal/ConceptMap/PreQualProductToVaccineType",
  "version" : "0.2.0",
  "name" : "PreQualProductToVaccineType",
  "title" : "WHO PreQual Vaccine Product to Vaccine Type",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-11-19T07:54:24+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Maps each WHO PreQual finished vaccine product identifier to the vaccine type it belongs to. Products whose detail has been de-published carry no vaccine type and are marked as having no map.",
  "sourceScopeCanonical" : "http://smart.who.int/pcmt-vaxprequal/ValueSet/PreQualProductIds",
  "targetScopeCanonical" : "http://smart.who.int/pcmt-vaxprequal/ValueSet/PreQualVaccineType",
  "group" : [{
    "source" : "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualProductIds",
    "target" : "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType",
    "element" : [{
      "code" : "a3K3X000005atRtUAI",
      "display" : "CYVAC (Malaria), Serum Institute of India, Vial, 2 doses [FVP-P-447]",
      "target" : [{
        "code" : "Malaria",
        "display" : "Recombinant malaria vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000005atSwUAI",
      "display" : "CYVAC (Malaria), Serum Institute of India, Vial, 1 dose [FVP-P-446]",
      "target" : [{
        "code" : "Malaria",
        "display" : "Recombinant malaria vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MihsUAC",
      "display" : "Rotarix (LARV), GlaxoSmithKline Biologicals SA, Plastic tube, 1 dose [FVP-P-62]",
      "target" : [{
        "code" : "LARV",
        "display" : "Rotavirus vaccine (live attenuated) (oral)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MihtUAC",
      "display" : "Polioviral vaccine (tOPV), Haffkine Bio Pharmaceutical Corporation Ltd, Vial, 20 doses [FVP-P-63]",
      "target" : [{
        "code" : "tOPV",
        "display" : "Poliomyelitis vaccines (trivalent live, oral, innactivated, type 1,2, 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MihuUAC",
      "display" : "Stabilized Yellow Fever Vaccine (YF), Institut Pasteur de Dakar (IPD), Ampoule, 5 doses [FVP-P-64]",
      "target" : [{
        "code" : "YF",
        "display" : "Yellow fever vaccine (live attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MihvUAC",
      "display" : "Stabilized Yellow Fever Vaccine (YF), Institut Pasteur de Dakar (IPD), Ampoule, 20 doses [FVP-P-65]",
      "target" : [{
        "code" : "YF",
        "display" : "Yellow fever vaccine (live attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MihwUAC",
      "display" : "Stabilized Yellow Fever Vaccine (YF), Institut Pasteur de Dakar (IPD), Ampoule, 10 doses [FVP-P-66]",
      "target" : [{
        "code" : "YF",
        "display" : "Yellow fever vaccine (live attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MihxUAC",
      "display" : "BCG Freeze Dried Glutamate vaccine (BCG), Japan BCG Laboratory (JBL), Ampoule, 20 doses [FVP-P-67]",
      "target" : [{
        "code" : "BCG",
        "display" : "BCG",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MihyUAC",
      "display" : "Euvax B (HepB), LG Chem Ltd (LGC), Vial, 1 dose [FVP-P-68]",
      "target" : [{
        "code" : "HepB",
        "display" : "Hepatitis B vaccine (recombinant)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MihzUAC",
      "display" : "Withdrawn: Was Prequalified [FVP-P-27]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006Mii0UAC",
      "display" : "Priorix (MMR), GlaxoSmithKline Biologicals SA, Vial, 1 dose [FVP-P-61]",
      "target" : [{
        "code" : "MMR",
        "display" : "Measles, mumps, rubella combined vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mii1UAC",
      "display" : "Tetatox (TT), Bul Bio-National Center of Infectious and Parasitic Diseases Ltd., Vial, 10 doses [FVP-P-75]",
      "target" : [{
        "code" : "TT",
        "display" : "Tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mii2UAC",
      "display" : "Tetatox (TT), Bul Bio-National Center of Infectious and Parasitic Diseases Ltd., Vial, 20 doses [FVP-P-76]",
      "target" : [{
        "code" : "TT",
        "display" : "Tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mii3UAC",
      "display" : "Diftet (DT), Bul Bio-National Center of Infectious and Parasitic Diseases Ltd., Vial, 10 doses [FVP-P-77]",
      "target" : [{
        "code" : "DT",
        "display" : "Diphtheria and tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mii4UAC",
      "display" : "Withdrawn: Was Prequalified [FVP-P-292]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006Mii5UAC",
      "display" : "HEALIVE (HepA), Sinovac Biotech Co. Ltd, Vial, 1 dose [FVP-P-311]",
      "target" : [{
        "code" : "HepA",
        "display" : "Hepatitis A vaccine (inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mii6UAC",
      "display" : "Poliomyelitis Vaccine (live oral attenuated human Diploid Cell) type 1 and 3 (bOPV), Beijing Institute of Biological Products Co., Ltd., Vial, 20 doses [FVP-P-319]",
      "target" : [{
        "code" : "bOPV",
        "display" : "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mii7UAC",
      "display" : "Euvax B (HepB), LG Chem Ltd (LGC), Vial, 10 doses [FVP-P-71]",
      "target" : [{
        "code" : "HepB",
        "display" : "Hepatitis B vaccine (recombinant)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mii8UAC",
      "display" : "Diftet (DT), Bul Bio-National Center of Infectious and Parasitic Diseases Ltd., Vial, 20 doses [FVP-P-78]",
      "target" : [{
        "code" : "DT",
        "display" : "Diphtheria and tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mii9UAC",
      "display" : "Tetadif (dT), Bul Bio-National Center of Infectious and Parasitic Diseases Ltd., Vial, 10 doses [FVP-P-79]",
      "target" : [{
        "code" : "dT",
        "display" : "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiAUAS",
      "display" : "Tetadif (dT), Bul Bio-National Center of Infectious and Parasitic Diseases Ltd., Vial, 20 doses [FVP-P-80]",
      "target" : [{
        "code" : "dT",
        "display" : "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiBUAS",
      "display" : "Withdrawn: Was Prequalified [FVP-P-329]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006MiiCUAS",
      "display" : "BCG Vaccine (BCG), Bul Bio-National Center of Infectious and Parasitic Diseases Ltd., Ampoule, 10 doses [FVP-P-73]",
      "target" : [{
        "code" : "BCG",
        "display" : "BCG",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiDUAS",
      "display" : "BCG Vaccine (BCG), Bul Bio-National Center of Infectious and Parasitic Diseases Ltd., Ampoule, 20 doses [FVP-P-74]",
      "target" : [{
        "code" : "BCG",
        "display" : "BCG",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiEUAS",
      "display" : "Measles and Rubella Vaccine Live Attenuated (MR), Serum Institute of India, Vial, 1 dose [FVP-P-137]",
      "target" : [{
        "code" : "MR",
        "display" : "Measles, rubella combined vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiFUAS",
      "display" : "Tetanus  Toxoid Vaccine Adsorbed (TT), Serum Institute of India, Vial, 20 doses [FVP-P-136]",
      "target" : [{
        "code" : "TT",
        "display" : "Tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiGUAS",
      "display" : "Measles and Rubella Vaccine Live Attenuated (MR), Serum Institute of India, Vial, 2 doses [FVP-P-138]",
      "target" : [{
        "code" : "MR",
        "display" : "Measles, rubella combined vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiHUAS",
      "display" : "Measles Mumps and Rubella Vaccine Live Attenuated (MMR), Serum Institute of India, Vial, 1 dose [FVP-P-141]",
      "target" : [{
        "code" : "MMR",
        "display" : "Measles, mumps, rubella combined vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiIUAS",
      "display" : "Measles Mumps and Rubella Vaccine Live Attenuated (MMR), Serum Institute of India, Vial, 2 doses [FVP-P-142]",
      "target" : [{
        "code" : "MMR",
        "display" : "Measles, mumps, rubella combined vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiJUAS",
      "display" : "Measles Mumps and Rubella Vaccine Live Attenuated (MMR), Serum Institute of India, Vial, 10 doses [FVP-P-144]",
      "target" : [{
        "code" : "MMR",
        "display" : "Measles, mumps, rubella combined vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiKUAS",
      "display" : "Measles Mumps and Rubella Vaccine Live Attenuated (MMR), Serum Institute of India, Vial, 5 doses [FVP-P-143]",
      "target" : [{
        "code" : "MMR",
        "display" : "Measles, mumps, rubella combined vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiLUAS",
      "display" : "Japanese Encephalitis Vaccine Live (SA14-14-2) (JE), Chengdu Institute of Biological Products Co. Ltd, Two vial set (active + excipient), 5 doses [FVP-P-272]",
      "target" : [{
        "code" : "JE",
        "display" : "Japanese encephalitis vaccine (live, attenuated) for human use",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiMUAS",
      "display" : "Measles Vaccine Live Attenuated (M), Serum Institute of India, Vial, 1 dose [FVP-P-145]",
      "target" : [{
        "code" : "M",
        "display" : "Measles vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiNUAS",
      "display" : "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed (DTwP), Serum Institute of India, Ampoule, 1 dose [FVP-P-124]",
      "target" : [{
        "code" : "DTwP",
        "display" : "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiOUAS",
      "display" : "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed (DTwP), Serum Institute of India, Vial, 10 doses [FVP-P-125]",
      "target" : [{
        "code" : "DTwP",
        "display" : "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiPUAS",
      "display" : "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed (DTwP), Serum Institute of India, Vial, 20 doses [FVP-P-126]",
      "target" : [{
        "code" : "DTwP",
        "display" : "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiQUAS",
      "display" : "Withdrawn: Was Prequalified [FVP-P-127]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006MiiRUAS",
      "display" : "Withdrawn: Was Prequalified [FVP-P-104]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006MiiSUAS",
      "display" : "Withdrawn: Was Prequalified [FVP-P-105]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006MiiTUAS",
      "display" : "Withdrawn: Was Prequalified [FVP-P-128]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006MiiUUAS",
      "display" : "Withdrawn: Was Prequalified [FVP-P-129]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006MiiVUAS",
      "display" : "Hepatitis B Vaccine (rDNA) (Adult) (HepB), Serum Institute of India, Vial, 10 doses [FVP-P-130]",
      "target" : [{
        "code" : "HepB",
        "display" : "Hepatitis B vaccine (recombinant)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiWUAS",
      "display" : "Hepatitis B Vaccine (rDNA) (Adult) (HepB), Serum Institute of India, Vial, 1 dose [FVP-P-131]",
      "target" : [{
        "code" : "HepB",
        "display" : "Hepatitis B vaccine (recombinant)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiXUAS",
      "display" : "Hepatitis B Vaccine (rDNA) (Paediatric) (HepB), Serum Institute of India, Vial, 10 doses [FVP-P-132]",
      "target" : [{
        "code" : "HepB",
        "display" : "Hepatitis B vaccine (recombinant)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiYUAS",
      "display" : "Hepatitis B Vaccine (rDNA) (Paedriatic) (HepB), Serum Institute of India, Vial, 1 dose [FVP-P-133]",
      "target" : [{
        "code" : "HepB",
        "display" : "Hepatitis B vaccine (recombinant)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiZUAS",
      "display" : "Tetanus  Toxoid Vaccine Adsorbed (TT), Serum Institute of India, Ampoule, 1 dose [FVP-P-134]",
      "target" : [{
        "code" : "TT",
        "display" : "Tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiaUAC",
      "display" : "Panvax (IIVPandemic), Seqirus Australia Pty Ltd, Vial, 10 doses [FVP-P-205]",
      "target" : [{
        "code" : "IIVPandemic",
        "display" : "Human pandemic influenza vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiibUAC",
      "display" : "IPV Vaccine SSI (IPV), AJ Vaccines A/S, Vial, 1 dose [FVP-P-231]",
      "target" : [{
        "code" : "IPV",
        "display" : "Poliomyelitis vaccine (inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiicUAC",
      "display" : "Japanese Encephalitis Vaccine Live (SA14-14-2) (JE), Chengdu Institute of Biological Products Co. Ltd, Two vial set (active + excipient), 1 dose [FVP-P-271]",
      "target" : [{
        "code" : "JE",
        "display" : "Japanese encephalitis vaccine (live, attenuated) for human use",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiidUAC",
      "display" : "Measles and Rubella Vaccine Live Attenuated (MR), Serum Institute of India, Vial, 5 doses [FVP-P-139]",
      "target" : [{
        "code" : "MR",
        "display" : "Measles, rubella combined vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiigUAC",
      "display" : "Withdrawn: Was Prequalified [FVP-P-109]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006MiihUAC",
      "display" : "VERORAB (Rabies), Sanofi Pasteur SA, Vial, 1 dose [FVP-P-111]",
      "target" : [{
        "code" : "Rabies",
        "display" : "Rabies vaccine for human use",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiiUAC",
      "display" : "STAMARIL (YF), Sanofi Pasteur SA, Vial + Ampoule, 10 doses [FVP-P-112]",
      "target" : [{
        "code" : "YF",
        "display" : "Yellow fever vaccine (live attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiijUAC",
      "display" : "Tetanus  Toxoid Vaccine Adsorbed (TT), Serum Institute of India, Vial, 10 doses [FVP-P-135]",
      "target" : [{
        "code" : "TT",
        "display" : "Tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiikUAC",
      "display" : "Diphtheria and Tetanus Vaccine Adsorbed for Adults and Adolescents (dT), Serum Institute of India, Vial, 10 doses [FVP-P-122]",
      "target" : [{
        "code" : "dT",
        "display" : "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiilUAC",
      "display" : "Diphtheria and Tetanus Vaccine Adsorbed for Adults and Adolescents (dT), Serum Institute of India, Vial, 20 doses [FVP-P-123]",
      "target" : [{
        "code" : "dT",
        "display" : "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiimUAC",
      "display" : "Measles and Rubella Vaccine Live Attenuated (MR), Serum Institute of India, Vial, 10 doses [FVP-P-140]",
      "target" : [{
        "code" : "MR",
        "display" : "Measles, rubella combined vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiinUAC",
      "display" : "IMOVAX POLIO (IPV), Sanofi Pasteur SA, Vial, 10 doses [FVP-P-98]",
      "target" : [{
        "code" : "IPV",
        "display" : "Poliomyelitis vaccine (inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiioUAC",
      "display" : "Diphtheria and Tetanus Vaccine Adsorbed (Paediatric) (DT), Serum Institute of India, Ampoule, 1 dose [FVP-P-118]",
      "target" : [{
        "code" : "DT",
        "display" : "Diphtheria and tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiipUAC",
      "display" : "Diphtheria and Tetanus Vaccine Adsorbed (Pediatric) (DT), Serum Institute of India, Vial, 10 doses [FVP-P-119]",
      "target" : [{
        "code" : "DT",
        "display" : "Diphtheria and tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiqUAC",
      "display" : "Diphtheria and Tetanus Vaccine Adsorbed (Pediatric) (DT), Serum Institute of India, Vial, 20 doses [FVP-P-120]",
      "target" : [{
        "code" : "DT",
        "display" : "Diphtheria and tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiirUAC",
      "display" : "Diphtheria and Tetanus Vaccine Adsorbed for Adults and Adolescents (dT), Serum Institute of India, Ampoule, 1 dose [FVP-P-121]",
      "target" : [{
        "code" : "dT",
        "display" : "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiisUAC",
      "display" : "BCG Vaccine (BCG), Serum Institute of India, Vial, 20 doses [FVP-P-117]",
      "target" : [{
        "code" : "BCG",
        "display" : "BCG",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiitUAC",
      "display" : "BIOPOLIO B1/3 (bOPV), Bharat Biotech International Limited, Vial, 10 doses [FVP-P-337]",
      "target" : [{
        "code" : "bOPV",
        "display" : "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiuUAC",
      "display" : "Euvichol-Plus (OCV), EuBiologics Co.  Ltd., Plastic tube, 1 dose [FVP-P-336]",
      "target" : [{
        "code" : "OCV",
        "display" : "Inactivated oral cholera vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiivUAC",
      "display" : "BCG Freeze Dried Glutamate vaccine (BCG), Japan BCG Laboratory (JBL), Ampoule, 10 doses [FVP-P-338]",
      "target" : [{
        "code" : "BCG",
        "display" : "BCG",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiiwUAC",
      "display" : "Eupolio Inj. (sIPV), LG Chem Ltd (LGC), Vial, 5 doses [FVP-P-390]",
      "target" : [{
        "code" : "sIPV",
        "display" : "Poliomyelitis vaccine (inactivated-Sabin)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiixUAC",
      "display" : "Cancelled: Assessment [FVP-P-391]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006MiiyUAC",
      "display" : "Measles and Rubella Vaccine (Live) (Attenuated Freeze Dried) (MR), Biological E. Limited, Vial + Ampoule, 1 dose [FVP-P-342]",
      "target" : [{
        "code" : "MR",
        "display" : "Measles, rubella combined vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiizUAC",
      "display" : "Rotavac (LARV), Bharat Biotech International Limited, Vial, 10 doses [FVP-P-343]",
      "target" : [{
        "code" : "LARV",
        "display" : "Rotavirus vaccine (live attenuated) (oral)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mij0UAC",
      "display" : "SKYVaricella Inj. (VAR), SK Bioscience Co.  Ltd. (SK), Two vial set (active + excipient), 1 dose [FVP-P-356]",
      "target" : [{
        "code" : "VAR",
        "display" : "Varicella",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mij1UAC",
      "display" : "Monovalent Oral Poliomyelitis Vaccine Type 2 (mOPV2), PT Bio Farma (Persero), Vial, 20 doses [FVP-P-358]",
      "target" : [{
        "code" : "mOPV2",
        "display" : "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 2)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mij2UAC",
      "display" : "JEEV® (6µg) (JE), Biological E. Limited, Vial, 5 doses [FVP-P-359]",
      "target" : [{
        "code" : "JE",
        "display" : "Japanese encephalitis vaccine (inactivated) for human use",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mij3UAC",
      "display" : "Typbar-TCV (Typhoid), Bharat Biotech International Limited, Vial, 5 doses [FVP-P-347]",
      "target" : [{
        "code" : "Typhoid",
        "display" : "Typhoid conjugate vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mij4UAC",
      "display" : "Afluria® Quadrivalent (IIV4), Seqirus Australia Pty Ltd, Vial, 10 doses [FVP-P-350]",
      "target" : [{
        "code" : "IIV4",
        "display" : "Influenza vaccine quadrivalent (split virion, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mij5UAC",
      "display" : "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BE Td (dT), Biological E. Limited, Vial, 1 dose [FVP-P-279]",
      "target" : [{
        "code" : "dT",
        "display" : "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mij6UAC",
      "display" : "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BE Td (dT), Biological E. Limited, Vial, 10 doses [FVP-P-280]",
      "target" : [{
        "code" : "dT",
        "display" : "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mij7UAC",
      "display" : "Dukoral (OCV), Valneva Sweden AB, Vial + Buffer sachet, 1 dose [FVP-P-116]",
      "target" : [{
        "code" : "OCV",
        "display" : "Inactivated oral cholera vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mij8UAC",
      "display" : "Pandemic Live Attenuated Vaccine (IIVPandemic), AstraZeneca Pharmaceuticals LP., Sprayer, 1 dose [FVP-P-376]",
      "target" : [{
        "code" : "IIVPandemic",
        "display" : "Human pandemic influenza vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mij9UAC",
      "display" : "ROTASIIL-Liquid (LARV), Serum Institute of India, Plastic tube, 1 dose [FVP-P-378]",
      "target" : [{
        "code" : "LARV",
        "display" : "Rotavirus vaccine (live attenuated) (oral)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijAUAS",
      "display" : "TYPHIBEV® (Typhoid), Biological E. Limited, Vial, 1 dose [FVP-P-379]",
      "target" : [{
        "code" : "Typhoid",
        "display" : "Typhoid conjugate vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijBUAS",
      "display" : "Poliomyelitis Vaccine (Oral) Bivalent types 1 and 3 (bOPV), Serum Institute of India, Vial, 10 doses [FVP-P-281]",
      "target" : [{
        "code" : "bOPV",
        "display" : "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijCUAS",
      "display" : "Poliomyelitis vaccine multidose suspension for injection 2.5 mL (IPV), Bilthoven Biologicals B.V., Vial, 5 doses [FVP-P-283]",
      "target" : [{
        "code" : "IPV",
        "display" : "Poliomyelitis vaccine (inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijDUAS",
      "display" : "Withdrawn: Was Prequalified [FVP-P-284]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006MijEUAS",
      "display" : "Hexaxim (DTaP-HepB-IPV-Hib), Sanofi Pasteur SA, Vial, 1 dose [FVP-P-285]",
      "target" : [{
        "code" : "DTaPHepBIPVHib",
        "display" : "Diphtheria, tetanus, (acellular) pertussis, hepatitis b, poliomyelitis (inactivated) and Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijFUAS",
      "display" : "Eupenta (DTwP-HepB-Hib), LG Chem Ltd (LGC), Vial, 1 dose [FVP-P-304]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijGUAS",
      "display" : "Eupenta (DTwP-HepB-Hib), LG Chem Ltd (LGC), Vial, 10 doses [FVP-P-305]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijHUAS",
      "display" : "ERVEBO (EBOV), Merck Sharp & Dohme LLC, Vial, 1 dose [FVP-P-383]",
      "target" : [{
        "code" : "EBOV",
        "display" : "Ebola vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijIUAS",
      "display" : "PNEUMOSIL® (PCV), Serum Institute of India, Vial, 1 dose [FVP-P-384]",
      "target" : [{
        "code" : "PCV",
        "display" : "Pneumococcal conjugate vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijJUAS",
      "display" : "PNEUMOSIL® (PCV), Serum Institute of India, Vial, 5 doses [FVP-P-385]",
      "target" : [{
        "code" : "PCV",
        "display" : "Pneumococcal conjugate vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijKUAS",
      "display" : "Euvax B (HepB), LG Chem Ltd (LGC), Vial, 1 dose [FVP-P-394]",
      "target" : [{
        "code" : "HepB",
        "display" : "Hepatitis B vaccine (recombinant)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijLUAS",
      "display" : "ROTASIIL®Thermo (LARV), Serum Institute of India, Two vial set (active + excipient), 1 dose [FVP-P-396]",
      "target" : [{
        "code" : "LARV",
        "display" : "Rotavirus vaccine (live attenuated) (oral)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijMUAS",
      "display" : "ROTASIIL®Thermo (LARV), Serum Institute of India, Two vial set (active + excipient), 2 doses [FVP-P-397]",
      "target" : [{
        "code" : "LARV",
        "display" : "Rotavirus vaccine (live attenuated) (oral)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijNUAS",
      "display" : "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BE Td (dT), Biological E. Limited, Vial, 20 doses [FVP-P-399]",
      "target" : [{
        "code" : "dT",
        "display" : "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijOUAS",
      "display" : "Oral Poliomyelitis Vaccines (Oral Drops) (tOPV), PT Bio Farma (Persero), Vial, 20 doses [FVP-P-400]",
      "target" : [{
        "code" : "tOPV",
        "display" : "Poliomyelitis vaccines (trivalent live, oral, innactivated, type 1,2, 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijPUAS",
      "display" : "VaxigripTetra (IIV4), Sanofi Pasteur SA, Vial, 10 doses [FVP-P-401]",
      "target" : [{
        "code" : "IIV4",
        "display" : "Influenza vaccine quadrivalent (split virion, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijQUAS",
      "display" : "Meningococcal A Conjugate 5 micrograms MenAfriVac 5µg (MenA), Serum Institute of India, Vial + Ampoule, 10 doses [FVP-P-286]",
      "target" : [{
        "code" : "MenA",
        "display" : "Group A meningococcal conjugate vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijRUAS",
      "display" : "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid). (DTwP-HepB-Hib), Biological E. Limited, Vial, 5 doses [FVP-P-287]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijSUAS",
      "display" : "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid). (DTwP-HepB-Hib), Biological E. Limited, Vial, 2 doses [FVP-P-288]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijTUAS",
      "display" : "Poliomyelitis Vaccine (Inactivated) (IPV), Serum Institute of India, Vial, 5 doses [FVP-P-289]",
      "target" : [{
        "code" : "IPV",
        "display" : "Poliomyelitis vaccine (inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijUUAS",
      "display" : "BIOPOLIO (tOPV), Bharat Biotech International Limited, Vial, 20 doses [FVP-P-290]",
      "target" : [{
        "code" : "tOPV",
        "display" : "Poliomyelitis vaccines (trivalent live, oral, innactivated, type 1,2, 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijVUAS",
      "display" : "BIOPOLIO (tOPV), Bharat Biotech International Limited, Vial, 10 doses [FVP-P-291]",
      "target" : [{
        "code" : "tOPV",
        "display" : "Poliomyelitis vaccines (trivalent live, oral, innactivated, type 1,2, 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijWUAS",
      "display" : "IL-YANG FLU Vaccine INJ. (IIV3), IL-YANG PHARMACEUTICAL CO.  LTD., Vial, 1 dose [FVP-P-293]",
      "target" : [{
        "code" : "IIV3",
        "display" : "Influenza vaccine trivalent (split virion, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijZUAS",
      "display" : "Bivalent Oral Poliomyelitis Vaccine Type 1&3 (bOPV 1&3) (bOPV), PT Bio Farma (Persero), Vial, 10 doses [FVP-P-297]",
      "target" : [{
        "code" : "bOPV",
        "display" : "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijaUAC",
      "display" : "ROTASIIL (LARV), Serum Institute of India, Two vial set (active + excipient), 2 doses [FVP-P-355]",
      "target" : [{
        "code" : "LARV",
        "display" : "Rotavirus vaccine (live attenuated) (oral)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijbUAC",
      "display" : "Euvichol (OCV), EuBiologics Co.  Ltd., Vial, 1 dose [FVP-P-298]",
      "target" : [{
        "code" : "OCV",
        "display" : "Inactivated oral cholera vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijcUAC",
      "display" : "Withdrawn: Was Prequalified [FVP-P-299]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006MijdUAC",
      "display" : "Gardasil 9 (HPV), Merck Sharp & Dohme LLC, Vial, 1 dose [FVP-P-306]",
      "target" : [{
        "code" : "HPV",
        "display" : "Recombinant human papillomavirus virus-like particle vaccine (types 6,11,16,18,31,33,45,52,58)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijeUAC",
      "display" : "Pentabio (DTwP-HepB-Hib), PT Bio Farma (Persero), Vial, 5 doses [FVP-P-308]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijfUAC",
      "display" : "Pentabio (DTwP-HepB-Hib), PT Bio Farma (Persero), Vial, 10 doses [FVP-P-309]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijgUAC",
      "display" : "influenza trivalent vaccine (split virion inactivated) (IIV3), Instituto Butantan, Vial, 10 doses [FVP-P-312]",
      "target" : [{
        "code" : "IIV3",
        "display" : "Influenza vaccine trivalent (split virion, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijhUAC",
      "display" : "Varivax (VAR), Merck Sharp & Dohme LLC, Two vial set (active + excipient), 1 dose [FVP-P-313]",
      "target" : [{
        "code" : "VAR",
        "display" : "Varicella",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijiUAC",
      "display" : "Rotavac (LARV), Bharat Biotech International Limited, Vial, 5 doses [FVP-P-314]",
      "target" : [{
        "code" : "LARV",
        "display" : "Rotavirus vaccine (live attenuated) (oral)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijjUAC",
      "display" : "JEEV® (3µg) (JE), Biological E. Limited, Vial, 1 dose [FVP-P-321]",
      "target" : [{
        "code" : "JE",
        "display" : "Japanese encephalitis vaccine (inactivated) for human use",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijkUAC",
      "display" : "Rabies Vaccine Inactivated (Freeze Dried)(RABIVAX-S) (Rabies), Serum Institute of India, Vial + Ampoule, 1 dose [FVP-P-322]",
      "target" : [{
        "code" : "Rabies",
        "display" : "Rabies vaccine for human use",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijlUAC",
      "display" : "ROTASIIL (LARV), Serum Institute of India, Two vial set (active + excipient), 1 dose [FVP-P-323]",
      "target" : [{
        "code" : "LARV",
        "display" : "Rotavirus vaccine (live attenuated) (oral)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijmUAC",
      "display" : "Poliomyelitis Vaccine (Inactivated) (IPV), Serum Institute of India, Vial, 2 doses [FVP-P-324]",
      "target" : [{
        "code" : "IPV",
        "display" : "Poliomyelitis vaccine (inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijnUAC",
      "display" : "Poliomyelitis Vaccine (Inactivated) (IPV), Serum Institute of India, Vial, 1 dose [FVP-P-325]",
      "target" : [{
        "code" : "IPV",
        "display" : "Poliomyelitis vaccine (inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijoUAC",
      "display" : "VaxiRab N (Rabies), Zydus Lifescience Limited, Vial, 1 dose [FVP-P-330]",
      "target" : [{
        "code" : "Rabies",
        "display" : "Rabies vaccine for human use",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijpUAC",
      "display" : "Serinflu (IIV3), Abbott Biologicals BV, Vial, 1 dose [FVP-P-332]",
      "target" : [{
        "code" : "IIV3",
        "display" : "Influenza vaccine trivalent (surface antigens, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijqUAC",
      "display" : "AGRIFLU (IIV3), Seqirus UK Limited, Vial, 10 doses [FVP-P-316]",
      "target" : [{
        "code" : "IIV3",
        "display" : "Influenza vaccine trivalent (surface antigens, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijrUAC",
      "display" : "Typbar-TCV (Typhoid), Bharat Biotech International Limited, Vial, 1 dose [FVP-P-318]",
      "target" : [{
        "code" : "Typhoid",
        "display" : "Typhoid conjugate vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijsUAC",
      "display" : "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid). (DTwP-HepB-Hib), Biological E. Limited, Vial, 10 doses [FVP-P-275]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijtUAC",
      "display" : "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  TRIPVAC (DTwP), Biological E. Limited, Vial, 1 dose [FVP-P-277]",
      "target" : [{
        "code" : "DTwP",
        "display" : "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijuUAC",
      "display" : "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  TRIPVAC (DTwP), Biological E. Limited, Vial, 10 doses [FVP-P-278]",
      "target" : [{
        "code" : "DTwP",
        "display" : "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijvUAC",
      "display" : "SKYCellflu® inj. (IIV3), SK Bioscience Co.  Ltd. (SK), Vial, 1 dose [FVP-P-339]",
      "target" : [{
        "code" : "IIV3",
        "display" : "Influenza vaccine trivalent (surface antigens, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijwUAC",
      "display" : "SKYCellflu® Multi inj. (IIV3), SK Bioscience Co.  Ltd. (SK), Vial, 10 doses [FVP-P-340]",
      "target" : [{
        "code" : "IIV3",
        "display" : "Influenza vaccine trivalent (surface antigens, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijxUAC",
      "display" : "Synflorix (PCV), GlaxoSmithKline Biologicals SA, Vial, 4 doses [FVP-P-341]",
      "target" : [{
        "code" : "PCV",
        "display" : "Pneumococcal conjugate vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijyUAC",
      "display" : "JEEV® (3µg) (JE), Biological E. Limited, Vial, 5 doses [FVP-P-360]",
      "target" : [{
        "code" : "JE",
        "display" : "Japanese encephalitis vaccine (inactivated) for human use",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MijzUAC",
      "display" : "ROTAVAC 5D® (LARV), Bharat Biotech International Limited, Vial, 1 dose [FVP-P-362]",
      "target" : [{
        "code" : "LARV",
        "display" : "Rotavirus vaccine (live attenuated) (oral)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mik0UAC",
      "display" : "SKYCellflu Quadrivalent inj. (IIV4), SK Bioscience Co.  Ltd. (SK), Vial, 1 dose [FVP-P-364]",
      "target" : [{
        "code" : "IIV4",
        "display" : "Influenza vaccine quadrivalent (surface antigens, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mik1UAC",
      "display" : "SKYCellflu Quadrivalent Multi inj. (IIV4), SK Bioscience Co.  Ltd. (SK), Vial, 10 doses [FVP-P-365]",
      "target" : [{
        "code" : "IIV4",
        "display" : "Influenza vaccine quadrivalent (surface antigens, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mik2UAC",
      "display" : "Afluria® (IIV3), Seqirus Australia Pty Ltd, Vial, 10 doses [FVP-P-367]",
      "target" : [{
        "code" : "IIV3",
        "display" : "Influenza vaccine trivalent (split virion, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mik3UAC",
      "display" : "Poliomyelitis Vaccine (Inactivated) (IPV), Serum Institute of India, Vial, 10 doses [FVP-P-372]",
      "target" : [{
        "code" : "IPV",
        "display" : "Poliomyelitis vaccine (inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mik4UAC",
      "display" : "Measles and Rubella Vaccine (Live) (Attenuated Freeze Dried) (MR), Biological E. Limited, Vial + Ampoule, 5 doses [FVP-P-374]",
      "target" : [{
        "code" : "MR",
        "display" : "Measles, rubella combined vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mik5UAC",
      "display" : "Measles and Rubella Vaccine (Live) (Attenuated Freeze Dried) (MR), Biological E. Limited, Vial + Ampoule, 10 doses [FVP-P-375]",
      "target" : [{
        "code" : "MR",
        "display" : "Measles, rubella combined vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mik6UAC",
      "display" : "TYPHIBEV® (Typhoid), Biological E. Limited, Vial, 5 doses [FVP-P-408]",
      "target" : [{
        "code" : "Typhoid",
        "display" : "Typhoid conjugate vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mik7UAC",
      "display" : "Withdrawn: Was Prequalified [FVP-P-409]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006Mik8UAC",
      "display" : "Withdrawn: Was Prequalified [FVP-P-410]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006Mik9UAC",
      "display" : "ROTAVAC 5D® (LARV), Bharat Biotech International Limited, Vial, 5 doses [FVP-P-412]",
      "target" : [{
        "code" : "LARV",
        "display" : "Rotavirus vaccine (live attenuated) (oral)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikAUAS",
      "display" : "Eupolio Inj. (sIPV), LG Chem Ltd (LGC), Vial, 1 dose [FVP-P-415]",
      "target" : [{
        "code" : "sIPV",
        "display" : "Poliomyelitis vaccine (inactivated-Sabin)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikBUAS",
      "display" : "ROTASIIL-Liquid (LARV), Serum Institute of India, Vial, 2 doses [FVP-P-419]",
      "target" : [{
        "code" : "LARV",
        "display" : "Rotavirus vaccine (live attenuated) (oral)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikCUAS",
      "display" : "Mosquirix (Malaria), GlaxoSmithKline Biologicals SA, Two vial set (active + active), 2 doses [FVP-P-424]",
      "target" : [{
        "code" : "Malaria",
        "display" : "Recombinant malaria vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikDUAS",
      "display" : "TT vaccine (TT), PT Bio Farma (Persero), Vial, 10 doses [FVP-P-14]",
      "target" : [{
        "code" : "TT",
        "display" : "Tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikEUAS",
      "display" : "ShanIPV™ (IPV), Sanofi Healthcare India Private Limited, Vial, 10 doses [FVP-P-432]",
      "target" : [{
        "code" : "IPV",
        "display" : "Poliomyelitis vaccine (inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikFUAS",
      "display" : "GCFLU Quadrivalent Multi inj. (IIV4), GC Biopharma Corporation, Vial, 10 doses [FVP-P-331]",
      "target" : [{
        "code" : "IIV4",
        "display" : "Influenza vaccine quadrivalent (split virion, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikGUAS",
      "display" : "ShanIPV™ (IPV), Sanofi Healthcare India Private Limited, Vial, 5 doses [FVP-P-333]",
      "target" : [{
        "code" : "IPV",
        "display" : "Poliomyelitis vaccine (inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikHUAS",
      "display" : "Bivalent OPV Type 1 and 3 Poliomyelitis Vaccine Live (Oral) (bOPV), Panacea Biotec Ltd., Vial, 20 doses [FVP-P-335]",
      "target" : [{
        "code" : "bOPV",
        "display" : "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikIUAS",
      "display" : "DTwP, Sanofi Healthcare India Private Limited [FVP-P-app8]",
      "target" : [{
        "code" : "DTwP",
        "display" : "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikJUAS",
      "display" : "Heberbiovac HB (HepB), Centro de Ingenieria Genetica y Biotecnologia (CIGB), Vial, 1 dose [FVP-P-23]",
      "target" : [{
        "code" : "HepB",
        "display" : "Hepatitis B vaccine (recombinant)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikKUAS",
      "display" : "Heberbiovac HB (HepB), Centro de Ingenieria Genetica y Biotecnologia (CIGB), Vial, 10 doses [FVP-P-24]",
      "target" : [{
        "code" : "HepB",
        "display" : "Hepatitis B vaccine (recombinant)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikLUAS",
      "display" : "MenQuadfi (MenACYW-135), Sanofi Pasteur Inc., Vial, 1 dose [FVP-P-417]",
      "target" : [{
        "code" : "MenACYW135",
        "display" : "Meningococcal conjugate vaccine tetravalent ( type A,C, Y, W-135)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikMUAS",
      "display" : "Bivalent OPV Type 1 and 3 Poliomyelitis Vaccine Live (Oral) (bOPV), Panacea Biotec Ltd., Vial, 10 doses [FVP-P-422]",
      "target" : [{
        "code" : "bOPV",
        "display" : "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikNUAS",
      "display" : "TT vaccine (TT), PT Bio Farma (Persero), Vial, 20 doses [FVP-P-15]",
      "target" : [{
        "code" : "TT",
        "display" : "Tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikOUAS",
      "display" : "TT vaccine (TT), PT Bio Farma (Persero), Uniject, 1 dose [FVP-P-16]",
      "target" : [{
        "code" : "TT",
        "display" : "Tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikPUAS",
      "display" : "Measles vaccine (M), PT Bio Farma (Persero), Vial + Ampoule, 10 doses [FVP-P-17]",
      "target" : [{
        "code" : "M",
        "display" : "Measles vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikSUAS",
      "display" : "Adsorbed DT Vaccine (DT), PT Bio Farma (Persero), Vial, 10 doses [FVP-P-7]",
      "target" : [{
        "code" : "DT",
        "display" : "Diphtheria and tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikTUAS",
      "display" : "DTP Vaccine (DTwP), PT Bio Farma (Persero), Vial, 10 doses [FVP-P-8]",
      "target" : [{
        "code" : "DTwP",
        "display" : "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikUUAS",
      "display" : "Withdrawn: Was Prequalified [FVP-P-21]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006MikVUAS",
      "display" : "Yellow Fever (YF), Bio-Manguinhos/Fiocruz, Two vial set (active + excipient), 5 doses [FVP-P-19]",
      "target" : [{
        "code" : "YF",
        "display" : "Yellow fever vaccine (live attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikWUAS",
      "display" : "Yellow Fever (YF), Bio-Manguinhos/Fiocruz, Two vial set (active + excipient), 10 doses [FVP-P-20]",
      "target" : [{
        "code" : "YF",
        "display" : "Yellow fever vaccine (live attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikXUAS",
      "display" : "Fluzone Quadrivalent (IIV4), Sanofi Pasteur Inc., Vial, 1 dose [FVP-P-295]",
      "target" : [{
        "code" : "IIV4",
        "display" : "Influenza vaccine quadrivalent (surface antigens, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikYUAS",
      "display" : "Fluzone Quadrivalent (IIV4), Sanofi Pasteur Inc., Vial, 10 doses [FVP-P-296]",
      "target" : [{
        "code" : "IIV4",
        "display" : "Influenza vaccine quadrivalent (surface antigens, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikZUAS",
      "display" : "Nimenrix (MenACYW-135), Pfizer Europe MA EEIG (Pfizer), Vial + Ampoule, 1 dose [FVP-P-301]",
      "target" : [{
        "code" : "MenACYW135",
        "display" : "Meningococcal conjugate vaccine tetravalent ( type A,C, Y, W-135)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikaUAC",
      "display" : "GCFLU Quadrivalent inj. (IIV4), GC Biopharma Corporation, Vial, 1 dose [FVP-P-307]",
      "target" : [{
        "code" : "IIV4",
        "display" : "Influenza vaccine quadrivalent (split virion, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikbUAC",
      "display" : "Adacel (DTaP), Sanofi Pasteur Limited, Vial, 1 dose [FVP-P-315]",
      "target" : [{
        "code" : "DTaP",
        "display" : "Diphtheria, tetanus and (acellular) pertussis vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikcUAC",
      "display" : "Prevenar 13 Multidose Vial (PCV), Pfizer Europe MA EEIG (Pfizer), Vial, 4 doses [FVP-P-317]",
      "target" : [{
        "code" : "PCV",
        "display" : "Pneumococcal conjugate vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikdUAC",
      "display" : "Cervarix (HPV), GlaxoSmithKline Biologicals SA, Vial, 1 dose [FVP-P-179]",
      "target" : [{
        "code" : "HPV",
        "display" : "Recombinant human papillomavirus virus-like particle vaccine (types 16,18)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikeUAC",
      "display" : "Cervarix (HPV), GlaxoSmithKline Biologicals SA, Vial, 2 doses [FVP-P-180]",
      "target" : [{
        "code" : "HPV",
        "display" : "Recombinant human papillomavirus virus-like particle vaccine (types 16,18)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikfUAC",
      "display" : "Bivalent type 1&3 Oral Poliomyelitis vaccine IP (bOPV1&3) (bOPV), Haffkine Bio Pharmaceutical Corporation Ltd, Vial, 20 doses [FVP-P-200]",
      "target" : [{
        "code" : "bOPV",
        "display" : "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikgUAC",
      "display" : "Diphtheria Tetanus Pertussis Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine (DTwP-HepB+Hib), Serum Institute of India, Vial + Ampoule, 2 doses [FVP-P-203]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and (+) Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikhUAC",
      "display" : "Diphtheria Tetanus Pertussis Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine (DTwP-HepB+Hib), Serum Institute of India, Vial + Ampoule, 10 doses [FVP-P-204]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and (+) Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikiUAC",
      "display" : "Rubella Vaccine Live Attenuated (R), Serum Institute of India, Vial, 10 doses [FVP-P-152]",
      "target" : [{
        "code" : "R",
        "display" : "Rubella vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikjUAC",
      "display" : "Measles Vaccine Live Attenuated (M), Serum Institute of India, Vial, 2 doses [FVP-P-146]",
      "target" : [{
        "code" : "M",
        "display" : "Measles vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikkUAC",
      "display" : "Measles Vaccine Live Attenuated (M), Serum Institute of India, Vial, 5 doses [FVP-P-147]",
      "target" : [{
        "code" : "M",
        "display" : "Measles vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiklUAC",
      "display" : "Measles Vaccine Live Attenuated (M), Serum Institute of India, Vial, 10 doses [FVP-P-148]",
      "target" : [{
        "code" : "M",
        "display" : "Measles vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikmUAC",
      "display" : "Polio Sabin Mono T1 (mOPV1), GlaxoSmithKline Biologicals SA, Vial, 10 doses [FVP-P-181]",
      "target" : [{
        "code" : "mOPV1",
        "display" : "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 1)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiknUAC",
      "display" : "Rubella Vaccine Live Attenuated (R), Serum Institute of India, Vial, 1 dose [FVP-P-149]",
      "target" : [{
        "code" : "R",
        "display" : "Rubella vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikoUAC",
      "display" : "Rubella Vaccine Live Attenuated (R), Serum Institute of India, Vial, 2 doses [FVP-P-150]",
      "target" : [{
        "code" : "R",
        "display" : "Rubella vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikpUAC",
      "display" : "Rubella Vaccine Live Attenuated (R), Serum Institute of India, Vial, 5 doses [FVP-P-151]",
      "target" : [{
        "code" : "R",
        "display" : "Rubella vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikqUAC",
      "display" : "Polio Sabin Mono T1 (mOPV1), GlaxoSmithKline Biologicals SA, Vial, 20 doses [FVP-P-182]",
      "target" : [{
        "code" : "mOPV1",
        "display" : "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 1)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikrUAC",
      "display" : "Polio Sabin One and Three (bOPV), GlaxoSmithKline Biologicals SA, Vial, 10 doses [FVP-P-183]",
      "target" : [{
        "code" : "bOPV",
        "display" : "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiksUAC",
      "display" : "Polio Sabin One and Three (bOPV), GlaxoSmithKline Biologicals SA, Vial, 20 doses [FVP-P-184]",
      "target" : [{
        "code" : "bOPV",
        "display" : "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiktUAC",
      "display" : "Haemophilus influenzae type b Conjugate Vaccine (Hib), Serum Institute of India, Vial, 1 dose [FVP-P-185]",
      "target" : [{
        "code" : "Hib",
        "display" : "Haemophilus influenzae type b conjugate vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikuUAC",
      "display" : "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BEtt. (TT), Biological E. Limited, Vial, 20 doses [FVP-P-190]",
      "target" : [{
        "code" : "TT",
        "display" : "Tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikvUAC",
      "display" : "Synflorix (PCV), GlaxoSmithKline Biologicals SA, Vial, 1 dose [FVP-P-191]",
      "target" : [{
        "code" : "PCV",
        "display" : "Pneumococcal conjugate vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikwUAC",
      "display" : "Quimi-Hib (Hib), Centro de Ingenieria Genetica y Biotecnologia (CIGB), Vial, 1 dose [FVP-P-197]",
      "target" : [{
        "code" : "Hib",
        "display" : "Haemophilus influenzae type b conjugate vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikxUAC",
      "display" : "Synflorix (PCV), GlaxoSmithKline Biologicals SA, Vial, 2 doses [FVP-P-198]",
      "target" : [{
        "code" : "PCV",
        "display" : "Pneumococcal conjugate vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MikyUAC",
      "display" : "Withdrawn: Was Accepted [FVP-P-162]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006MikzUAC",
      "display" : "Withdrawn: Was Prequalified [FVP-P-163]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006Mil0UAC",
      "display" : "Rotateq (LARV), Merck Sharp & Dohme LLC, Plastic tube, 1 dose [FVP-P-166]",
      "target" : [{
        "code" : "LARV",
        "display" : "Rotavirus vaccine (live attenuated) (oral)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mil1UAC",
      "display" : "rHA M-M-R II (MMR), Merck Sharp & Dohme LLC, Vial, 1 dose [FVP-P-167]",
      "target" : [{
        "code" : "MMR",
        "display" : "Measles, mumps, rubella combined vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mil2UAC",
      "display" : "Rotarix (LARV), GlaxoSmithKline Biologicals SA, Applicator, 1 dose [FVP-P-173]",
      "target" : [{
        "code" : "LARV",
        "display" : "Rotavirus vaccine (live attenuated) (oral)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mil3UAC",
      "display" : "Gardasil (HPV), Merck Sharp & Dohme LLC, Vial, 1 dose [FVP-P-178]",
      "target" : [{
        "code" : "HPV",
        "display" : "Recombinant human papillomavirus virus-like particle vaccine (types 6,11,16,18)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mil4UAC",
      "display" : "Diphtheria Tetanus Pertussis Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine (DTwP-HepB+Hib), Serum Institute of India, Vial + Ampoule, 1 dose [FVP-P-194]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and (+) Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mil5UAC",
      "display" : "Bivalent Oral Poliomyelitis Vaccine Type 1&3 (bOPV 1&3) (bOPV), PT Bio Farma (Persero), Vial, 20 doses [FVP-P-195]",
      "target" : [{
        "code" : "bOPV",
        "display" : "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mil6UAC",
      "display" : "Meningococcal A Conjugate MenAfriVac (MenA), Serum Institute of India, Vial + Ampoule, 10 doses [FVP-P-196]",
      "target" : [{
        "code" : "MenA",
        "display" : "Group A meningococcal conjugate vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mil7UAC",
      "display" : "Withdrawn: Was Prequalified [FVP-P-257]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006Mil8UAC",
      "display" : "NASOVAC Influenza Vaccine Live Attenuated (Human) Freeze-Dried (IIVPandemic), Serum Institute of India, Vial + Ampoule, 5 doses [FVP-P-258]",
      "target" : [{
        "code" : "IIVPandemic",
        "display" : "Human pandemic influenza vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mil9UAC",
      "display" : "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BEtt. (TT), Biological E. Limited, Vial, 1 dose [FVP-P-259]",
      "target" : [{
        "code" : "TT",
        "display" : "Tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilAUAS",
      "display" : "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BEtt. (TT), Biological E. Limited, Vial, 10 doses [FVP-P-260]",
      "target" : [{
        "code" : "TT",
        "display" : "Tetanus vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilBUAS",
      "display" : "JEEV® (6µg) (JE), Biological E. Limited, Vial, 1 dose [FVP-P-263]",
      "target" : [{
        "code" : "JE",
        "display" : "Japanese encephalitis vaccine (inactivated) for human use",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilCUAS",
      "display" : "Havrix 1440 Adult (HepA), GlaxoSmithKline Biologicals SA, Vial, 1 dose [FVP-P-264]",
      "target" : [{
        "code" : "HepA",
        "display" : "Hepatitis A vaccine (inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilDUAS",
      "display" : "Havrix 720 Junior (HepA), GlaxoSmithKline Biologicals SA, Vial, 1 dose [FVP-P-265]",
      "target" : [{
        "code" : "HepA",
        "display" : "Hepatitis A vaccine (inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilEUAS",
      "display" : "Boostrix (DTaP), GlaxoSmithKline Biologicals SA, Vial, 1 dose [FVP-P-266]",
      "target" : [{
        "code" : "DTaP",
        "display" : "Diphtheria, tetanus and (acellular) pertussis vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilFUAS",
      "display" : "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid). (DTwP-HepB-Hib), Biological E. Limited, Vial, 1 dose [FVP-P-274]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilGUAS",
      "display" : "Poliomyelitis Vaccines (Vero Cell), Inactivated, Sabin Strains (sIPV), Beijing Institute of Biological Products Co., Ltd., Vial, 1 dose [FVP-P-369]",
      "target" : [{
        "code" : "sIPV",
        "display" : "Poliomyelitis vaccine (inactivated-Sabin)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilHUAS",
      "display" : "Picovax (IPV), AJ Vaccines A/S, Vial, 5 doses [FVP-P-371]",
      "target" : [{
        "code" : "IPV",
        "display" : "Poliomyelitis vaccine (inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilLUAS",
      "display" : "Poliomyelitis Vaccine (Vero Cell) Inactivated Sabin Strains (sIPV), Sinovac Biotech Co. Ltd, Vial, 1 dose [FVP-P-387]",
      "target" : [{
        "code" : "sIPV",
        "display" : "Poliomyelitis vaccine (inactivated-Sabin)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilMUAS",
      "display" : "Cecolin® (HPV), Xiamen Innovax Biotech Co. Ltd., Vial, 1 dose [FVP-P-389]",
      "target" : [{
        "code" : "HPV",
        "display" : "Recombinant human papillomavirus virus-like particle vaccine (types 16,18)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilNUAS",
      "display" : "Green Flu-S (IIVPandemic), GC Biopharma Corporation, Vial, 1 dose [FVP-P-208]",
      "target" : [{
        "code" : "IIVPandemic",
        "display" : "Human pandemic influenza vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilOUAS",
      "display" : "Influenza A (H1N1) 2009 monovalent vaccine (IIVPandemic), Sanofi Pasteur Inc., Vial, 1 dose [FVP-P-214]",
      "target" : [{
        "code" : "IIVPandemic",
        "display" : "Human pandemic influenza vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilPUAS",
      "display" : "Influenza A (H1N1) 2009 monovalent vaccine (IIVPandemic), Sanofi Pasteur Inc., Vial, 10 doses [FVP-P-215]",
      "target" : [{
        "code" : "IIVPandemic",
        "display" : "Human pandemic influenza vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilQUAS",
      "display" : "Poliomyelitis vaccine (IPV), Bilthoven Biologicals B.V., Vial, 1 dose [FVP-P-230]",
      "target" : [{
        "code" : "IPV",
        "display" : "Poliomyelitis vaccine (inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilRUAS",
      "display" : "GC FLU  inj (IIV3), GC Biopharma Corporation, Vial, 1 dose [FVP-P-233]",
      "target" : [{
        "code" : "IIV3",
        "display" : "Influenza vaccine trivalent (split virion, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilSUAS",
      "display" : "GC FLU Multi inj. (IIV3), GC Biopharma Corporation, Vial, 10 doses [FVP-P-256]",
      "target" : [{
        "code" : "IIV3",
        "display" : "Influenza vaccine trivalent (split virion, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilTUAS",
      "display" : "Menveo (MenACYW-135), GlaxoSmithKline Vaccines S.r.l., Two vial set (active + active), 1 dose [FVP-P-267]",
      "target" : [{
        "code" : "MenACYW135",
        "display" : "Meningococcal conjugate vaccine tetravalent ( type A,C, Y, W-135)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilUUAS",
      "display" : "Menactra (MenACYW-135), Sanofi Pasteur Inc., Vial, 1 dose [FVP-P-269]",
      "target" : [{
        "code" : "MenACYW135",
        "display" : "Meningococcal conjugate vaccine tetravalent ( type A,C, Y, W-135)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilVUAS",
      "display" : "Easyfive-TT (DTwP-HepB-Hib), Panacea Biotec Ltd., Vial, 1 dose [FVP-P-270]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilWUAS",
      "display" : "IMOJEV MD (JE), GPO-MBP Co.  Ltd. (GPO-MBP), Two vial set (active + excipient), 4 doses [FVP-P-276]",
      "target" : [{
        "code" : "JE",
        "display" : "Japanese encephalitis vaccine (live, attenuated) for human use",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilXUAS",
      "display" : "Withdrawn: Was Prequalified [FVP-P-249]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006MilYUAS",
      "display" : "Easyfive-TT (DTwP-HepB-Hib), Panacea Biotec Ltd., Vial, 10 doses [FVP-P-87]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilZUAS",
      "display" : "Withdrawn: Was Prequalified [FVP-P-92]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006MilaUAC",
      "display" : "Engerix (HepB), GlaxoSmithKline Biologicals SA, Vial, 1 dose [FVP-P-38]",
      "target" : [{
        "code" : "HepB",
        "display" : "Hepatitis B vaccine (recombinant)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilbUAC",
      "display" : "Engerix (HepB), GlaxoSmithKline Biologicals SA, Vial, 10 doses [FVP-P-39]",
      "target" : [{
        "code" : "HepB",
        "display" : "Hepatitis B vaccine (recombinant)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilcUAC",
      "display" : "Engerix (HepB), GlaxoSmithKline Biologicals SA, Vial, 20 doses [FVP-P-40]",
      "target" : [{
        "code" : "HepB",
        "display" : "Hepatitis B vaccine (recombinant)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MildUAC",
      "display" : "Sinsavac (YF), Federal State Budgetary Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products»  Russian Academy of Sciences, Vial, 10 doses [FVP-P-436]",
      "target" : [{
        "code" : "YF",
        "display" : "Yellow fever vaccine (live attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MileUAC",
      "display" : "Monovalent type 1 Oral Poliomyelitis vaccine IP (mOPV1) (mOPV1), Haffkine Bio Pharmaceutical Corporation Ltd, Vial, 20 doses [FVP-P-186]",
      "target" : [{
        "code" : "mOPV1",
        "display" : "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 1)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilfUAC",
      "display" : "Monovalent Oral Poliomyelitis Vaccine Type 1 (mOPV1) (mOPV1), PT Bio Farma (Persero), Vial, 20 doses [FVP-P-189]",
      "target" : [{
        "code" : "mOPV1",
        "display" : "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 1)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilgUAC",
      "display" : "BCG Vaccine AJV (BCG), AJ Vaccines A/S, Two vial set (active + excipient), 10 doses [FVP-P-164]",
      "target" : [{
        "code" : "BCG",
        "display" : "BCG",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilhUAC",
      "display" : "none (YF), Federal State Budgetary Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products»  Russian Academy of Sciences, Ampoule, 2 doses [FVP-P-175]",
      "target" : [{
        "code" : "YF",
        "display" : "Yellow fever vaccine (live attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiliUAC",
      "display" : "none (YF), Federal State Budgetary Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products»  Russian Academy of Sciences, Ampoule, 5 doses [FVP-P-176]",
      "target" : [{
        "code" : "YF",
        "display" : "Yellow fever vaccine (live attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiljUAC",
      "display" : "none (YF), Federal State Budgetary Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products»  Russian Academy of Sciences, Ampoule, 10 doses [FVP-P-177]",
      "target" : [{
        "code" : "YF",
        "display" : "Yellow fever vaccine (live attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilkUAC",
      "display" : "Polio Sabin Mono Two (oral) (mOPV2), GlaxoSmithKline Biologicals SA, Vial, 20 doses [FVP-P-234]",
      "target" : [{
        "code" : "mOPV2",
        "display" : "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 2)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MillUAC",
      "display" : "Polio Sabin Mono Two (oral) (mOPV2), GlaxoSmithKline Biologicals SA, Vial, 10 doses [FVP-P-235]",
      "target" : [{
        "code" : "mOPV2",
        "display" : "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 2)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilmUAC",
      "display" : "Withdrawn: Was Prequalified [FVP-P-237]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006MilnUAC",
      "display" : "Vaxigrip (IIV3), Sanofi Pasteur SA, Vial, 10 doses [FVP-P-238]",
      "target" : [{
        "code" : "IIV3",
        "display" : "Influenza vaccine trivalent (split virion, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiloUAC",
      "display" : "Measles vaccine (M), PT Bio Farma (Persero), Vial, 20 doses [FVP-P-252]",
      "target" : [{
        "code" : "M",
        "display" : "Measles vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilpUAC",
      "display" : "Poliomyelitis Vaccine (Oral) Bivalent types 1 and 3 (bOPV), Serum Institute of India, Vial, 20 doses [FVP-P-253]",
      "target" : [{
        "code" : "bOPV",
        "display" : "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilqUAC",
      "display" : "Diphtheria Tetanus Pertussis Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed (DTwP-HepB-Hib), Serum Institute of India, Vial, 1 dose [FVP-P-223]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilrUAC",
      "display" : "Diphtheria Tetanus Pertussis Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed (DTwP-HepB-Hib), Serum Institute of India, Vial, 2 doses [FVP-P-224]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilsUAC",
      "display" : "Diphtheria Tetanus Pertussis Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed (DTwP-HepB-Hib), Serum Institute of India, Vial, 10 doses [FVP-P-225]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiltUAC",
      "display" : "Polio Sabin Mono Three (oral) (mOPV3), GlaxoSmithKline Biologicals SA, Vial, 10 doses [FVP-P-227]",
      "target" : [{
        "code" : "mOPV3",
        "display" : "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MiluUAC",
      "display" : "Polio Sabin Mono Three (oral) (mOPV3), GlaxoSmithKline Biologicals SA, Vial, 20 doses [FVP-P-228]",
      "target" : [{
        "code" : "mOPV3",
        "display" : "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilvUAC",
      "display" : "BIOPOLIO B1/3 (bOPV), Bharat Biotech International Limited, Vial, 20 doses [FVP-P-244]",
      "target" : [{
        "code" : "bOPV",
        "display" : "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilwUAC",
      "display" : "none (dT), PT Bio Farma (Persero), Vial, 10 doses [FVP-P-245]",
      "target" : [{
        "code" : "dT",
        "display" : "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilxUAC",
      "display" : "Withdrawn: Was Prequalified [FVP-P-246]",
      "noMap" : true
    },
    {
      "code" : "a3K3X000006MilyUAC",
      "display" : "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Reconstituted). (DTwP-HepB+Hib), Biological E. Limited, Two vial set (active + active), 1 dose [FVP-P-247]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and (+) Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006MilzUAC",
      "display" : "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Reconstituted). (DTwP-HepB+Hib), Biological E. Limited, Two vial set (active + active), 10 doses [FVP-P-248]",
      "target" : [{
        "code" : "DTwPHepBHib",
        "display" : "Diphtheria, tetanus, pertussis, hepatitis B and (+) Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mim0UAC",
      "display" : "Priorix (MMR), GlaxoSmithKline Biologicals SA, Vial, 2 doses [FVP-P-251]",
      "target" : [{
        "code" : "MMR",
        "display" : "Measles, mumps, rubella combined vaccine (live, attenuated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mim1UAC",
      "display" : "Influenza A (H1N1) 2009 monovalent vaccine (IIVPandemic), MedImmune, Sprayer, 1 dose [FVP-P-209]",
      "target" : [{
        "code" : "IIVPandemic",
        "display" : "Human pandemic influenza vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mim2UAC",
      "display" : "Celtura (IIVPandemic), Seqirus GmbH, Vial, 17 doses [FVP-P-210]",
      "target" : [{
        "code" : "IIVPandemic",
        "display" : "Human pandemic influenza vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mim3UAC",
      "display" : "Panenza (IIVPandemic), Sanofi Pasteur SA, Vial, 10 doses [FVP-P-213]",
      "target" : [{
        "code" : "IIVPandemic",
        "display" : "Human pandemic influenza vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mim4UAC",
      "display" : "Diphtheria Tetanus Pertussis and Haemophilus influenzae type b Conjugate Vaccine (DTwP+Hib), Serum Institute of India, Vial + Ampoule, 1 dose [FVP-P-216]",
      "target" : [{
        "code" : "DTwPHib",
        "display" : "Diphtheria, tetanus, pertussis and (+) Haemophilus influenzae type b conjugate vaccine (adsorbed)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mim5UAC",
      "display" : "Rotarix (LARV), GlaxoSmithKline Biologicals SA, Plastic tube, 5 doses [FVP-P-363]",
      "target" : [{
        "code" : "LARV",
        "display" : "Rotavirus vaccine (live attenuated) (oral)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3K3X000006Mim6UAC",
      "display" : "HEALIVE (HepA), Sinovac Biotech Co. Ltd, Vial, 1 dose [FVP-P-344]",
      "target" : [{
        "code" : "HepA",
        "display" : "Hepatitis A vaccine (inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3KNN0000001VJV2A2",
      "display" : "Euvichol-S (OCV), EuBiologics Co.  Ltd., Plastic tube, 1 dose [FVP-P-456]",
      "target" : [{
        "code" : "OCV",
        "display" : "Inactivated oral cholera vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3KNN0000001VJW2A2",
      "display" : "Influeza Vaccine (Split Virion), Inactivated (IIV3), Vial, 1 dose [FVP-P-455]",
      "target" : [{
        "code" : "IIV3",
        "display" : "Influenza vaccine trivalent (split virion, inactivated)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3KNN0000001VJX2A2",
      "display" : "BIRMEVAX (C-19), HIPRA HUMAN HEALTH, S.L.U, Vial, 1 dose [FVP-P-453]",
      "target" : [{
        "code" : "C19",
        "display" : "Covid-19, protein subunit",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3KNN0000001VJY2A2",
      "display" : "ROTASIIL-Liquid (LARV), Serum Institute of India, Vial, 1 dose [FVP-P-452]",
      "target" : [{
        "code" : "LARV",
        "display" : "Rotavirus vaccine (live attenuated) (oral)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3KNN0000001VJZ2A2",
      "display" : "MenFive (MenACYWX), Serum Institute of India, Vial, 5 doses [FVP-P-451]",
      "target" : [{
        "code" : "MenACYWX",
        "display" : "Meningococcal polysacharide conjugate vaccine (type A,C,Y,W,X)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3KNN0000001VJa2AM",
      "display" : "PNEUMOSIL® (PCV), Serum Institute of India, Vial, 10 doses [FVP-P-463]",
      "target" : [{
        "code" : "PCV",
        "display" : "Pneumococcal conjugate vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3KNN0000001VJb2AM",
      "display" : "Under Screening [FVP-P-460]",
      "noMap" : true
    },
    {
      "code" : "a3KNN0000001VJc2AM",
      "display" : "Decision Phase [FVP-P-464]",
      "noMap" : true
    },
    {
      "code" : "a3KNN0000001VJd2AM",
      "display" : "Rejected: Screening [FVP-P-445]",
      "noMap" : true
    },
    {
      "code" : "a3KNN0000001VJe2AM",
      "display" : "BARYCELA inj. (VAR), GC Biopharma Corporation, Vial, 1 dose [FVP-P-406]",
      "target" : [{
        "code" : "VAR",
        "display" : "Varicella",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3KNN0000001VJf2AM",
      "display" : "Withdrawn: Was Prequalified [FVP-P-423]",
      "noMap" : true
    },
    {
      "code" : "a3KNN0000001VL72AM",
      "display" : "Novel Oral Poliomyelitis Vaccine Type 2 (nOPV2) (nOPV2), PT Bio Farma (Persero), Vial, 50 doses [FVP-P-404]",
      "target" : [{
        "code" : "nOPV2",
        "display" : "Poliomyelitis vaccines (novel, oral, live, attenuated,  type 2)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3KNN0000001VL82AM",
      "display" : "MenFive (MenACYWX), Serum Institute of India, Vial, 1 dose [FVP-P-427]",
      "target" : [{
        "code" : "MenACYWX",
        "display" : "Meningococcal polysacharide conjugate vaccine (type A,C,Y,W,X)",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3KNN0000001VL92AM",
      "display" : "None (VAR), Sinovac Vaccine Technology Co.  Ltd. (Sinovac (Dalian), Vial, 1 dose [FVP-P-403]",
      "target" : [{
        "code" : "VAR",
        "display" : "Varicella",
        "relationship" : "source-is-narrower-than-target"
      }]
    },
    {
      "code" : "a3KNN0000001VLA2A2",
      "display" : "Under Assessment [FVP-P-426]",
      "noMap" : true
    },
    {
      "code" : "a3KVj000000Wv1ZMAS",
      "display" : "Shanchol (OCV), Shantha Biologics Private Limited, Vial, 1 dose [FVP-P-491]",
      "target" : [{
        "code" : "OCV",
        "display" : "Inactivated oral cholera vaccine",
        "relationship" : "source-is-narrower-than-target"
      }]
    }]
  }]
}

```
