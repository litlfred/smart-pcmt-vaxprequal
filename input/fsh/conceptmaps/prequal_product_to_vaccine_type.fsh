Instance: PreQualProductToVaccineType
InstanceOf: ConceptMap
Usage: #definition
* url = "http://smart.who.int/pcmt-vaxprequal/ConceptMap/PreQualProductToVaccineType"
* name = "PreQualProductToVaccineType"
* title = "WHO PreQual Vaccine Product to Vaccine Type"
* status = #active
* experimental = true
* description = "Maps each WHO PreQual finished vaccine product identifier to the vaccine type it belongs to. Products whose detail has been de-published carry no vaccine type and are marked as having no map."
* sourceScopeCanonical = "http://smart.who.int/pcmt-vaxprequal/ValueSet/PreQualProductIds"
* targetScopeCanonical = "http://smart.who.int/pcmt-vaxprequal/ValueSet/PreQualVaccineType"
* group[0].source = "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualProductIds"
* group[0].target = "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType"

* group[0].element[0].code = #a3K3X000005atRtUAI
* group[0].element[0].display = "CYVAC (Malaria), Serum Institute of India, Vial, 2 doses [FVP-P-447]"
* group[0].element[0].target[0].code = #Malaria
* group[0].element[0].target[0].display = "Recombinant malaria vaccine"
* group[0].element[0].target[0].relationship = #source-is-narrower-than-target

* group[0].element[1].code = #a3K3X000005atSwUAI
* group[0].element[1].display = "CYVAC (Malaria), Serum Institute of India, Vial, 1 dose [FVP-P-446]"
* group[0].element[1].target[0].code = #Malaria
* group[0].element[1].target[0].display = "Recombinant malaria vaccine"
* group[0].element[1].target[0].relationship = #source-is-narrower-than-target

* group[0].element[2].code = #a3K3X000006MihsUAC
* group[0].element[2].display = "Rotarix (LARV), GlaxoSmithKline Biologicals SA, Plastic tube, 1 dose [FVP-P-62]"
* group[0].element[2].target[0].code = #LARV
* group[0].element[2].target[0].display = "Rotavirus vaccine (live attenuated) (oral)"
* group[0].element[2].target[0].relationship = #source-is-narrower-than-target

* group[0].element[3].code = #a3K3X000006MihtUAC
* group[0].element[3].display = "Polioviral vaccine (tOPV), Haffkine Bio Pharmaceutical Corporation Ltd, Vial, 20 doses [FVP-P-63]"
* group[0].element[3].target[0].code = #tOPV
* group[0].element[3].target[0].display = "Poliomyelitis vaccines (trivalent live, oral, innactivated, type 1,2, 3)"
* group[0].element[3].target[0].relationship = #source-is-narrower-than-target

* group[0].element[4].code = #a3K3X000006MihuUAC
* group[0].element[4].display = "Stabilized Yellow Fever Vaccine (YF), Institut Pasteur de Dakar (IPD), Ampoule, 5 doses [FVP-P-64]"
* group[0].element[4].target[0].code = #YF
* group[0].element[4].target[0].display = "Yellow fever vaccine (live attenuated)"
* group[0].element[4].target[0].relationship = #source-is-narrower-than-target

* group[0].element[5].code = #a3K3X000006MihvUAC
* group[0].element[5].display = "Stabilized Yellow Fever Vaccine (YF), Institut Pasteur de Dakar (IPD), Ampoule, 20 doses [FVP-P-65]"
* group[0].element[5].target[0].code = #YF
* group[0].element[5].target[0].display = "Yellow fever vaccine (live attenuated)"
* group[0].element[5].target[0].relationship = #source-is-narrower-than-target

* group[0].element[6].code = #a3K3X000006MihwUAC
* group[0].element[6].display = "Stabilized Yellow Fever Vaccine (YF), Institut Pasteur de Dakar (IPD), Ampoule, 10 doses [FVP-P-66]"
* group[0].element[6].target[0].code = #YF
* group[0].element[6].target[0].display = "Yellow fever vaccine (live attenuated)"
* group[0].element[6].target[0].relationship = #source-is-narrower-than-target

* group[0].element[7].code = #a3K3X000006MihxUAC
* group[0].element[7].display = "BCG Freeze Dried Glutamate vaccine (BCG), Japan BCG Laboratory (JBL), Ampoule, 20 doses [FVP-P-67]"
* group[0].element[7].target[0].code = #BCG
* group[0].element[7].target[0].display = "BCG"
* group[0].element[7].target[0].relationship = #source-is-narrower-than-target

* group[0].element[8].code = #a3K3X000006MihyUAC
* group[0].element[8].display = "Euvax B (HepB), LG Chem Ltd (LGC), Vial, 1 dose [FVP-P-68]"
* group[0].element[8].target[0].code = #HepB
* group[0].element[8].target[0].display = "Hepatitis B vaccine (recombinant)"
* group[0].element[8].target[0].relationship = #source-is-narrower-than-target

* group[0].element[9].code = #a3K3X000006MihzUAC
* group[0].element[9].display = "Withdrawn: Was Prequalified [FVP-P-27]"
* group[0].element[9].noMap = true

* group[0].element[10].code = #a3K3X000006Mii0UAC
* group[0].element[10].display = "Priorix (MMR), GlaxoSmithKline Biologicals SA, Vial, 1 dose [FVP-P-61]"
* group[0].element[10].target[0].code = #MMR
* group[0].element[10].target[0].display = "Measles, mumps, rubella combined vaccine (live, attenuated)"
* group[0].element[10].target[0].relationship = #source-is-narrower-than-target

* group[0].element[11].code = #a3K3X000006Mii1UAC
* group[0].element[11].display = "Tetatox (TT), Bul Bio-National Center of Infectious and Parasitic Diseases Ltd., Vial, 10 doses [FVP-P-75]"
* group[0].element[11].target[0].code = #TT
* group[0].element[11].target[0].display = "Tetanus vaccine (adsorbed)"
* group[0].element[11].target[0].relationship = #source-is-narrower-than-target

* group[0].element[12].code = #a3K3X000006Mii2UAC
* group[0].element[12].display = "Tetatox (TT), Bul Bio-National Center of Infectious and Parasitic Diseases Ltd., Vial, 20 doses [FVP-P-76]"
* group[0].element[12].target[0].code = #TT
* group[0].element[12].target[0].display = "Tetanus vaccine (adsorbed)"
* group[0].element[12].target[0].relationship = #source-is-narrower-than-target

* group[0].element[13].code = #a3K3X000006Mii3UAC
* group[0].element[13].display = "Diftet (DT), Bul Bio-National Center of Infectious and Parasitic Diseases Ltd., Vial, 10 doses [FVP-P-77]"
* group[0].element[13].target[0].code = #DT
* group[0].element[13].target[0].display = "Diphtheria and tetanus vaccine (adsorbed)"
* group[0].element[13].target[0].relationship = #source-is-narrower-than-target

* group[0].element[14].code = #a3K3X000006Mii4UAC
* group[0].element[14].display = "Withdrawn: Was Prequalified [FVP-P-292]"
* group[0].element[14].noMap = true

* group[0].element[15].code = #a3K3X000006Mii5UAC
* group[0].element[15].display = "HEALIVE (HepA), Sinovac Biotech Co. Ltd, Vial, 1 dose [FVP-P-311]"
* group[0].element[15].target[0].code = #HepA
* group[0].element[15].target[0].display = "Hepatitis A vaccine (inactivated)"
* group[0].element[15].target[0].relationship = #source-is-narrower-than-target

* group[0].element[16].code = #a3K3X000006Mii6UAC
* group[0].element[16].display = "Poliomyelitis Vaccine (live oral attenuated human Diploid Cell) type 1 and 3 (bOPV), Beijing Institute of Biological Products Co., Ltd., Vial, 20 doses [FVP-P-319]"
* group[0].element[16].target[0].code = #bOPV
* group[0].element[16].target[0].display = "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)"
* group[0].element[16].target[0].relationship = #source-is-narrower-than-target

* group[0].element[17].code = #a3K3X000006Mii7UAC
* group[0].element[17].display = "Euvax B (HepB), LG Chem Ltd (LGC), Vial, 10 doses [FVP-P-71]"
* group[0].element[17].target[0].code = #HepB
* group[0].element[17].target[0].display = "Hepatitis B vaccine (recombinant)"
* group[0].element[17].target[0].relationship = #source-is-narrower-than-target

* group[0].element[18].code = #a3K3X000006Mii8UAC
* group[0].element[18].display = "Diftet (DT), Bul Bio-National Center of Infectious and Parasitic Diseases Ltd., Vial, 20 doses [FVP-P-78]"
* group[0].element[18].target[0].code = #DT
* group[0].element[18].target[0].display = "Diphtheria and tetanus vaccine (adsorbed)"
* group[0].element[18].target[0].relationship = #source-is-narrower-than-target

* group[0].element[19].code = #a3K3X000006Mii9UAC
* group[0].element[19].display = "Tetadif (dT), Bul Bio-National Center of Infectious and Parasitic Diseases Ltd., Vial, 10 doses [FVP-P-79]"
* group[0].element[19].target[0].code = #dT
* group[0].element[19].target[0].display = "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)"
* group[0].element[19].target[0].relationship = #source-is-narrower-than-target

* group[0].element[20].code = #a3K3X000006MiiAUAS
* group[0].element[20].display = "Tetadif (dT), Bul Bio-National Center of Infectious and Parasitic Diseases Ltd., Vial, 20 doses [FVP-P-80]"
* group[0].element[20].target[0].code = #dT
* group[0].element[20].target[0].display = "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)"
* group[0].element[20].target[0].relationship = #source-is-narrower-than-target

* group[0].element[21].code = #a3K3X000006MiiBUAS
* group[0].element[21].display = "Withdrawn: Was Prequalified [FVP-P-329]"
* group[0].element[21].noMap = true

* group[0].element[22].code = #a3K3X000006MiiCUAS
* group[0].element[22].display = "BCG Vaccine (BCG), Bul Bio-National Center of Infectious and Parasitic Diseases Ltd., Ampoule, 10 doses [FVP-P-73]"
* group[0].element[22].target[0].code = #BCG
* group[0].element[22].target[0].display = "BCG"
* group[0].element[22].target[0].relationship = #source-is-narrower-than-target

* group[0].element[23].code = #a3K3X000006MiiDUAS
* group[0].element[23].display = "BCG Vaccine (BCG), Bul Bio-National Center of Infectious and Parasitic Diseases Ltd., Ampoule, 20 doses [FVP-P-74]"
* group[0].element[23].target[0].code = #BCG
* group[0].element[23].target[0].display = "BCG"
* group[0].element[23].target[0].relationship = #source-is-narrower-than-target

* group[0].element[24].code = #a3K3X000006MiiEUAS
* group[0].element[24].display = "Measles and Rubella Vaccine Live Attenuated (MR), Serum Institute of India, Vial, 1 dose [FVP-P-137]"
* group[0].element[24].target[0].code = #MR
* group[0].element[24].target[0].display = "Measles, rubella combined vaccine (live, attenuated)"
* group[0].element[24].target[0].relationship = #source-is-narrower-than-target

* group[0].element[25].code = #a3K3X000006MiiFUAS
* group[0].element[25].display = "Tetanus  Toxoid Vaccine Adsorbed (TT), Serum Institute of India, Vial, 20 doses [FVP-P-136]"
* group[0].element[25].target[0].code = #TT
* group[0].element[25].target[0].display = "Tetanus vaccine (adsorbed)"
* group[0].element[25].target[0].relationship = #source-is-narrower-than-target

* group[0].element[26].code = #a3K3X000006MiiGUAS
* group[0].element[26].display = "Measles and Rubella Vaccine Live Attenuated (MR), Serum Institute of India, Vial, 2 doses [FVP-P-138]"
* group[0].element[26].target[0].code = #MR
* group[0].element[26].target[0].display = "Measles, rubella combined vaccine (live, attenuated)"
* group[0].element[26].target[0].relationship = #source-is-narrower-than-target

* group[0].element[27].code = #a3K3X000006MiiHUAS
* group[0].element[27].display = "Measles Mumps and Rubella Vaccine Live Attenuated (MMR), Serum Institute of India, Vial, 1 dose [FVP-P-141]"
* group[0].element[27].target[0].code = #MMR
* group[0].element[27].target[0].display = "Measles, mumps, rubella combined vaccine (live, attenuated)"
* group[0].element[27].target[0].relationship = #source-is-narrower-than-target

* group[0].element[28].code = #a3K3X000006MiiIUAS
* group[0].element[28].display = "Measles Mumps and Rubella Vaccine Live Attenuated (MMR), Serum Institute of India, Vial, 2 doses [FVP-P-142]"
* group[0].element[28].target[0].code = #MMR
* group[0].element[28].target[0].display = "Measles, mumps, rubella combined vaccine (live, attenuated)"
* group[0].element[28].target[0].relationship = #source-is-narrower-than-target

* group[0].element[29].code = #a3K3X000006MiiJUAS
* group[0].element[29].display = "Measles Mumps and Rubella Vaccine Live Attenuated (MMR), Serum Institute of India, Vial, 10 doses [FVP-P-144]"
* group[0].element[29].target[0].code = #MMR
* group[0].element[29].target[0].display = "Measles, mumps, rubella combined vaccine (live, attenuated)"
* group[0].element[29].target[0].relationship = #source-is-narrower-than-target

* group[0].element[30].code = #a3K3X000006MiiKUAS
* group[0].element[30].display = "Measles Mumps and Rubella Vaccine Live Attenuated (MMR), Serum Institute of India, Vial, 5 doses [FVP-P-143]"
* group[0].element[30].target[0].code = #MMR
* group[0].element[30].target[0].display = "Measles, mumps, rubella combined vaccine (live, attenuated)"
* group[0].element[30].target[0].relationship = #source-is-narrower-than-target

* group[0].element[31].code = #a3K3X000006MiiLUAS
* group[0].element[31].display = "Japanese Encephalitis Vaccine Live (SA14-14-2) (JE), Chengdu Institute of Biological Products Co. Ltd, Two vial set (active + excipient), 5 doses [FVP-P-272]"
* group[0].element[31].target[0].code = #JE
* group[0].element[31].target[0].display = "Japanese encephalitis vaccine (live, attenuated) for human use"
* group[0].element[31].target[0].relationship = #source-is-narrower-than-target

* group[0].element[32].code = #a3K3X000006MiiMUAS
* group[0].element[32].display = "Measles Vaccine Live Attenuated (M), Serum Institute of India, Vial, 1 dose [FVP-P-145]"
* group[0].element[32].target[0].code = #M
* group[0].element[32].target[0].display = "Measles vaccine (live, attenuated)"
* group[0].element[32].target[0].relationship = #source-is-narrower-than-target

* group[0].element[33].code = #a3K3X000006MiiNUAS
* group[0].element[33].display = "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed (DTwP), Serum Institute of India, Ampoule, 1 dose [FVP-P-124]"
* group[0].element[33].target[0].code = #DTwP
* group[0].element[33].target[0].display = "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)"
* group[0].element[33].target[0].relationship = #source-is-narrower-than-target

* group[0].element[34].code = #a3K3X000006MiiOUAS
* group[0].element[34].display = "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed (DTwP), Serum Institute of India, Vial, 10 doses [FVP-P-125]"
* group[0].element[34].target[0].code = #DTwP
* group[0].element[34].target[0].display = "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)"
* group[0].element[34].target[0].relationship = #source-is-narrower-than-target

* group[0].element[35].code = #a3K3X000006MiiPUAS
* group[0].element[35].display = "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed (DTwP), Serum Institute of India, Vial, 20 doses [FVP-P-126]"
* group[0].element[35].target[0].code = #DTwP
* group[0].element[35].target[0].display = "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)"
* group[0].element[35].target[0].relationship = #source-is-narrower-than-target

* group[0].element[36].code = #a3K3X000006MiiQUAS
* group[0].element[36].display = "Withdrawn: Was Prequalified [FVP-P-127]"
* group[0].element[36].noMap = true

* group[0].element[37].code = #a3K3X000006MiiRUAS
* group[0].element[37].display = "Withdrawn: Was Prequalified [FVP-P-104]"
* group[0].element[37].noMap = true

* group[0].element[38].code = #a3K3X000006MiiSUAS
* group[0].element[38].display = "Withdrawn: Was Prequalified [FVP-P-105]"
* group[0].element[38].noMap = true

* group[0].element[39].code = #a3K3X000006MiiTUAS
* group[0].element[39].display = "Withdrawn: Was Prequalified [FVP-P-128]"
* group[0].element[39].noMap = true

* group[0].element[40].code = #a3K3X000006MiiUUAS
* group[0].element[40].display = "Withdrawn: Was Prequalified [FVP-P-129]"
* group[0].element[40].noMap = true

* group[0].element[41].code = #a3K3X000006MiiVUAS
* group[0].element[41].display = "Hepatitis B Vaccine (rDNA) (Adult) (HepB), Serum Institute of India, Vial, 10 doses [FVP-P-130]"
* group[0].element[41].target[0].code = #HepB
* group[0].element[41].target[0].display = "Hepatitis B vaccine (recombinant)"
* group[0].element[41].target[0].relationship = #source-is-narrower-than-target

* group[0].element[42].code = #a3K3X000006MiiWUAS
* group[0].element[42].display = "Hepatitis B Vaccine (rDNA) (Adult) (HepB), Serum Institute of India, Vial, 1 dose [FVP-P-131]"
* group[0].element[42].target[0].code = #HepB
* group[0].element[42].target[0].display = "Hepatitis B vaccine (recombinant)"
* group[0].element[42].target[0].relationship = #source-is-narrower-than-target

* group[0].element[43].code = #a3K3X000006MiiXUAS
* group[0].element[43].display = "Hepatitis B Vaccine (rDNA) (Paediatric) (HepB), Serum Institute of India, Vial, 10 doses [FVP-P-132]"
* group[0].element[43].target[0].code = #HepB
* group[0].element[43].target[0].display = "Hepatitis B vaccine (recombinant)"
* group[0].element[43].target[0].relationship = #source-is-narrower-than-target

* group[0].element[44].code = #a3K3X000006MiiYUAS
* group[0].element[44].display = "Hepatitis B Vaccine (rDNA) (Paedriatic) (HepB), Serum Institute of India, Vial, 1 dose [FVP-P-133]"
* group[0].element[44].target[0].code = #HepB
* group[0].element[44].target[0].display = "Hepatitis B vaccine (recombinant)"
* group[0].element[44].target[0].relationship = #source-is-narrower-than-target

* group[0].element[45].code = #a3K3X000006MiiZUAS
* group[0].element[45].display = "Tetanus  Toxoid Vaccine Adsorbed (TT), Serum Institute of India, Ampoule, 1 dose [FVP-P-134]"
* group[0].element[45].target[0].code = #TT
* group[0].element[45].target[0].display = "Tetanus vaccine (adsorbed)"
* group[0].element[45].target[0].relationship = #source-is-narrower-than-target

* group[0].element[46].code = #a3K3X000006MiiaUAC
* group[0].element[46].display = "Panvax (IIVPandemic), Seqirus Australia Pty Ltd, Vial, 10 doses [FVP-P-205]"
* group[0].element[46].target[0].code = #IIVPandemic
* group[0].element[46].target[0].display = "Human pandemic influenza vaccine"
* group[0].element[46].target[0].relationship = #source-is-narrower-than-target

* group[0].element[47].code = #a3K3X000006MiibUAC
* group[0].element[47].display = "IPV Vaccine SSI (IPV), AJ Vaccines A/S, Vial, 1 dose [FVP-P-231]"
* group[0].element[47].target[0].code = #IPV
* group[0].element[47].target[0].display = "Poliomyelitis vaccine (inactivated)"
* group[0].element[47].target[0].relationship = #source-is-narrower-than-target

* group[0].element[48].code = #a3K3X000006MiicUAC
* group[0].element[48].display = "Japanese Encephalitis Vaccine Live (SA14-14-2) (JE), Chengdu Institute of Biological Products Co. Ltd, Two vial set (active + excipient), 1 dose [FVP-P-271]"
* group[0].element[48].target[0].code = #JE
* group[0].element[48].target[0].display = "Japanese encephalitis vaccine (live, attenuated) for human use"
* group[0].element[48].target[0].relationship = #source-is-narrower-than-target

* group[0].element[49].code = #a3K3X000006MiidUAC
* group[0].element[49].display = "Measles and Rubella Vaccine Live Attenuated (MR), Serum Institute of India, Vial, 5 doses [FVP-P-139]"
* group[0].element[49].target[0].code = #MR
* group[0].element[49].target[0].display = "Measles, rubella combined vaccine (live, attenuated)"
* group[0].element[49].target[0].relationship = #source-is-narrower-than-target

* group[0].element[50].code = #a3K3X000006MiigUAC
* group[0].element[50].display = "Withdrawn: Was Prequalified [FVP-P-109]"
* group[0].element[50].noMap = true

* group[0].element[51].code = #a3K3X000006MiihUAC
* group[0].element[51].display = "VERORAB (Rabies), Sanofi Pasteur SA, Vial, 1 dose [FVP-P-111]"
* group[0].element[51].target[0].code = #Rabies
* group[0].element[51].target[0].display = "Rabies vaccine for human use"
* group[0].element[51].target[0].relationship = #source-is-narrower-than-target

* group[0].element[52].code = #a3K3X000006MiiiUAC
* group[0].element[52].display = "STAMARIL (YF), Sanofi Pasteur SA, Vial + Ampoule, 10 doses [FVP-P-112]"
* group[0].element[52].target[0].code = #YF
* group[0].element[52].target[0].display = "Yellow fever vaccine (live attenuated)"
* group[0].element[52].target[0].relationship = #source-is-narrower-than-target

* group[0].element[53].code = #a3K3X000006MiijUAC
* group[0].element[53].display = "Tetanus  Toxoid Vaccine Adsorbed (TT), Serum Institute of India, Vial, 10 doses [FVP-P-135]"
* group[0].element[53].target[0].code = #TT
* group[0].element[53].target[0].display = "Tetanus vaccine (adsorbed)"
* group[0].element[53].target[0].relationship = #source-is-narrower-than-target

* group[0].element[54].code = #a3K3X000006MiikUAC
* group[0].element[54].display = "Diphtheria and Tetanus Vaccine Adsorbed for Adults and Adolescents (dT), Serum Institute of India, Vial, 10 doses [FVP-P-122]"
* group[0].element[54].target[0].code = #dT
* group[0].element[54].target[0].display = "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)"
* group[0].element[54].target[0].relationship = #source-is-narrower-than-target

* group[0].element[55].code = #a3K3X000006MiilUAC
* group[0].element[55].display = "Diphtheria and Tetanus Vaccine Adsorbed for Adults and Adolescents (dT), Serum Institute of India, Vial, 20 doses [FVP-P-123]"
* group[0].element[55].target[0].code = #dT
* group[0].element[55].target[0].display = "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)"
* group[0].element[55].target[0].relationship = #source-is-narrower-than-target

* group[0].element[56].code = #a3K3X000006MiimUAC
* group[0].element[56].display = "Measles and Rubella Vaccine Live Attenuated (MR), Serum Institute of India, Vial, 10 doses [FVP-P-140]"
* group[0].element[56].target[0].code = #MR
* group[0].element[56].target[0].display = "Measles, rubella combined vaccine (live, attenuated)"
* group[0].element[56].target[0].relationship = #source-is-narrower-than-target

* group[0].element[57].code = #a3K3X000006MiinUAC
* group[0].element[57].display = "IMOVAX POLIO (IPV), Sanofi Pasteur SA, Vial, 10 doses [FVP-P-98]"
* group[0].element[57].target[0].code = #IPV
* group[0].element[57].target[0].display = "Poliomyelitis vaccine (inactivated)"
* group[0].element[57].target[0].relationship = #source-is-narrower-than-target

* group[0].element[58].code = #a3K3X000006MiioUAC
* group[0].element[58].display = "Diphtheria and Tetanus Vaccine Adsorbed (Paediatric) (DT), Serum Institute of India, Ampoule, 1 dose [FVP-P-118]"
* group[0].element[58].target[0].code = #DT
* group[0].element[58].target[0].display = "Diphtheria and tetanus vaccine (adsorbed)"
* group[0].element[58].target[0].relationship = #source-is-narrower-than-target

* group[0].element[59].code = #a3K3X000006MiipUAC
* group[0].element[59].display = "Diphtheria and Tetanus Vaccine Adsorbed (Pediatric) (DT), Serum Institute of India, Vial, 10 doses [FVP-P-119]"
* group[0].element[59].target[0].code = #DT
* group[0].element[59].target[0].display = "Diphtheria and tetanus vaccine (adsorbed)"
* group[0].element[59].target[0].relationship = #source-is-narrower-than-target

* group[0].element[60].code = #a3K3X000006MiiqUAC
* group[0].element[60].display = "Diphtheria and Tetanus Vaccine Adsorbed (Pediatric) (DT), Serum Institute of India, Vial, 20 doses [FVP-P-120]"
* group[0].element[60].target[0].code = #DT
* group[0].element[60].target[0].display = "Diphtheria and tetanus vaccine (adsorbed)"
* group[0].element[60].target[0].relationship = #source-is-narrower-than-target

* group[0].element[61].code = #a3K3X000006MiirUAC
* group[0].element[61].display = "Diphtheria and Tetanus Vaccine Adsorbed for Adults and Adolescents (dT), Serum Institute of India, Ampoule, 1 dose [FVP-P-121]"
* group[0].element[61].target[0].code = #dT
* group[0].element[61].target[0].display = "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)"
* group[0].element[61].target[0].relationship = #source-is-narrower-than-target

* group[0].element[62].code = #a3K3X000006MiisUAC
* group[0].element[62].display = "BCG Vaccine (BCG), Serum Institute of India, Vial, 20 doses [FVP-P-117]"
* group[0].element[62].target[0].code = #BCG
* group[0].element[62].target[0].display = "BCG"
* group[0].element[62].target[0].relationship = #source-is-narrower-than-target

* group[0].element[63].code = #a3K3X000006MiitUAC
* group[0].element[63].display = "BIOPOLIO B1/3 (bOPV), Bharat Biotech International Limited, Vial, 10 doses [FVP-P-337]"
* group[0].element[63].target[0].code = #bOPV
* group[0].element[63].target[0].display = "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)"
* group[0].element[63].target[0].relationship = #source-is-narrower-than-target

* group[0].element[64].code = #a3K3X000006MiiuUAC
* group[0].element[64].display = "Euvichol-Plus (OCV), EuBiologics Co.  Ltd., Plastic tube, 1 dose [FVP-P-336]"
* group[0].element[64].target[0].code = #OCV
* group[0].element[64].target[0].display = "Inactivated oral cholera vaccine"
* group[0].element[64].target[0].relationship = #source-is-narrower-than-target

* group[0].element[65].code = #a3K3X000006MiivUAC
* group[0].element[65].display = "BCG Freeze Dried Glutamate vaccine (BCG), Japan BCG Laboratory (JBL), Ampoule, 10 doses [FVP-P-338]"
* group[0].element[65].target[0].code = #BCG
* group[0].element[65].target[0].display = "BCG"
* group[0].element[65].target[0].relationship = #source-is-narrower-than-target

* group[0].element[66].code = #a3K3X000006MiiwUAC
* group[0].element[66].display = "Eupolio Inj. (sIPV), LG Chem Ltd (LGC), Vial, 5 doses [FVP-P-390]"
* group[0].element[66].target[0].code = #sIPV
* group[0].element[66].target[0].display = "Poliomyelitis vaccine (inactivated-Sabin)"
* group[0].element[66].target[0].relationship = #source-is-narrower-than-target

* group[0].element[67].code = #a3K3X000006MiixUAC
* group[0].element[67].display = "Cancelled: Assessment [FVP-P-391]"
* group[0].element[67].noMap = true

* group[0].element[68].code = #a3K3X000006MiiyUAC
* group[0].element[68].display = "Measles and Rubella Vaccine (Live) (Attenuated Freeze Dried) (MR), Biological E. Limited, Vial + Ampoule, 1 dose [FVP-P-342]"
* group[0].element[68].target[0].code = #MR
* group[0].element[68].target[0].display = "Measles, rubella combined vaccine (live, attenuated)"
* group[0].element[68].target[0].relationship = #source-is-narrower-than-target

* group[0].element[69].code = #a3K3X000006MiizUAC
* group[0].element[69].display = "Rotavac (LARV), Bharat Biotech International Limited, Vial, 10 doses [FVP-P-343]"
* group[0].element[69].target[0].code = #LARV
* group[0].element[69].target[0].display = "Rotavirus vaccine (live attenuated) (oral)"
* group[0].element[69].target[0].relationship = #source-is-narrower-than-target

* group[0].element[70].code = #a3K3X000006Mij0UAC
* group[0].element[70].display = "SKYVaricella Inj. (VAR), SK Bioscience Co.  Ltd. (SK), Two vial set (active + excipient), 1 dose [FVP-P-356]"
* group[0].element[70].target[0].code = #VAR
* group[0].element[70].target[0].display = "Varicella"
* group[0].element[70].target[0].relationship = #source-is-narrower-than-target

* group[0].element[71].code = #a3K3X000006Mij1UAC
* group[0].element[71].display = "Monovalent Oral Poliomyelitis Vaccine Type 2 (mOPV2), PT Bio Farma (Persero), Vial, 20 doses [FVP-P-358]"
* group[0].element[71].target[0].code = #mOPV2
* group[0].element[71].target[0].display = "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 2)"
* group[0].element[71].target[0].relationship = #source-is-narrower-than-target

* group[0].element[72].code = #a3K3X000006Mij2UAC
* group[0].element[72].display = "JEEV® (6µg) (JE), Biological E. Limited, Vial, 5 doses [FVP-P-359]"
* group[0].element[72].target[0].code = #JE
* group[0].element[72].target[0].display = "Japanese encephalitis vaccine (inactivated) for human use"
* group[0].element[72].target[0].relationship = #source-is-narrower-than-target

* group[0].element[73].code = #a3K3X000006Mij3UAC
* group[0].element[73].display = "Typbar-TCV (Typhoid), Bharat Biotech International Limited, Vial, 5 doses [FVP-P-347]"
* group[0].element[73].target[0].code = #Typhoid
* group[0].element[73].target[0].display = "Typhoid conjugate vaccine"
* group[0].element[73].target[0].relationship = #source-is-narrower-than-target

* group[0].element[74].code = #a3K3X000006Mij4UAC
* group[0].element[74].display = "Afluria® Quadrivalent (IIV4), Seqirus Australia Pty Ltd, Vial, 10 doses [FVP-P-350]"
* group[0].element[74].target[0].code = #IIV4
* group[0].element[74].target[0].display = "Influenza vaccine quadrivalent (split virion, inactivated)"
* group[0].element[74].target[0].relationship = #source-is-narrower-than-target

* group[0].element[75].code = #a3K3X000006Mij5UAC
* group[0].element[75].display = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BE Td (dT), Biological E. Limited, Vial, 1 dose [FVP-P-279]"
* group[0].element[75].target[0].code = #dT
* group[0].element[75].target[0].display = "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)"
* group[0].element[75].target[0].relationship = #source-is-narrower-than-target

* group[0].element[76].code = #a3K3X000006Mij6UAC
* group[0].element[76].display = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BE Td (dT), Biological E. Limited, Vial, 10 doses [FVP-P-280]"
* group[0].element[76].target[0].code = #dT
* group[0].element[76].target[0].display = "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)"
* group[0].element[76].target[0].relationship = #source-is-narrower-than-target

* group[0].element[77].code = #a3K3X000006Mij7UAC
* group[0].element[77].display = "Dukoral (OCV), Valneva Sweden AB, Vial + Buffer sachet, 1 dose [FVP-P-116]"
* group[0].element[77].target[0].code = #OCV
* group[0].element[77].target[0].display = "Inactivated oral cholera vaccine"
* group[0].element[77].target[0].relationship = #source-is-narrower-than-target

* group[0].element[78].code = #a3K3X000006Mij8UAC
* group[0].element[78].display = "Pandemic Live Attenuated Vaccine (IIVPandemic), AstraZeneca Pharmaceuticals LP., Sprayer, 1 dose [FVP-P-376]"
* group[0].element[78].target[0].code = #IIVPandemic
* group[0].element[78].target[0].display = "Human pandemic influenza vaccine"
* group[0].element[78].target[0].relationship = #source-is-narrower-than-target

* group[0].element[79].code = #a3K3X000006Mij9UAC
* group[0].element[79].display = "ROTASIIL-Liquid (LARV), Serum Institute of India, Plastic tube, 1 dose [FVP-P-378]"
* group[0].element[79].target[0].code = #LARV
* group[0].element[79].target[0].display = "Rotavirus vaccine (live attenuated) (oral)"
* group[0].element[79].target[0].relationship = #source-is-narrower-than-target

* group[0].element[80].code = #a3K3X000006MijAUAS
* group[0].element[80].display = "TYPHIBEV® (Typhoid), Biological E. Limited, Vial, 1 dose [FVP-P-379]"
* group[0].element[80].target[0].code = #Typhoid
* group[0].element[80].target[0].display = "Typhoid conjugate vaccine"
* group[0].element[80].target[0].relationship = #source-is-narrower-than-target

* group[0].element[81].code = #a3K3X000006MijBUAS
* group[0].element[81].display = "Poliomyelitis Vaccine (Oral) Bivalent types 1 and 3 (bOPV), Serum Institute of India, Vial, 10 doses [FVP-P-281]"
* group[0].element[81].target[0].code = #bOPV
* group[0].element[81].target[0].display = "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)"
* group[0].element[81].target[0].relationship = #source-is-narrower-than-target

* group[0].element[82].code = #a3K3X000006MijCUAS
* group[0].element[82].display = "Poliomyelitis vaccine multidose suspension for injection 2.5 mL (IPV), Bilthoven Biologicals B.V., Vial, 5 doses [FVP-P-283]"
* group[0].element[82].target[0].code = #IPV
* group[0].element[82].target[0].display = "Poliomyelitis vaccine (inactivated)"
* group[0].element[82].target[0].relationship = #source-is-narrower-than-target

* group[0].element[83].code = #a3K3X000006MijDUAS
* group[0].element[83].display = "Withdrawn: Was Prequalified [FVP-P-284]"
* group[0].element[83].noMap = true

* group[0].element[84].code = #a3K3X000006MijEUAS
* group[0].element[84].display = "Hexaxim (DTaP-HepB-IPV-Hib), Sanofi Pasteur SA, Vial, 1 dose [FVP-P-285]"
* group[0].element[84].target[0].code = #DTaPHepBIPVHib
* group[0].element[84].target[0].display = "Diphtheria, tetanus, (acellular) pertussis, hepatitis b, poliomyelitis (inactivated) and Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[84].target[0].relationship = #source-is-narrower-than-target

* group[0].element[85].code = #a3K3X000006MijFUAS
* group[0].element[85].display = "Eupenta (DTwP-HepB-Hib), LG Chem Ltd (LGC), Vial, 1 dose [FVP-P-304]"
* group[0].element[85].target[0].code = #DTwPHepBHib
* group[0].element[85].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[85].target[0].relationship = #source-is-narrower-than-target

* group[0].element[86].code = #a3K3X000006MijGUAS
* group[0].element[86].display = "Eupenta (DTwP-HepB-Hib), LG Chem Ltd (LGC), Vial, 10 doses [FVP-P-305]"
* group[0].element[86].target[0].code = #DTwPHepBHib
* group[0].element[86].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[86].target[0].relationship = #source-is-narrower-than-target

* group[0].element[87].code = #a3K3X000006MijHUAS
* group[0].element[87].display = "ERVEBO (EBOV), Merck Sharp & Dohme LLC, Vial, 1 dose [FVP-P-383]"
* group[0].element[87].target[0].code = #EBOV
* group[0].element[87].target[0].display = "Ebola vaccine (live, attenuated)"
* group[0].element[87].target[0].relationship = #source-is-narrower-than-target

* group[0].element[88].code = #a3K3X000006MijIUAS
* group[0].element[88].display = "PNEUMOSIL® (PCV), Serum Institute of India, Vial, 1 dose [FVP-P-384]"
* group[0].element[88].target[0].code = #PCV
* group[0].element[88].target[0].display = "Pneumococcal conjugate vaccine"
* group[0].element[88].target[0].relationship = #source-is-narrower-than-target

* group[0].element[89].code = #a3K3X000006MijJUAS
* group[0].element[89].display = "PNEUMOSIL® (PCV), Serum Institute of India, Vial, 5 doses [FVP-P-385]"
* group[0].element[89].target[0].code = #PCV
* group[0].element[89].target[0].display = "Pneumococcal conjugate vaccine"
* group[0].element[89].target[0].relationship = #source-is-narrower-than-target

* group[0].element[90].code = #a3K3X000006MijKUAS
* group[0].element[90].display = "Euvax B (HepB), LG Chem Ltd (LGC), Vial, 1 dose [FVP-P-394]"
* group[0].element[90].target[0].code = #HepB
* group[0].element[90].target[0].display = "Hepatitis B vaccine (recombinant)"
* group[0].element[90].target[0].relationship = #source-is-narrower-than-target

* group[0].element[91].code = #a3K3X000006MijLUAS
* group[0].element[91].display = "ROTASIIL®Thermo (LARV), Serum Institute of India, Two vial set (active + excipient), 1 dose [FVP-P-396]"
* group[0].element[91].target[0].code = #LARV
* group[0].element[91].target[0].display = "Rotavirus vaccine (live attenuated) (oral)"
* group[0].element[91].target[0].relationship = #source-is-narrower-than-target

* group[0].element[92].code = #a3K3X000006MijMUAS
* group[0].element[92].display = "ROTASIIL®Thermo (LARV), Serum Institute of India, Two vial set (active + excipient), 2 doses [FVP-P-397]"
* group[0].element[92].target[0].code = #LARV
* group[0].element[92].target[0].display = "Rotavirus vaccine (live attenuated) (oral)"
* group[0].element[92].target[0].relationship = #source-is-narrower-than-target

* group[0].element[93].code = #a3K3X000006MijNUAS
* group[0].element[93].display = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BE Td (dT), Biological E. Limited, Vial, 20 doses [FVP-P-399]"
* group[0].element[93].target[0].code = #dT
* group[0].element[93].target[0].display = "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)"
* group[0].element[93].target[0].relationship = #source-is-narrower-than-target

* group[0].element[94].code = #a3K3X000006MijOUAS
* group[0].element[94].display = "Oral Poliomyelitis Vaccines (Oral Drops) (tOPV), PT Bio Farma (Persero), Vial, 20 doses [FVP-P-400]"
* group[0].element[94].target[0].code = #tOPV
* group[0].element[94].target[0].display = "Poliomyelitis vaccines (trivalent live, oral, innactivated, type 1,2, 3)"
* group[0].element[94].target[0].relationship = #source-is-narrower-than-target

* group[0].element[95].code = #a3K3X000006MijPUAS
* group[0].element[95].display = "VaxigripTetra (IIV4), Sanofi Pasteur SA, Vial, 10 doses [FVP-P-401]"
* group[0].element[95].target[0].code = #IIV4
* group[0].element[95].target[0].display = "Influenza vaccine quadrivalent (split virion, inactivated)"
* group[0].element[95].target[0].relationship = #source-is-narrower-than-target

* group[0].element[96].code = #a3K3X000006MijQUAS
* group[0].element[96].display = "Meningococcal A Conjugate 5 micrograms MenAfriVac 5µg (MenA), Serum Institute of India, Vial + Ampoule, 10 doses [FVP-P-286]"
* group[0].element[96].target[0].code = #MenA
* group[0].element[96].target[0].display = "Group A meningococcal conjugate vaccine"
* group[0].element[96].target[0].relationship = #source-is-narrower-than-target

* group[0].element[97].code = #a3K3X000006MijRUAS
* group[0].element[97].display = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid). (DTwP-HepB-Hib), Biological E. Limited, Vial, 5 doses [FVP-P-287]"
* group[0].element[97].target[0].code = #DTwPHepBHib
* group[0].element[97].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[97].target[0].relationship = #source-is-narrower-than-target

* group[0].element[98].code = #a3K3X000006MijSUAS
* group[0].element[98].display = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid). (DTwP-HepB-Hib), Biological E. Limited, Vial, 2 doses [FVP-P-288]"
* group[0].element[98].target[0].code = #DTwPHepBHib
* group[0].element[98].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[98].target[0].relationship = #source-is-narrower-than-target

* group[0].element[99].code = #a3K3X000006MijTUAS
* group[0].element[99].display = "Poliomyelitis Vaccine (Inactivated) (IPV), Serum Institute of India, Vial, 5 doses [FVP-P-289]"
* group[0].element[99].target[0].code = #IPV
* group[0].element[99].target[0].display = "Poliomyelitis vaccine (inactivated)"
* group[0].element[99].target[0].relationship = #source-is-narrower-than-target

* group[0].element[100].code = #a3K3X000006MijUUAS
* group[0].element[100].display = "BIOPOLIO (tOPV), Bharat Biotech International Limited, Vial, 20 doses [FVP-P-290]"
* group[0].element[100].target[0].code = #tOPV
* group[0].element[100].target[0].display = "Poliomyelitis vaccines (trivalent live, oral, innactivated, type 1,2, 3)"
* group[0].element[100].target[0].relationship = #source-is-narrower-than-target

* group[0].element[101].code = #a3K3X000006MijVUAS
* group[0].element[101].display = "BIOPOLIO (tOPV), Bharat Biotech International Limited, Vial, 10 doses [FVP-P-291]"
* group[0].element[101].target[0].code = #tOPV
* group[0].element[101].target[0].display = "Poliomyelitis vaccines (trivalent live, oral, innactivated, type 1,2, 3)"
* group[0].element[101].target[0].relationship = #source-is-narrower-than-target

* group[0].element[102].code = #a3K3X000006MijWUAS
* group[0].element[102].display = "IL-YANG FLU Vaccine INJ. (IIV3), IL-YANG PHARMACEUTICAL CO.  LTD., Vial, 1 dose [FVP-P-293]"
* group[0].element[102].target[0].code = #IIV3
* group[0].element[102].target[0].display = "Influenza vaccine trivalent (split virion, inactivated)"
* group[0].element[102].target[0].relationship = #source-is-narrower-than-target

* group[0].element[103].code = #a3K3X000006MijZUAS
* group[0].element[103].display = "Bivalent Oral Poliomyelitis Vaccine Type 1&3 (bOPV 1&3) (bOPV), PT Bio Farma (Persero), Vial, 10 doses [FVP-P-297]"
* group[0].element[103].target[0].code = #bOPV
* group[0].element[103].target[0].display = "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)"
* group[0].element[103].target[0].relationship = #source-is-narrower-than-target

* group[0].element[104].code = #a3K3X000006MijaUAC
* group[0].element[104].display = "ROTASIIL (LARV), Serum Institute of India, Two vial set (active + excipient), 2 doses [FVP-P-355]"
* group[0].element[104].target[0].code = #LARV
* group[0].element[104].target[0].display = "Rotavirus vaccine (live attenuated) (oral)"
* group[0].element[104].target[0].relationship = #source-is-narrower-than-target

* group[0].element[105].code = #a3K3X000006MijbUAC
* group[0].element[105].display = "Euvichol (OCV), EuBiologics Co.  Ltd., Vial, 1 dose [FVP-P-298]"
* group[0].element[105].target[0].code = #OCV
* group[0].element[105].target[0].display = "Inactivated oral cholera vaccine"
* group[0].element[105].target[0].relationship = #source-is-narrower-than-target

* group[0].element[106].code = #a3K3X000006MijcUAC
* group[0].element[106].display = "Withdrawn: Was Prequalified [FVP-P-299]"
* group[0].element[106].noMap = true

* group[0].element[107].code = #a3K3X000006MijdUAC
* group[0].element[107].display = "Gardasil 9 (HPV), Merck Sharp & Dohme LLC, Vial, 1 dose [FVP-P-306]"
* group[0].element[107].target[0].code = #HPV
* group[0].element[107].target[0].display = "Recombinant human papillomavirus virus-like particle vaccine (types 6,11,16,18,31,33,45,52,58)"
* group[0].element[107].target[0].relationship = #source-is-narrower-than-target

* group[0].element[108].code = #a3K3X000006MijeUAC
* group[0].element[108].display = "Pentabio (DTwP-HepB-Hib), PT Bio Farma (Persero), Vial, 5 doses [FVP-P-308]"
* group[0].element[108].target[0].code = #DTwPHepBHib
* group[0].element[108].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[108].target[0].relationship = #source-is-narrower-than-target

* group[0].element[109].code = #a3K3X000006MijfUAC
* group[0].element[109].display = "Pentabio (DTwP-HepB-Hib), PT Bio Farma (Persero), Vial, 10 doses [FVP-P-309]"
* group[0].element[109].target[0].code = #DTwPHepBHib
* group[0].element[109].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[109].target[0].relationship = #source-is-narrower-than-target

* group[0].element[110].code = #a3K3X000006MijgUAC
* group[0].element[110].display = "influenza trivalent vaccine (split virion inactivated) (IIV3), Instituto Butantan, Vial, 10 doses [FVP-P-312]"
* group[0].element[110].target[0].code = #IIV3
* group[0].element[110].target[0].display = "Influenza vaccine trivalent (split virion, inactivated)"
* group[0].element[110].target[0].relationship = #source-is-narrower-than-target

* group[0].element[111].code = #a3K3X000006MijhUAC
* group[0].element[111].display = "Varivax (VAR), Merck Sharp & Dohme LLC, Two vial set (active + excipient), 1 dose [FVP-P-313]"
* group[0].element[111].target[0].code = #VAR
* group[0].element[111].target[0].display = "Varicella"
* group[0].element[111].target[0].relationship = #source-is-narrower-than-target

* group[0].element[112].code = #a3K3X000006MijiUAC
* group[0].element[112].display = "Rotavac (LARV), Bharat Biotech International Limited, Vial, 5 doses [FVP-P-314]"
* group[0].element[112].target[0].code = #LARV
* group[0].element[112].target[0].display = "Rotavirus vaccine (live attenuated) (oral)"
* group[0].element[112].target[0].relationship = #source-is-narrower-than-target

* group[0].element[113].code = #a3K3X000006MijjUAC
* group[0].element[113].display = "JEEV® (3µg) (JE), Biological E. Limited, Vial, 1 dose [FVP-P-321]"
* group[0].element[113].target[0].code = #JE
* group[0].element[113].target[0].display = "Japanese encephalitis vaccine (inactivated) for human use"
* group[0].element[113].target[0].relationship = #source-is-narrower-than-target

* group[0].element[114].code = #a3K3X000006MijkUAC
* group[0].element[114].display = "Rabies Vaccine Inactivated (Freeze Dried)(RABIVAX-S) (Rabies), Serum Institute of India, Vial + Ampoule, 1 dose [FVP-P-322]"
* group[0].element[114].target[0].code = #Rabies
* group[0].element[114].target[0].display = "Rabies vaccine for human use"
* group[0].element[114].target[0].relationship = #source-is-narrower-than-target

* group[0].element[115].code = #a3K3X000006MijlUAC
* group[0].element[115].display = "ROTASIIL (LARV), Serum Institute of India, Two vial set (active + excipient), 1 dose [FVP-P-323]"
* group[0].element[115].target[0].code = #LARV
* group[0].element[115].target[0].display = "Rotavirus vaccine (live attenuated) (oral)"
* group[0].element[115].target[0].relationship = #source-is-narrower-than-target

* group[0].element[116].code = #a3K3X000006MijmUAC
* group[0].element[116].display = "Poliomyelitis Vaccine (Inactivated) (IPV), Serum Institute of India, Vial, 2 doses [FVP-P-324]"
* group[0].element[116].target[0].code = #IPV
* group[0].element[116].target[0].display = "Poliomyelitis vaccine (inactivated)"
* group[0].element[116].target[0].relationship = #source-is-narrower-than-target

* group[0].element[117].code = #a3K3X000006MijnUAC
* group[0].element[117].display = "Poliomyelitis Vaccine (Inactivated) (IPV), Serum Institute of India, Vial, 1 dose [FVP-P-325]"
* group[0].element[117].target[0].code = #IPV
* group[0].element[117].target[0].display = "Poliomyelitis vaccine (inactivated)"
* group[0].element[117].target[0].relationship = #source-is-narrower-than-target

* group[0].element[118].code = #a3K3X000006MijoUAC
* group[0].element[118].display = "VaxiRab N (Rabies), Zydus Lifescience Limited, Vial, 1 dose [FVP-P-330]"
* group[0].element[118].target[0].code = #Rabies
* group[0].element[118].target[0].display = "Rabies vaccine for human use"
* group[0].element[118].target[0].relationship = #source-is-narrower-than-target

* group[0].element[119].code = #a3K3X000006MijpUAC
* group[0].element[119].display = "Serinflu (IIV3), Abbott Biologicals BV, Vial, 1 dose [FVP-P-332]"
* group[0].element[119].target[0].code = #IIV3
* group[0].element[119].target[0].display = "Influenza vaccine trivalent (surface antigens, inactivated)"
* group[0].element[119].target[0].relationship = #source-is-narrower-than-target

* group[0].element[120].code = #a3K3X000006MijqUAC
* group[0].element[120].display = "AGRIFLU (IIV3), Seqirus UK Limited, Vial, 10 doses [FVP-P-316]"
* group[0].element[120].target[0].code = #IIV3
* group[0].element[120].target[0].display = "Influenza vaccine trivalent (surface antigens, inactivated)"
* group[0].element[120].target[0].relationship = #source-is-narrower-than-target

* group[0].element[121].code = #a3K3X000006MijrUAC
* group[0].element[121].display = "Typbar-TCV (Typhoid), Bharat Biotech International Limited, Vial, 1 dose [FVP-P-318]"
* group[0].element[121].target[0].code = #Typhoid
* group[0].element[121].target[0].display = "Typhoid conjugate vaccine"
* group[0].element[121].target[0].relationship = #source-is-narrower-than-target

* group[0].element[122].code = #a3K3X000006MijsUAC
* group[0].element[122].display = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid). (DTwP-HepB-Hib), Biological E. Limited, Vial, 10 doses [FVP-P-275]"
* group[0].element[122].target[0].code = #DTwPHepBHib
* group[0].element[122].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[122].target[0].relationship = #source-is-narrower-than-target

* group[0].element[123].code = #a3K3X000006MijtUAC
* group[0].element[123].display = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  TRIPVAC (DTwP), Biological E. Limited, Vial, 1 dose [FVP-P-277]"
* group[0].element[123].target[0].code = #DTwP
* group[0].element[123].target[0].display = "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)"
* group[0].element[123].target[0].relationship = #source-is-narrower-than-target

* group[0].element[124].code = #a3K3X000006MijuUAC
* group[0].element[124].display = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  TRIPVAC (DTwP), Biological E. Limited, Vial, 10 doses [FVP-P-278]"
* group[0].element[124].target[0].code = #DTwP
* group[0].element[124].target[0].display = "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)"
* group[0].element[124].target[0].relationship = #source-is-narrower-than-target

* group[0].element[125].code = #a3K3X000006MijvUAC
* group[0].element[125].display = "SKYCellflu® inj. (IIV3), SK Bioscience Co.  Ltd. (SK), Vial, 1 dose [FVP-P-339]"
* group[0].element[125].target[0].code = #IIV3
* group[0].element[125].target[0].display = "Influenza vaccine trivalent (surface antigens, inactivated)"
* group[0].element[125].target[0].relationship = #source-is-narrower-than-target

* group[0].element[126].code = #a3K3X000006MijwUAC
* group[0].element[126].display = "SKYCellflu® Multi inj. (IIV3), SK Bioscience Co.  Ltd. (SK), Vial, 10 doses [FVP-P-340]"
* group[0].element[126].target[0].code = #IIV3
* group[0].element[126].target[0].display = "Influenza vaccine trivalent (surface antigens, inactivated)"
* group[0].element[126].target[0].relationship = #source-is-narrower-than-target

* group[0].element[127].code = #a3K3X000006MijxUAC
* group[0].element[127].display = "Synflorix (PCV), GlaxoSmithKline Biologicals SA, Vial, 4 doses [FVP-P-341]"
* group[0].element[127].target[0].code = #PCV
* group[0].element[127].target[0].display = "Pneumococcal conjugate vaccine"
* group[0].element[127].target[0].relationship = #source-is-narrower-than-target

* group[0].element[128].code = #a3K3X000006MijyUAC
* group[0].element[128].display = "JEEV® (3µg) (JE), Biological E. Limited, Vial, 5 doses [FVP-P-360]"
* group[0].element[128].target[0].code = #JE
* group[0].element[128].target[0].display = "Japanese encephalitis vaccine (inactivated) for human use"
* group[0].element[128].target[0].relationship = #source-is-narrower-than-target

* group[0].element[129].code = #a3K3X000006MijzUAC
* group[0].element[129].display = "ROTAVAC 5D® (LARV), Bharat Biotech International Limited, Vial, 1 dose [FVP-P-362]"
* group[0].element[129].target[0].code = #LARV
* group[0].element[129].target[0].display = "Rotavirus vaccine (live attenuated) (oral)"
* group[0].element[129].target[0].relationship = #source-is-narrower-than-target

* group[0].element[130].code = #a3K3X000006Mik0UAC
* group[0].element[130].display = "SKYCellflu Quadrivalent inj. (IIV4), SK Bioscience Co.  Ltd. (SK), Vial, 1 dose [FVP-P-364]"
* group[0].element[130].target[0].code = #IIV4
* group[0].element[130].target[0].display = "Influenza vaccine quadrivalent (surface antigens, inactivated)"
* group[0].element[130].target[0].relationship = #source-is-narrower-than-target

* group[0].element[131].code = #a3K3X000006Mik1UAC
* group[0].element[131].display = "SKYCellflu Quadrivalent Multi inj. (IIV4), SK Bioscience Co.  Ltd. (SK), Vial, 10 doses [FVP-P-365]"
* group[0].element[131].target[0].code = #IIV4
* group[0].element[131].target[0].display = "Influenza vaccine quadrivalent (surface antigens, inactivated)"
* group[0].element[131].target[0].relationship = #source-is-narrower-than-target

* group[0].element[132].code = #a3K3X000006Mik2UAC
* group[0].element[132].display = "Afluria® (IIV3), Seqirus Australia Pty Ltd, Vial, 10 doses [FVP-P-367]"
* group[0].element[132].target[0].code = #IIV3
* group[0].element[132].target[0].display = "Influenza vaccine trivalent (split virion, inactivated)"
* group[0].element[132].target[0].relationship = #source-is-narrower-than-target

* group[0].element[133].code = #a3K3X000006Mik3UAC
* group[0].element[133].display = "Poliomyelitis Vaccine (Inactivated) (IPV), Serum Institute of India, Vial, 10 doses [FVP-P-372]"
* group[0].element[133].target[0].code = #IPV
* group[0].element[133].target[0].display = "Poliomyelitis vaccine (inactivated)"
* group[0].element[133].target[0].relationship = #source-is-narrower-than-target

* group[0].element[134].code = #a3K3X000006Mik4UAC
* group[0].element[134].display = "Measles and Rubella Vaccine (Live) (Attenuated Freeze Dried) (MR), Biological E. Limited, Vial + Ampoule, 5 doses [FVP-P-374]"
* group[0].element[134].target[0].code = #MR
* group[0].element[134].target[0].display = "Measles, rubella combined vaccine (live, attenuated)"
* group[0].element[134].target[0].relationship = #source-is-narrower-than-target

* group[0].element[135].code = #a3K3X000006Mik5UAC
* group[0].element[135].display = "Measles and Rubella Vaccine (Live) (Attenuated Freeze Dried) (MR), Biological E. Limited, Vial + Ampoule, 10 doses [FVP-P-375]"
* group[0].element[135].target[0].code = #MR
* group[0].element[135].target[0].display = "Measles, rubella combined vaccine (live, attenuated)"
* group[0].element[135].target[0].relationship = #source-is-narrower-than-target

* group[0].element[136].code = #a3K3X000006Mik6UAC
* group[0].element[136].display = "TYPHIBEV® (Typhoid), Biological E. Limited, Vial, 5 doses [FVP-P-408]"
* group[0].element[136].target[0].code = #Typhoid
* group[0].element[136].target[0].display = "Typhoid conjugate vaccine"
* group[0].element[136].target[0].relationship = #source-is-narrower-than-target

* group[0].element[137].code = #a3K3X000006Mik7UAC
* group[0].element[137].display = "Withdrawn: Was Prequalified [FVP-P-409]"
* group[0].element[137].noMap = true

* group[0].element[138].code = #a3K3X000006Mik8UAC
* group[0].element[138].display = "Withdrawn: Was Prequalified [FVP-P-410]"
* group[0].element[138].noMap = true

* group[0].element[139].code = #a3K3X000006Mik9UAC
* group[0].element[139].display = "ROTAVAC 5D® (LARV), Bharat Biotech International Limited, Vial, 5 doses [FVP-P-412]"
* group[0].element[139].target[0].code = #LARV
* group[0].element[139].target[0].display = "Rotavirus vaccine (live attenuated) (oral)"
* group[0].element[139].target[0].relationship = #source-is-narrower-than-target

* group[0].element[140].code = #a3K3X000006MikAUAS
* group[0].element[140].display = "Eupolio Inj. (sIPV), LG Chem Ltd (LGC), Vial, 1 dose [FVP-P-415]"
* group[0].element[140].target[0].code = #sIPV
* group[0].element[140].target[0].display = "Poliomyelitis vaccine (inactivated-Sabin)"
* group[0].element[140].target[0].relationship = #source-is-narrower-than-target

* group[0].element[141].code = #a3K3X000006MikBUAS
* group[0].element[141].display = "ROTASIIL-Liquid (LARV), Serum Institute of India, Vial, 2 doses [FVP-P-419]"
* group[0].element[141].target[0].code = #LARV
* group[0].element[141].target[0].display = "Rotavirus vaccine (live attenuated) (oral)"
* group[0].element[141].target[0].relationship = #source-is-narrower-than-target

* group[0].element[142].code = #a3K3X000006MikCUAS
* group[0].element[142].display = "Mosquirix (Malaria), GlaxoSmithKline Biologicals SA, Two vial set (active + active), 2 doses [FVP-P-424]"
* group[0].element[142].target[0].code = #Malaria
* group[0].element[142].target[0].display = "Recombinant malaria vaccine"
* group[0].element[142].target[0].relationship = #source-is-narrower-than-target

* group[0].element[143].code = #a3K3X000006MikDUAS
* group[0].element[143].display = "TT vaccine (TT), PT Bio Farma (Persero), Vial, 10 doses [FVP-P-14]"
* group[0].element[143].target[0].code = #TT
* group[0].element[143].target[0].display = "Tetanus vaccine (adsorbed)"
* group[0].element[143].target[0].relationship = #source-is-narrower-than-target

* group[0].element[144].code = #a3K3X000006MikEUAS
* group[0].element[144].display = "ShanIPV™ (IPV), Sanofi Healthcare India Private Limited, Vial, 10 doses [FVP-P-432]"
* group[0].element[144].target[0].code = #IPV
* group[0].element[144].target[0].display = "Poliomyelitis vaccine (inactivated)"
* group[0].element[144].target[0].relationship = #source-is-narrower-than-target

* group[0].element[145].code = #a3K3X000006MikFUAS
* group[0].element[145].display = "GCFLU Quadrivalent Multi inj. (IIV4), GC Biopharma Corporation, Vial, 10 doses [FVP-P-331]"
* group[0].element[145].target[0].code = #IIV4
* group[0].element[145].target[0].display = "Influenza vaccine quadrivalent (split virion, inactivated)"
* group[0].element[145].target[0].relationship = #source-is-narrower-than-target

* group[0].element[146].code = #a3K3X000006MikGUAS
* group[0].element[146].display = "ShanIPV™ (IPV), Sanofi Healthcare India Private Limited, Vial, 5 doses [FVP-P-333]"
* group[0].element[146].target[0].code = #IPV
* group[0].element[146].target[0].display = "Poliomyelitis vaccine (inactivated)"
* group[0].element[146].target[0].relationship = #source-is-narrower-than-target

* group[0].element[147].code = #a3K3X000006MikHUAS
* group[0].element[147].display = "Bivalent OPV Type 1 and 3 Poliomyelitis Vaccine Live (Oral) (bOPV), Panacea Biotec Ltd., Vial, 20 doses [FVP-P-335]"
* group[0].element[147].target[0].code = #bOPV
* group[0].element[147].target[0].display = "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)"
* group[0].element[147].target[0].relationship = #source-is-narrower-than-target

* group[0].element[148].code = #a3K3X000006MikIUAS
* group[0].element[148].display = "DTwP, Sanofi Healthcare India Private Limited [FVP-P-app8]"
* group[0].element[148].target[0].code = #DTwP
* group[0].element[148].target[0].display = "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)"
* group[0].element[148].target[0].relationship = #source-is-narrower-than-target

* group[0].element[149].code = #a3K3X000006MikJUAS
* group[0].element[149].display = "Heberbiovac HB (HepB), Centro de Ingenieria Genetica y Biotecnologia (CIGB), Vial, 1 dose [FVP-P-23]"
* group[0].element[149].target[0].code = #HepB
* group[0].element[149].target[0].display = "Hepatitis B vaccine (recombinant)"
* group[0].element[149].target[0].relationship = #source-is-narrower-than-target

* group[0].element[150].code = #a3K3X000006MikKUAS
* group[0].element[150].display = "Heberbiovac HB (HepB), Centro de Ingenieria Genetica y Biotecnologia (CIGB), Vial, 10 doses [FVP-P-24]"
* group[0].element[150].target[0].code = #HepB
* group[0].element[150].target[0].display = "Hepatitis B vaccine (recombinant)"
* group[0].element[150].target[0].relationship = #source-is-narrower-than-target

* group[0].element[151].code = #a3K3X000006MikLUAS
* group[0].element[151].display = "MenQuadfi (MenACYW-135), Sanofi Pasteur Inc., Vial, 1 dose [FVP-P-417]"
* group[0].element[151].target[0].code = #MenACYW135
* group[0].element[151].target[0].display = "Meningococcal conjugate vaccine tetravalent ( type A,C, Y, W-135)"
* group[0].element[151].target[0].relationship = #source-is-narrower-than-target

* group[0].element[152].code = #a3K3X000006MikMUAS
* group[0].element[152].display = "Bivalent OPV Type 1 and 3 Poliomyelitis Vaccine Live (Oral) (bOPV), Panacea Biotec Ltd., Vial, 10 doses [FVP-P-422]"
* group[0].element[152].target[0].code = #bOPV
* group[0].element[152].target[0].display = "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)"
* group[0].element[152].target[0].relationship = #source-is-narrower-than-target

* group[0].element[153].code = #a3K3X000006MikNUAS
* group[0].element[153].display = "TT vaccine (TT), PT Bio Farma (Persero), Vial, 20 doses [FVP-P-15]"
* group[0].element[153].target[0].code = #TT
* group[0].element[153].target[0].display = "Tetanus vaccine (adsorbed)"
* group[0].element[153].target[0].relationship = #source-is-narrower-than-target

* group[0].element[154].code = #a3K3X000006MikOUAS
* group[0].element[154].display = "TT vaccine (TT), PT Bio Farma (Persero), Uniject, 1 dose [FVP-P-16]"
* group[0].element[154].target[0].code = #TT
* group[0].element[154].target[0].display = "Tetanus vaccine (adsorbed)"
* group[0].element[154].target[0].relationship = #source-is-narrower-than-target

* group[0].element[155].code = #a3K3X000006MikPUAS
* group[0].element[155].display = "Measles vaccine (M), PT Bio Farma (Persero), Vial + Ampoule, 10 doses [FVP-P-17]"
* group[0].element[155].target[0].code = #M
* group[0].element[155].target[0].display = "Measles vaccine (live, attenuated)"
* group[0].element[155].target[0].relationship = #source-is-narrower-than-target

* group[0].element[156].code = #a3K3X000006MikSUAS
* group[0].element[156].display = "Adsorbed DT Vaccine (DT), PT Bio Farma (Persero), Vial, 10 doses [FVP-P-7]"
* group[0].element[156].target[0].code = #DT
* group[0].element[156].target[0].display = "Diphtheria and tetanus vaccine (adsorbed)"
* group[0].element[156].target[0].relationship = #source-is-narrower-than-target

* group[0].element[157].code = #a3K3X000006MikTUAS
* group[0].element[157].display = "DTP Vaccine (DTwP), PT Bio Farma (Persero), Vial, 10 doses [FVP-P-8]"
* group[0].element[157].target[0].code = #DTwP
* group[0].element[157].target[0].display = "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)"
* group[0].element[157].target[0].relationship = #source-is-narrower-than-target

* group[0].element[158].code = #a3K3X000006MikUUAS
* group[0].element[158].display = "Withdrawn: Was Prequalified [FVP-P-21]"
* group[0].element[158].noMap = true

* group[0].element[159].code = #a3K3X000006MikVUAS
* group[0].element[159].display = "Yellow Fever (YF), Bio-Manguinhos/Fiocruz, Two vial set (active + excipient), 5 doses [FVP-P-19]"
* group[0].element[159].target[0].code = #YF
* group[0].element[159].target[0].display = "Yellow fever vaccine (live attenuated)"
* group[0].element[159].target[0].relationship = #source-is-narrower-than-target

* group[0].element[160].code = #a3K3X000006MikWUAS
* group[0].element[160].display = "Yellow Fever (YF), Bio-Manguinhos/Fiocruz, Two vial set (active + excipient), 10 doses [FVP-P-20]"
* group[0].element[160].target[0].code = #YF
* group[0].element[160].target[0].display = "Yellow fever vaccine (live attenuated)"
* group[0].element[160].target[0].relationship = #source-is-narrower-than-target

* group[0].element[161].code = #a3K3X000006MikXUAS
* group[0].element[161].display = "Fluzone Quadrivalent (IIV4), Sanofi Pasteur Inc., Vial, 1 dose [FVP-P-295]"
* group[0].element[161].target[0].code = #IIV4
* group[0].element[161].target[0].display = "Influenza vaccine quadrivalent (surface antigens, inactivated)"
* group[0].element[161].target[0].relationship = #source-is-narrower-than-target

* group[0].element[162].code = #a3K3X000006MikYUAS
* group[0].element[162].display = "Fluzone Quadrivalent (IIV4), Sanofi Pasteur Inc., Vial, 10 doses [FVP-P-296]"
* group[0].element[162].target[0].code = #IIV4
* group[0].element[162].target[0].display = "Influenza vaccine quadrivalent (surface antigens, inactivated)"
* group[0].element[162].target[0].relationship = #source-is-narrower-than-target

* group[0].element[163].code = #a3K3X000006MikZUAS
* group[0].element[163].display = "Nimenrix (MenACYW-135), Pfizer Europe MA EEIG (Pfizer), Vial + Ampoule, 1 dose [FVP-P-301]"
* group[0].element[163].target[0].code = #MenACYW135
* group[0].element[163].target[0].display = "Meningococcal conjugate vaccine tetravalent ( type A,C, Y, W-135)"
* group[0].element[163].target[0].relationship = #source-is-narrower-than-target

* group[0].element[164].code = #a3K3X000006MikaUAC
* group[0].element[164].display = "GCFLU Quadrivalent inj. (IIV4), GC Biopharma Corporation, Vial, 1 dose [FVP-P-307]"
* group[0].element[164].target[0].code = #IIV4
* group[0].element[164].target[0].display = "Influenza vaccine quadrivalent (split virion, inactivated)"
* group[0].element[164].target[0].relationship = #source-is-narrower-than-target

* group[0].element[165].code = #a3K3X000006MikbUAC
* group[0].element[165].display = "Adacel (DTaP), Sanofi Pasteur Limited, Vial, 1 dose [FVP-P-315]"
* group[0].element[165].target[0].code = #DTaP
* group[0].element[165].target[0].display = "Diphtheria, tetanus and (acellular) pertussis vaccine (adsorbed)"
* group[0].element[165].target[0].relationship = #source-is-narrower-than-target

* group[0].element[166].code = #a3K3X000006MikcUAC
* group[0].element[166].display = "Prevenar 13 Multidose Vial (PCV), Pfizer Europe MA EEIG (Pfizer), Vial, 4 doses [FVP-P-317]"
* group[0].element[166].target[0].code = #PCV
* group[0].element[166].target[0].display = "Pneumococcal conjugate vaccine"
* group[0].element[166].target[0].relationship = #source-is-narrower-than-target

* group[0].element[167].code = #a3K3X000006MikdUAC
* group[0].element[167].display = "Cervarix (HPV), GlaxoSmithKline Biologicals SA, Vial, 1 dose [FVP-P-179]"
* group[0].element[167].target[0].code = #HPV
* group[0].element[167].target[0].display = "Recombinant human papillomavirus virus-like particle vaccine (types 16,18)"
* group[0].element[167].target[0].relationship = #source-is-narrower-than-target

* group[0].element[168].code = #a3K3X000006MikeUAC
* group[0].element[168].display = "Cervarix (HPV), GlaxoSmithKline Biologicals SA, Vial, 2 doses [FVP-P-180]"
* group[0].element[168].target[0].code = #HPV
* group[0].element[168].target[0].display = "Recombinant human papillomavirus virus-like particle vaccine (types 16,18)"
* group[0].element[168].target[0].relationship = #source-is-narrower-than-target

* group[0].element[169].code = #a3K3X000006MikfUAC
* group[0].element[169].display = "Bivalent type 1&3 Oral Poliomyelitis vaccine IP (bOPV1&3) (bOPV), Haffkine Bio Pharmaceutical Corporation Ltd, Vial, 20 doses [FVP-P-200]"
* group[0].element[169].target[0].code = #bOPV
* group[0].element[169].target[0].display = "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)"
* group[0].element[169].target[0].relationship = #source-is-narrower-than-target

* group[0].element[170].code = #a3K3X000006MikgUAC
* group[0].element[170].display = "Diphtheria Tetanus Pertussis Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine (DTwP-HepB+Hib), Serum Institute of India, Vial + Ampoule, 2 doses [FVP-P-203]"
* group[0].element[170].target[0].code = #DTwPHepBHib
* group[0].element[170].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and (+) Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[170].target[0].relationship = #source-is-narrower-than-target

* group[0].element[171].code = #a3K3X000006MikhUAC
* group[0].element[171].display = "Diphtheria Tetanus Pertussis Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine (DTwP-HepB+Hib), Serum Institute of India, Vial + Ampoule, 10 doses [FVP-P-204]"
* group[0].element[171].target[0].code = #DTwPHepBHib
* group[0].element[171].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and (+) Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[171].target[0].relationship = #source-is-narrower-than-target

* group[0].element[172].code = #a3K3X000006MikiUAC
* group[0].element[172].display = "Rubella Vaccine Live Attenuated (R), Serum Institute of India, Vial, 10 doses [FVP-P-152]"
* group[0].element[172].target[0].code = #R
* group[0].element[172].target[0].display = "Rubella vaccine (live, attenuated)"
* group[0].element[172].target[0].relationship = #source-is-narrower-than-target

* group[0].element[173].code = #a3K3X000006MikjUAC
* group[0].element[173].display = "Measles Vaccine Live Attenuated (M), Serum Institute of India, Vial, 2 doses [FVP-P-146]"
* group[0].element[173].target[0].code = #M
* group[0].element[173].target[0].display = "Measles vaccine (live, attenuated)"
* group[0].element[173].target[0].relationship = #source-is-narrower-than-target

* group[0].element[174].code = #a3K3X000006MikkUAC
* group[0].element[174].display = "Measles Vaccine Live Attenuated (M), Serum Institute of India, Vial, 5 doses [FVP-P-147]"
* group[0].element[174].target[0].code = #M
* group[0].element[174].target[0].display = "Measles vaccine (live, attenuated)"
* group[0].element[174].target[0].relationship = #source-is-narrower-than-target

* group[0].element[175].code = #a3K3X000006MiklUAC
* group[0].element[175].display = "Measles Vaccine Live Attenuated (M), Serum Institute of India, Vial, 10 doses [FVP-P-148]"
* group[0].element[175].target[0].code = #M
* group[0].element[175].target[0].display = "Measles vaccine (live, attenuated)"
* group[0].element[175].target[0].relationship = #source-is-narrower-than-target

* group[0].element[176].code = #a3K3X000006MikmUAC
* group[0].element[176].display = "Polio Sabin Mono T1 (mOPV1), GlaxoSmithKline Biologicals SA, Vial, 10 doses [FVP-P-181]"
* group[0].element[176].target[0].code = #mOPV1
* group[0].element[176].target[0].display = "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 1)"
* group[0].element[176].target[0].relationship = #source-is-narrower-than-target

* group[0].element[177].code = #a3K3X000006MiknUAC
* group[0].element[177].display = "Rubella Vaccine Live Attenuated (R), Serum Institute of India, Vial, 1 dose [FVP-P-149]"
* group[0].element[177].target[0].code = #R
* group[0].element[177].target[0].display = "Rubella vaccine (live, attenuated)"
* group[0].element[177].target[0].relationship = #source-is-narrower-than-target

* group[0].element[178].code = #a3K3X000006MikoUAC
* group[0].element[178].display = "Rubella Vaccine Live Attenuated (R), Serum Institute of India, Vial, 2 doses [FVP-P-150]"
* group[0].element[178].target[0].code = #R
* group[0].element[178].target[0].display = "Rubella vaccine (live, attenuated)"
* group[0].element[178].target[0].relationship = #source-is-narrower-than-target

* group[0].element[179].code = #a3K3X000006MikpUAC
* group[0].element[179].display = "Rubella Vaccine Live Attenuated (R), Serum Institute of India, Vial, 5 doses [FVP-P-151]"
* group[0].element[179].target[0].code = #R
* group[0].element[179].target[0].display = "Rubella vaccine (live, attenuated)"
* group[0].element[179].target[0].relationship = #source-is-narrower-than-target

* group[0].element[180].code = #a3K3X000006MikqUAC
* group[0].element[180].display = "Polio Sabin Mono T1 (mOPV1), GlaxoSmithKline Biologicals SA, Vial, 20 doses [FVP-P-182]"
* group[0].element[180].target[0].code = #mOPV1
* group[0].element[180].target[0].display = "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 1)"
* group[0].element[180].target[0].relationship = #source-is-narrower-than-target

* group[0].element[181].code = #a3K3X000006MikrUAC
* group[0].element[181].display = "Polio Sabin One and Three (bOPV), GlaxoSmithKline Biologicals SA, Vial, 10 doses [FVP-P-183]"
* group[0].element[181].target[0].code = #bOPV
* group[0].element[181].target[0].display = "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)"
* group[0].element[181].target[0].relationship = #source-is-narrower-than-target

* group[0].element[182].code = #a3K3X000006MiksUAC
* group[0].element[182].display = "Polio Sabin One and Three (bOPV), GlaxoSmithKline Biologicals SA, Vial, 20 doses [FVP-P-184]"
* group[0].element[182].target[0].code = #bOPV
* group[0].element[182].target[0].display = "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)"
* group[0].element[182].target[0].relationship = #source-is-narrower-than-target

* group[0].element[183].code = #a3K3X000006MiktUAC
* group[0].element[183].display = "Haemophilus influenzae type b Conjugate Vaccine (Hib), Serum Institute of India, Vial, 1 dose [FVP-P-185]"
* group[0].element[183].target[0].code = #Hib
* group[0].element[183].target[0].display = "Haemophilus influenzae type b conjugate vaccine"
* group[0].element[183].target[0].relationship = #source-is-narrower-than-target

* group[0].element[184].code = #a3K3X000006MikuUAC
* group[0].element[184].display = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BEtt. (TT), Biological E. Limited, Vial, 20 doses [FVP-P-190]"
* group[0].element[184].target[0].code = #TT
* group[0].element[184].target[0].display = "Tetanus vaccine (adsorbed)"
* group[0].element[184].target[0].relationship = #source-is-narrower-than-target

* group[0].element[185].code = #a3K3X000006MikvUAC
* group[0].element[185].display = "Synflorix (PCV), GlaxoSmithKline Biologicals SA, Vial, 1 dose [FVP-P-191]"
* group[0].element[185].target[0].code = #PCV
* group[0].element[185].target[0].display = "Pneumococcal conjugate vaccine"
* group[0].element[185].target[0].relationship = #source-is-narrower-than-target

* group[0].element[186].code = #a3K3X000006MikwUAC
* group[0].element[186].display = "Quimi-Hib (Hib), Centro de Ingenieria Genetica y Biotecnologia (CIGB), Vial, 1 dose [FVP-P-197]"
* group[0].element[186].target[0].code = #Hib
* group[0].element[186].target[0].display = "Haemophilus influenzae type b conjugate vaccine"
* group[0].element[186].target[0].relationship = #source-is-narrower-than-target

* group[0].element[187].code = #a3K3X000006MikxUAC
* group[0].element[187].display = "Synflorix (PCV), GlaxoSmithKline Biologicals SA, Vial, 2 doses [FVP-P-198]"
* group[0].element[187].target[0].code = #PCV
* group[0].element[187].target[0].display = "Pneumococcal conjugate vaccine"
* group[0].element[187].target[0].relationship = #source-is-narrower-than-target

* group[0].element[188].code = #a3K3X000006MikyUAC
* group[0].element[188].display = "Withdrawn: Was Accepted [FVP-P-162]"
* group[0].element[188].noMap = true

* group[0].element[189].code = #a3K3X000006MikzUAC
* group[0].element[189].display = "Withdrawn: Was Prequalified [FVP-P-163]"
* group[0].element[189].noMap = true

* group[0].element[190].code = #a3K3X000006Mil0UAC
* group[0].element[190].display = "Rotateq (LARV), Merck Sharp & Dohme LLC, Plastic tube, 1 dose [FVP-P-166]"
* group[0].element[190].target[0].code = #LARV
* group[0].element[190].target[0].display = "Rotavirus vaccine (live attenuated) (oral)"
* group[0].element[190].target[0].relationship = #source-is-narrower-than-target

* group[0].element[191].code = #a3K3X000006Mil1UAC
* group[0].element[191].display = "rHA M-M-R II (MMR), Merck Sharp & Dohme LLC, Vial, 1 dose [FVP-P-167]"
* group[0].element[191].target[0].code = #MMR
* group[0].element[191].target[0].display = "Measles, mumps, rubella combined vaccine (live, attenuated)"
* group[0].element[191].target[0].relationship = #source-is-narrower-than-target

* group[0].element[192].code = #a3K3X000006Mil2UAC
* group[0].element[192].display = "Rotarix (LARV), GlaxoSmithKline Biologicals SA, Applicator, 1 dose [FVP-P-173]"
* group[0].element[192].target[0].code = #LARV
* group[0].element[192].target[0].display = "Rotavirus vaccine (live attenuated) (oral)"
* group[0].element[192].target[0].relationship = #source-is-narrower-than-target

* group[0].element[193].code = #a3K3X000006Mil3UAC
* group[0].element[193].display = "Gardasil (HPV), Merck Sharp & Dohme LLC, Vial, 1 dose [FVP-P-178]"
* group[0].element[193].target[0].code = #HPV
* group[0].element[193].target[0].display = "Recombinant human papillomavirus virus-like particle vaccine (types 6,11,16,18)"
* group[0].element[193].target[0].relationship = #source-is-narrower-than-target

* group[0].element[194].code = #a3K3X000006Mil4UAC
* group[0].element[194].display = "Diphtheria Tetanus Pertussis Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine (DTwP-HepB+Hib), Serum Institute of India, Vial + Ampoule, 1 dose [FVP-P-194]"
* group[0].element[194].target[0].code = #DTwPHepBHib
* group[0].element[194].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and (+) Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[194].target[0].relationship = #source-is-narrower-than-target

* group[0].element[195].code = #a3K3X000006Mil5UAC
* group[0].element[195].display = "Bivalent Oral Poliomyelitis Vaccine Type 1&3 (bOPV 1&3) (bOPV), PT Bio Farma (Persero), Vial, 20 doses [FVP-P-195]"
* group[0].element[195].target[0].code = #bOPV
* group[0].element[195].target[0].display = "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)"
* group[0].element[195].target[0].relationship = #source-is-narrower-than-target

* group[0].element[196].code = #a3K3X000006Mil6UAC
* group[0].element[196].display = "Meningococcal A Conjugate MenAfriVac (MenA), Serum Institute of India, Vial + Ampoule, 10 doses [FVP-P-196]"
* group[0].element[196].target[0].code = #MenA
* group[0].element[196].target[0].display = "Group A meningococcal conjugate vaccine"
* group[0].element[196].target[0].relationship = #source-is-narrower-than-target

* group[0].element[197].code = #a3K3X000006Mil7UAC
* group[0].element[197].display = "Withdrawn: Was Prequalified [FVP-P-257]"
* group[0].element[197].noMap = true

* group[0].element[198].code = #a3K3X000006Mil8UAC
* group[0].element[198].display = "NASOVAC Influenza Vaccine Live Attenuated (Human) Freeze-Dried (IIVPandemic), Serum Institute of India, Vial + Ampoule, 5 doses [FVP-P-258]"
* group[0].element[198].target[0].code = #IIVPandemic
* group[0].element[198].target[0].display = "Human pandemic influenza vaccine"
* group[0].element[198].target[0].relationship = #source-is-narrower-than-target

* group[0].element[199].code = #a3K3X000006Mil9UAC
* group[0].element[199].display = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BEtt. (TT), Biological E. Limited, Vial, 1 dose [FVP-P-259]"
* group[0].element[199].target[0].code = #TT
* group[0].element[199].target[0].display = "Tetanus vaccine (adsorbed)"
* group[0].element[199].target[0].relationship = #source-is-narrower-than-target

* group[0].element[200].code = #a3K3X000006MilAUAS
* group[0].element[200].display = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BEtt. (TT), Biological E. Limited, Vial, 10 doses [FVP-P-260]"
* group[0].element[200].target[0].code = #TT
* group[0].element[200].target[0].display = "Tetanus vaccine (adsorbed)"
* group[0].element[200].target[0].relationship = #source-is-narrower-than-target

* group[0].element[201].code = #a3K3X000006MilBUAS
* group[0].element[201].display = "JEEV® (6µg) (JE), Biological E. Limited, Vial, 1 dose [FVP-P-263]"
* group[0].element[201].target[0].code = #JE
* group[0].element[201].target[0].display = "Japanese encephalitis vaccine (inactivated) for human use"
* group[0].element[201].target[0].relationship = #source-is-narrower-than-target

* group[0].element[202].code = #a3K3X000006MilCUAS
* group[0].element[202].display = "Havrix 1440 Adult (HepA), GlaxoSmithKline Biologicals SA, Vial, 1 dose [FVP-P-264]"
* group[0].element[202].target[0].code = #HepA
* group[0].element[202].target[0].display = "Hepatitis A vaccine (inactivated)"
* group[0].element[202].target[0].relationship = #source-is-narrower-than-target

* group[0].element[203].code = #a3K3X000006MilDUAS
* group[0].element[203].display = "Havrix 720 Junior (HepA), GlaxoSmithKline Biologicals SA, Vial, 1 dose [FVP-P-265]"
* group[0].element[203].target[0].code = #HepA
* group[0].element[203].target[0].display = "Hepatitis A vaccine (inactivated)"
* group[0].element[203].target[0].relationship = #source-is-narrower-than-target

* group[0].element[204].code = #a3K3X000006MilEUAS
* group[0].element[204].display = "Boostrix (DTaP), GlaxoSmithKline Biologicals SA, Vial, 1 dose [FVP-P-266]"
* group[0].element[204].target[0].code = #DTaP
* group[0].element[204].target[0].display = "Diphtheria, tetanus and (acellular) pertussis vaccine (adsorbed)"
* group[0].element[204].target[0].relationship = #source-is-narrower-than-target

* group[0].element[205].code = #a3K3X000006MilFUAS
* group[0].element[205].display = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid). (DTwP-HepB-Hib), Biological E. Limited, Vial, 1 dose [FVP-P-274]"
* group[0].element[205].target[0].code = #DTwPHepBHib
* group[0].element[205].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[205].target[0].relationship = #source-is-narrower-than-target

* group[0].element[206].code = #a3K3X000006MilGUAS
* group[0].element[206].display = "Poliomyelitis Vaccines (Vero Cell), Inactivated, Sabin Strains (sIPV), Beijing Institute of Biological Products Co., Ltd., Vial, 1 dose [FVP-P-369]"
* group[0].element[206].target[0].code = #sIPV
* group[0].element[206].target[0].display = "Poliomyelitis vaccine (inactivated-Sabin)"
* group[0].element[206].target[0].relationship = #source-is-narrower-than-target

* group[0].element[207].code = #a3K3X000006MilHUAS
* group[0].element[207].display = "Picovax (IPV), AJ Vaccines A/S, Vial, 5 doses [FVP-P-371]"
* group[0].element[207].target[0].code = #IPV
* group[0].element[207].target[0].display = "Poliomyelitis vaccine (inactivated)"
* group[0].element[207].target[0].relationship = #source-is-narrower-than-target

* group[0].element[208].code = #a3K3X000006MilLUAS
* group[0].element[208].display = "Poliomyelitis Vaccine (Vero Cell) Inactivated Sabin Strains (sIPV), Sinovac Biotech Co. Ltd, Vial, 1 dose [FVP-P-387]"
* group[0].element[208].target[0].code = #sIPV
* group[0].element[208].target[0].display = "Poliomyelitis vaccine (inactivated-Sabin)"
* group[0].element[208].target[0].relationship = #source-is-narrower-than-target

* group[0].element[209].code = #a3K3X000006MilMUAS
* group[0].element[209].display = "Cecolin® (HPV), Xiamen Innovax Biotech Co. Ltd., Vial, 1 dose [FVP-P-389]"
* group[0].element[209].target[0].code = #HPV
* group[0].element[209].target[0].display = "Recombinant human papillomavirus virus-like particle vaccine (types 16,18)"
* group[0].element[209].target[0].relationship = #source-is-narrower-than-target

* group[0].element[210].code = #a3K3X000006MilNUAS
* group[0].element[210].display = "Green Flu-S (IIVPandemic), GC Biopharma Corporation, Vial, 1 dose [FVP-P-208]"
* group[0].element[210].target[0].code = #IIVPandemic
* group[0].element[210].target[0].display = "Human pandemic influenza vaccine"
* group[0].element[210].target[0].relationship = #source-is-narrower-than-target

* group[0].element[211].code = #a3K3X000006MilOUAS
* group[0].element[211].display = "Influenza A (H1N1) 2009 monovalent vaccine (IIVPandemic), Sanofi Pasteur Inc., Vial, 1 dose [FVP-P-214]"
* group[0].element[211].target[0].code = #IIVPandemic
* group[0].element[211].target[0].display = "Human pandemic influenza vaccine"
* group[0].element[211].target[0].relationship = #source-is-narrower-than-target

* group[0].element[212].code = #a3K3X000006MilPUAS
* group[0].element[212].display = "Influenza A (H1N1) 2009 monovalent vaccine (IIVPandemic), Sanofi Pasteur Inc., Vial, 10 doses [FVP-P-215]"
* group[0].element[212].target[0].code = #IIVPandemic
* group[0].element[212].target[0].display = "Human pandemic influenza vaccine"
* group[0].element[212].target[0].relationship = #source-is-narrower-than-target

* group[0].element[213].code = #a3K3X000006MilQUAS
* group[0].element[213].display = "Poliomyelitis vaccine (IPV), Bilthoven Biologicals B.V., Vial, 1 dose [FVP-P-230]"
* group[0].element[213].target[0].code = #IPV
* group[0].element[213].target[0].display = "Poliomyelitis vaccine (inactivated)"
* group[0].element[213].target[0].relationship = #source-is-narrower-than-target

* group[0].element[214].code = #a3K3X000006MilRUAS
* group[0].element[214].display = "GC FLU  inj (IIV3), GC Biopharma Corporation, Vial, 1 dose [FVP-P-233]"
* group[0].element[214].target[0].code = #IIV3
* group[0].element[214].target[0].display = "Influenza vaccine trivalent (split virion, inactivated)"
* group[0].element[214].target[0].relationship = #source-is-narrower-than-target

* group[0].element[215].code = #a3K3X000006MilSUAS
* group[0].element[215].display = "GC FLU Multi inj. (IIV3), GC Biopharma Corporation, Vial, 10 doses [FVP-P-256]"
* group[0].element[215].target[0].code = #IIV3
* group[0].element[215].target[0].display = "Influenza vaccine trivalent (split virion, inactivated)"
* group[0].element[215].target[0].relationship = #source-is-narrower-than-target

* group[0].element[216].code = #a3K3X000006MilTUAS
* group[0].element[216].display = "Menveo (MenACYW-135), GlaxoSmithKline Vaccines S.r.l., Two vial set (active + active), 1 dose [FVP-P-267]"
* group[0].element[216].target[0].code = #MenACYW135
* group[0].element[216].target[0].display = "Meningococcal conjugate vaccine tetravalent ( type A,C, Y, W-135)"
* group[0].element[216].target[0].relationship = #source-is-narrower-than-target

* group[0].element[217].code = #a3K3X000006MilUUAS
* group[0].element[217].display = "Menactra (MenACYW-135), Sanofi Pasteur Inc., Vial, 1 dose [FVP-P-269]"
* group[0].element[217].target[0].code = #MenACYW135
* group[0].element[217].target[0].display = "Meningococcal conjugate vaccine tetravalent ( type A,C, Y, W-135)"
* group[0].element[217].target[0].relationship = #source-is-narrower-than-target

* group[0].element[218].code = #a3K3X000006MilVUAS
* group[0].element[218].display = "Easyfive-TT (DTwP-HepB-Hib), Panacea Biotec Ltd., Vial, 1 dose [FVP-P-270]"
* group[0].element[218].target[0].code = #DTwPHepBHib
* group[0].element[218].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[218].target[0].relationship = #source-is-narrower-than-target

* group[0].element[219].code = #a3K3X000006MilWUAS
* group[0].element[219].display = "IMOJEV MD (JE), GPO-MBP Co.  Ltd. (GPO-MBP), Two vial set (active + excipient), 4 doses [FVP-P-276]"
* group[0].element[219].target[0].code = #JE
* group[0].element[219].target[0].display = "Japanese encephalitis vaccine (live, attenuated) for human use"
* group[0].element[219].target[0].relationship = #source-is-narrower-than-target

* group[0].element[220].code = #a3K3X000006MilXUAS
* group[0].element[220].display = "Withdrawn: Was Prequalified [FVP-P-249]"
* group[0].element[220].noMap = true

* group[0].element[221].code = #a3K3X000006MilYUAS
* group[0].element[221].display = "Easyfive-TT (DTwP-HepB-Hib), Panacea Biotec Ltd., Vial, 10 doses [FVP-P-87]"
* group[0].element[221].target[0].code = #DTwPHepBHib
* group[0].element[221].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[221].target[0].relationship = #source-is-narrower-than-target

* group[0].element[222].code = #a3K3X000006MilZUAS
* group[0].element[222].display = "Withdrawn: Was Prequalified [FVP-P-92]"
* group[0].element[222].noMap = true

* group[0].element[223].code = #a3K3X000006MilaUAC
* group[0].element[223].display = "Engerix (HepB), GlaxoSmithKline Biologicals SA, Vial, 1 dose [FVP-P-38]"
* group[0].element[223].target[0].code = #HepB
* group[0].element[223].target[0].display = "Hepatitis B vaccine (recombinant)"
* group[0].element[223].target[0].relationship = #source-is-narrower-than-target

* group[0].element[224].code = #a3K3X000006MilbUAC
* group[0].element[224].display = "Engerix (HepB), GlaxoSmithKline Biologicals SA, Vial, 10 doses [FVP-P-39]"
* group[0].element[224].target[0].code = #HepB
* group[0].element[224].target[0].display = "Hepatitis B vaccine (recombinant)"
* group[0].element[224].target[0].relationship = #source-is-narrower-than-target

* group[0].element[225].code = #a3K3X000006MilcUAC
* group[0].element[225].display = "Engerix (HepB), GlaxoSmithKline Biologicals SA, Vial, 20 doses [FVP-P-40]"
* group[0].element[225].target[0].code = #HepB
* group[0].element[225].target[0].display = "Hepatitis B vaccine (recombinant)"
* group[0].element[225].target[0].relationship = #source-is-narrower-than-target

* group[0].element[226].code = #a3K3X000006MildUAC
* group[0].element[226].display = "Sinsavac (YF), Federal State Budgetary Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products»  Russian Academy of Sciences, Vial, 10 doses [FVP-P-436]"
* group[0].element[226].target[0].code = #YF
* group[0].element[226].target[0].display = "Yellow fever vaccine (live attenuated)"
* group[0].element[226].target[0].relationship = #source-is-narrower-than-target

* group[0].element[227].code = #a3K3X000006MileUAC
* group[0].element[227].display = "Monovalent type 1 Oral Poliomyelitis vaccine IP (mOPV1) (mOPV1), Haffkine Bio Pharmaceutical Corporation Ltd, Vial, 20 doses [FVP-P-186]"
* group[0].element[227].target[0].code = #mOPV1
* group[0].element[227].target[0].display = "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 1)"
* group[0].element[227].target[0].relationship = #source-is-narrower-than-target

* group[0].element[228].code = #a3K3X000006MilfUAC
* group[0].element[228].display = "Monovalent Oral Poliomyelitis Vaccine Type 1 (mOPV1) (mOPV1), PT Bio Farma (Persero), Vial, 20 doses [FVP-P-189]"
* group[0].element[228].target[0].code = #mOPV1
* group[0].element[228].target[0].display = "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 1)"
* group[0].element[228].target[0].relationship = #source-is-narrower-than-target

* group[0].element[229].code = #a3K3X000006MilgUAC
* group[0].element[229].display = "BCG Vaccine AJV (BCG), AJ Vaccines A/S, Two vial set (active + excipient), 10 doses [FVP-P-164]"
* group[0].element[229].target[0].code = #BCG
* group[0].element[229].target[0].display = "BCG"
* group[0].element[229].target[0].relationship = #source-is-narrower-than-target

* group[0].element[230].code = #a3K3X000006MilhUAC
* group[0].element[230].display = "none (YF), Federal State Budgetary Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products»  Russian Academy of Sciences, Ampoule, 2 doses [FVP-P-175]"
* group[0].element[230].target[0].code = #YF
* group[0].element[230].target[0].display = "Yellow fever vaccine (live attenuated)"
* group[0].element[230].target[0].relationship = #source-is-narrower-than-target

* group[0].element[231].code = #a3K3X000006MiliUAC
* group[0].element[231].display = "none (YF), Federal State Budgetary Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products»  Russian Academy of Sciences, Ampoule, 5 doses [FVP-P-176]"
* group[0].element[231].target[0].code = #YF
* group[0].element[231].target[0].display = "Yellow fever vaccine (live attenuated)"
* group[0].element[231].target[0].relationship = #source-is-narrower-than-target

* group[0].element[232].code = #a3K3X000006MiljUAC
* group[0].element[232].display = "none (YF), Federal State Budgetary Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products»  Russian Academy of Sciences, Ampoule, 10 doses [FVP-P-177]"
* group[0].element[232].target[0].code = #YF
* group[0].element[232].target[0].display = "Yellow fever vaccine (live attenuated)"
* group[0].element[232].target[0].relationship = #source-is-narrower-than-target

* group[0].element[233].code = #a3K3X000006MilkUAC
* group[0].element[233].display = "Polio Sabin Mono Two (oral) (mOPV2), GlaxoSmithKline Biologicals SA, Vial, 20 doses [FVP-P-234]"
* group[0].element[233].target[0].code = #mOPV2
* group[0].element[233].target[0].display = "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 2)"
* group[0].element[233].target[0].relationship = #source-is-narrower-than-target

* group[0].element[234].code = #a3K3X000006MillUAC
* group[0].element[234].display = "Polio Sabin Mono Two (oral) (mOPV2), GlaxoSmithKline Biologicals SA, Vial, 10 doses [FVP-P-235]"
* group[0].element[234].target[0].code = #mOPV2
* group[0].element[234].target[0].display = "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 2)"
* group[0].element[234].target[0].relationship = #source-is-narrower-than-target

* group[0].element[235].code = #a3K3X000006MilmUAC
* group[0].element[235].display = "Withdrawn: Was Prequalified [FVP-P-237]"
* group[0].element[235].noMap = true

* group[0].element[236].code = #a3K3X000006MilnUAC
* group[0].element[236].display = "Vaxigrip (IIV3), Sanofi Pasteur SA, Vial, 10 doses [FVP-P-238]"
* group[0].element[236].target[0].code = #IIV3
* group[0].element[236].target[0].display = "Influenza vaccine trivalent (split virion, inactivated)"
* group[0].element[236].target[0].relationship = #source-is-narrower-than-target

* group[0].element[237].code = #a3K3X000006MiloUAC
* group[0].element[237].display = "Measles vaccine (M), PT Bio Farma (Persero), Vial, 20 doses [FVP-P-252]"
* group[0].element[237].target[0].code = #M
* group[0].element[237].target[0].display = "Measles vaccine (live, attenuated)"
* group[0].element[237].target[0].relationship = #source-is-narrower-than-target

* group[0].element[238].code = #a3K3X000006MilpUAC
* group[0].element[238].display = "Poliomyelitis Vaccine (Oral) Bivalent types 1 and 3 (bOPV), Serum Institute of India, Vial, 20 doses [FVP-P-253]"
* group[0].element[238].target[0].code = #bOPV
* group[0].element[238].target[0].display = "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)"
* group[0].element[238].target[0].relationship = #source-is-narrower-than-target

* group[0].element[239].code = #a3K3X000006MilqUAC
* group[0].element[239].display = "Diphtheria Tetanus Pertussis Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed (DTwP-HepB-Hib), Serum Institute of India, Vial, 1 dose [FVP-P-223]"
* group[0].element[239].target[0].code = #DTwPHepBHib
* group[0].element[239].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[239].target[0].relationship = #source-is-narrower-than-target

* group[0].element[240].code = #a3K3X000006MilrUAC
* group[0].element[240].display = "Diphtheria Tetanus Pertussis Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed (DTwP-HepB-Hib), Serum Institute of India, Vial, 2 doses [FVP-P-224]"
* group[0].element[240].target[0].code = #DTwPHepBHib
* group[0].element[240].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[240].target[0].relationship = #source-is-narrower-than-target

* group[0].element[241].code = #a3K3X000006MilsUAC
* group[0].element[241].display = "Diphtheria Tetanus Pertussis Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed (DTwP-HepB-Hib), Serum Institute of India, Vial, 10 doses [FVP-P-225]"
* group[0].element[241].target[0].code = #DTwPHepBHib
* group[0].element[241].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[241].target[0].relationship = #source-is-narrower-than-target

* group[0].element[242].code = #a3K3X000006MiltUAC
* group[0].element[242].display = "Polio Sabin Mono Three (oral) (mOPV3), GlaxoSmithKline Biologicals SA, Vial, 10 doses [FVP-P-227]"
* group[0].element[242].target[0].code = #mOPV3
* group[0].element[242].target[0].display = "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 3)"
* group[0].element[242].target[0].relationship = #source-is-narrower-than-target

* group[0].element[243].code = #a3K3X000006MiluUAC
* group[0].element[243].display = "Polio Sabin Mono Three (oral) (mOPV3), GlaxoSmithKline Biologicals SA, Vial, 20 doses [FVP-P-228]"
* group[0].element[243].target[0].code = #mOPV3
* group[0].element[243].target[0].display = "Poliomyelitis vaccines (monovalent oral, live, attenuated,  type 3)"
* group[0].element[243].target[0].relationship = #source-is-narrower-than-target

* group[0].element[244].code = #a3K3X000006MilvUAC
* group[0].element[244].display = "BIOPOLIO B1/3 (bOPV), Bharat Biotech International Limited, Vial, 20 doses [FVP-P-244]"
* group[0].element[244].target[0].code = #bOPV
* group[0].element[244].target[0].display = "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)"
* group[0].element[244].target[0].relationship = #source-is-narrower-than-target

* group[0].element[245].code = #a3K3X000006MilwUAC
* group[0].element[245].display = "none (dT), PT Bio Farma (Persero), Vial, 10 doses [FVP-P-245]"
* group[0].element[245].target[0].code = #dT
* group[0].element[245].target[0].display = "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)"
* group[0].element[245].target[0].relationship = #source-is-narrower-than-target

* group[0].element[246].code = #a3K3X000006MilxUAC
* group[0].element[246].display = "Withdrawn: Was Prequalified [FVP-P-246]"
* group[0].element[246].noMap = true

* group[0].element[247].code = #a3K3X000006MilyUAC
* group[0].element[247].display = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Reconstituted). (DTwP-HepB+Hib), Biological E. Limited, Two vial set (active + active), 1 dose [FVP-P-247]"
* group[0].element[247].target[0].code = #DTwPHepBHib
* group[0].element[247].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and (+) Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[247].target[0].relationship = #source-is-narrower-than-target

* group[0].element[248].code = #a3K3X000006MilzUAC
* group[0].element[248].display = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Reconstituted). (DTwP-HepB+Hib), Biological E. Limited, Two vial set (active + active), 10 doses [FVP-P-248]"
* group[0].element[248].target[0].code = #DTwPHepBHib
* group[0].element[248].target[0].display = "Diphtheria, tetanus, pertussis, hepatitis B and (+) Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[248].target[0].relationship = #source-is-narrower-than-target

* group[0].element[249].code = #a3K3X000006Mim0UAC
* group[0].element[249].display = "Priorix (MMR), GlaxoSmithKline Biologicals SA, Vial, 2 doses [FVP-P-251]"
* group[0].element[249].target[0].code = #MMR
* group[0].element[249].target[0].display = "Measles, mumps, rubella combined vaccine (live, attenuated)"
* group[0].element[249].target[0].relationship = #source-is-narrower-than-target

* group[0].element[250].code = #a3K3X000006Mim1UAC
* group[0].element[250].display = "Influenza A (H1N1) 2009 monovalent vaccine (IIVPandemic), MedImmune, Sprayer, 1 dose [FVP-P-209]"
* group[0].element[250].target[0].code = #IIVPandemic
* group[0].element[250].target[0].display = "Human pandemic influenza vaccine"
* group[0].element[250].target[0].relationship = #source-is-narrower-than-target

* group[0].element[251].code = #a3K3X000006Mim2UAC
* group[0].element[251].display = "Celtura (IIVPandemic), Seqirus GmbH, Vial, 17 doses [FVP-P-210]"
* group[0].element[251].target[0].code = #IIVPandemic
* group[0].element[251].target[0].display = "Human pandemic influenza vaccine"
* group[0].element[251].target[0].relationship = #source-is-narrower-than-target

* group[0].element[252].code = #a3K3X000006Mim3UAC
* group[0].element[252].display = "Panenza (IIVPandemic), Sanofi Pasteur SA, Vial, 10 doses [FVP-P-213]"
* group[0].element[252].target[0].code = #IIVPandemic
* group[0].element[252].target[0].display = "Human pandemic influenza vaccine"
* group[0].element[252].target[0].relationship = #source-is-narrower-than-target

* group[0].element[253].code = #a3K3X000006Mim4UAC
* group[0].element[253].display = "Diphtheria Tetanus Pertussis and Haemophilus influenzae type b Conjugate Vaccine (DTwP+Hib), Serum Institute of India, Vial + Ampoule, 1 dose [FVP-P-216]"
* group[0].element[253].target[0].code = #DTwPHib
* group[0].element[253].target[0].display = "Diphtheria, tetanus, pertussis and (+) Haemophilus influenzae type b conjugate vaccine (adsorbed)"
* group[0].element[253].target[0].relationship = #source-is-narrower-than-target

* group[0].element[254].code = #a3K3X000006Mim5UAC
* group[0].element[254].display = "Rotarix (LARV), GlaxoSmithKline Biologicals SA, Plastic tube, 5 doses [FVP-P-363]"
* group[0].element[254].target[0].code = #LARV
* group[0].element[254].target[0].display = "Rotavirus vaccine (live attenuated) (oral)"
* group[0].element[254].target[0].relationship = #source-is-narrower-than-target

* group[0].element[255].code = #a3K3X000006Mim6UAC
* group[0].element[255].display = "HEALIVE (HepA), Sinovac Biotech Co. Ltd, Vial, 1 dose [FVP-P-344]"
* group[0].element[255].target[0].code = #HepA
* group[0].element[255].target[0].display = "Hepatitis A vaccine (inactivated)"
* group[0].element[255].target[0].relationship = #source-is-narrower-than-target

* group[0].element[256].code = #a3KNN0000001VJV2A2
* group[0].element[256].display = "Euvichol-S (OCV), EuBiologics Co.  Ltd., Plastic tube, 1 dose [FVP-P-456]"
* group[0].element[256].target[0].code = #OCV
* group[0].element[256].target[0].display = "Inactivated oral cholera vaccine"
* group[0].element[256].target[0].relationship = #source-is-narrower-than-target

* group[0].element[257].code = #a3KNN0000001VJW2A2
* group[0].element[257].display = "Influeza Vaccine (Split Virion), Inactivated (IIV3), Vial, 1 dose [FVP-P-455]"
* group[0].element[257].target[0].code = #IIV3
* group[0].element[257].target[0].display = "Influenza vaccine trivalent (split virion, inactivated)"
* group[0].element[257].target[0].relationship = #source-is-narrower-than-target

* group[0].element[258].code = #a3KNN0000001VJX2A2
* group[0].element[258].display = "BIRMEVAX (C-19), HIPRA HUMAN HEALTH, S.L.U, Vial, 1 dose [FVP-P-453]"
* group[0].element[258].target[0].code = #C19
* group[0].element[258].target[0].display = "Covid-19, protein subunit"
* group[0].element[258].target[0].relationship = #source-is-narrower-than-target

* group[0].element[259].code = #a3KNN0000001VJY2A2
* group[0].element[259].display = "ROTASIIL-Liquid (LARV), Serum Institute of India, Vial, 1 dose [FVP-P-452]"
* group[0].element[259].target[0].code = #LARV
* group[0].element[259].target[0].display = "Rotavirus vaccine (live attenuated) (oral)"
* group[0].element[259].target[0].relationship = #source-is-narrower-than-target

* group[0].element[260].code = #a3KNN0000001VJZ2A2
* group[0].element[260].display = "MenFive (MenACYWX), Serum Institute of India, Vial, 5 doses [FVP-P-451]"
* group[0].element[260].target[0].code = #MenACYWX
* group[0].element[260].target[0].display = "Meningococcal polysacharide conjugate vaccine (type A,C,Y,W,X)"
* group[0].element[260].target[0].relationship = #source-is-narrower-than-target

* group[0].element[261].code = #a3KNN0000001VJa2AM
* group[0].element[261].display = "PNEUMOSIL® (PCV), Serum Institute of India, Vial, 10 doses [FVP-P-463]"
* group[0].element[261].target[0].code = #PCV
* group[0].element[261].target[0].display = "Pneumococcal conjugate vaccine"
* group[0].element[261].target[0].relationship = #source-is-narrower-than-target

* group[0].element[262].code = #a3KNN0000001VJb2AM
* group[0].element[262].display = "Under Screening [FVP-P-460]"
* group[0].element[262].noMap = true

* group[0].element[263].code = #a3KNN0000001VJc2AM
* group[0].element[263].display = "Decision Phase [FVP-P-464]"
* group[0].element[263].noMap = true

* group[0].element[264].code = #a3KNN0000001VJd2AM
* group[0].element[264].display = "Rejected: Screening [FVP-P-445]"
* group[0].element[264].noMap = true

* group[0].element[265].code = #a3KNN0000001VJe2AM
* group[0].element[265].display = "BARYCELA inj. (VAR), GC Biopharma Corporation, Vial, 1 dose [FVP-P-406]"
* group[0].element[265].target[0].code = #VAR
* group[0].element[265].target[0].display = "Varicella"
* group[0].element[265].target[0].relationship = #source-is-narrower-than-target

* group[0].element[266].code = #a3KNN0000001VJf2AM
* group[0].element[266].display = "Withdrawn: Was Prequalified [FVP-P-423]"
* group[0].element[266].noMap = true

* group[0].element[267].code = #a3KNN0000001VL72AM
* group[0].element[267].display = "Novel Oral Poliomyelitis Vaccine Type 2 (nOPV2) (nOPV2), PT Bio Farma (Persero), Vial, 50 doses [FVP-P-404]"
* group[0].element[267].target[0].code = #nOPV2
* group[0].element[267].target[0].display = "Poliomyelitis vaccines (novel, oral, live, attenuated,  type 2)"
* group[0].element[267].target[0].relationship = #source-is-narrower-than-target

* group[0].element[268].code = #a3KNN0000001VL82AM
* group[0].element[268].display = "MenFive (MenACYWX), Serum Institute of India, Vial, 1 dose [FVP-P-427]"
* group[0].element[268].target[0].code = #MenACYWX
* group[0].element[268].target[0].display = "Meningococcal polysacharide conjugate vaccine (type A,C,Y,W,X)"
* group[0].element[268].target[0].relationship = #source-is-narrower-than-target

* group[0].element[269].code = #a3KNN0000001VL92AM
* group[0].element[269].display = "None (VAR), Sinovac Vaccine Technology Co.  Ltd. (Sinovac (Dalian), Vial, 1 dose [FVP-P-403]"
* group[0].element[269].target[0].code = #VAR
* group[0].element[269].target[0].display = "Varicella"
* group[0].element[269].target[0].relationship = #source-is-narrower-than-target

* group[0].element[270].code = #a3KNN0000001VLA2A2
* group[0].element[270].display = "Under Assessment [FVP-P-426]"
* group[0].element[270].noMap = true

* group[0].element[271].code = #a3KVj000000Wv1ZMAS
* group[0].element[271].display = "Shanchol (OCV), Shantha Biologics Private Limited, Vial, 1 dose [FVP-P-491]"
* group[0].element[271].target[0].code = #OCV
* group[0].element[271].target[0].display = "Inactivated oral cholera vaccine"
* group[0].element[271].target[0].relationship = #source-is-narrower-than-target
