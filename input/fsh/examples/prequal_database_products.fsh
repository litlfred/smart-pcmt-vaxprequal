
// Source Record Row //: 1
//  Vaccine Product ID: (a3K3X000005atRtUAI)
//  Product Name: (FVP-P-447)
//  Date of Prequalification: (2023-12-19)
//  Vaccine Type: (Malaria)
//  Commercial Name: (CYVAC)
//  Presentation: (Vial)
//  No. of doses: (2)
//  Manufacturer: (Serum Institute of India)
//  Responsible NRA: (Central Drugs Standard Control Organization (CDSCO))
//

Instance: PreQualDBa3K3X000005atRtUAI
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2023-12-19
* vaccineType.coding.code = #Malaria
* vaccineType.coding.display = "Malaria"
* commercialName = "CYVAC"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* manufacturer.text = "Serum Institute of India"
* responsibleNRA.text = "Central Drugs Standard Control Organization (CDSCO)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000005atRtUAI"
* productName = "FVP-P-447"
* vaccineFullName = "Recombinant malaria vaccine"
* vaccineAbbreviatedName = "Malaria"
* vaccineCommercialName = "CYVAC"
* manufacturerReference = Reference(Manufacturer0013X00003cPkzfQAC)
* responsibleNRAReference = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* productReference = Reference(MalariaProducta3K3X000005atRtUAI)

Instance: MalariaProducta3K3X000005atRtUAI
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "CYVAC"
* manufacturer = Reference(Manufacturer0013X00003cPkzfQAC) // Serum Institute of India
* doseQuantity =  2 'doses'
* classification = #Malaria
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000005atRtUAI"

Instance: PreQuala3K3X000005atRtUAI
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* validityPeriod.start = 2023-12-19
* product  = Reference(MalariaProducta3K3X000005atRtUAI)


// Source Record Row //: 2
//  Vaccine Product ID: (a3K3X000005atSwUAI)
//  Product Name: (FVP-P-446)
//  Date of Prequalification: (2023-12-19)
//  Vaccine Type: (Malaria)
//  Commercial Name: (CYVAC)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India)
//  Responsible NRA: (Central Drugs Standard Control Organization (CDSCO))
//

Instance: PreQualDBa3K3X000005atSwUAI
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2023-12-19
* vaccineType.coding.code = #Malaria
* vaccineType.coding.display = "Malaria"
* commercialName = "CYVAC"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India"
* responsibleNRA.text = "Central Drugs Standard Control Organization (CDSCO)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000005atSwUAI"
* productName = "FVP-P-446"
* vaccineFullName = "Recombinant malaria vaccine"
* vaccineAbbreviatedName = "Malaria"
* vaccineCommercialName = "CYVAC"
* manufacturerReference = Reference(Manufacturer0013X00003cPkzfQAC)
* responsibleNRAReference = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* productReference = Reference(MalariaProducta3K3X000005atSwUAI)

Instance: MalariaProducta3K3X000005atSwUAI
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "CYVAC"
* manufacturer = Reference(Manufacturer0013X00003cPkzfQAC) // Serum Institute of India
* doseQuantity =  1 'doses'
* classification = #Malaria
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000005atSwUAI"

Instance: PreQuala3K3X000005atSwUAI
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* validityPeriod.start = 2023-12-19
* product  = Reference(MalariaProducta3K3X000005atSwUAI)


// Source Record Row //: 3
//  Vaccine Product ID: (a3K3X000006MihsUAC)
//  Product Name: (FVP-P-62)
//  Date of Prequalification: (2007-01-29)
//  Vaccine Type: (LARV)
//  Commercial Name: (Rotarix)
//  Presentation: (Plastic tube)
//  No. of doses: (1)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products  (FAMPH))
//

Instance: PreQualDBa3K3X000006MihsUAC
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2007-01-29
* vaccineType.coding.code = #LARV
* vaccineType.coding.display = "LARV"
* commercialName = "Rotarix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Plastictube
* presentation.coding.display = "Plastic tube"
* numDoses = 1
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products  (FAMPH)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MihsUAC"
* productName = "FVP-P-62"
* vaccineFullName = "Rotavirus vaccine (live attenuated) (oral)"
* vaccineAbbreviatedName = "LARV"
* vaccineCommercialName = "Rotarix"
* manufacturerReference = Reference(Manufacturer0013X0000498p3gQAA)
* responsibleNRAReference = Reference(Holder0013X0000498p67QAA) // Federal Agency for Medicines and Health Products  (FAMPH)
* productReference = Reference(LARVProducta3K3X000006MihsUAC)

Instance: LARVProducta3K3X000006MihsUAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Rotarix"
* manufacturer = Reference(Manufacturer0013X0000498p3gQAA) // GlaxoSmithKline Biologicals SA
* doseQuantity =  1 'doses'
* classification = #LARV
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Plastictube
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MihsUAC"

Instance: PreQuala3K3X000006MihsUAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p67QAA) // Federal Agency for Medicines and Health Products  (FAMPH)
* validityPeriod.start = 2007-01-29
* product  = Reference(LARVProducta3K3X000006MihsUAC)


// Source Record Row //: 4
//  Vaccine Product ID: (a3K3X000006MihtUAC)
//  Product Name: (FVP-P-63)
//  Date of Prequalification: (2006-02-02)
//  Vaccine Type: (tOPV)
//  Commercial Name: (Polioviral vaccine)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Haffkine Bio Pharmaceutical Corporation Ltd)
//  Responsible NRA: (Central Drugs Standard Control Organization (CDSCO))
//

Instance: PreQualDBa3K3X000006MihtUAC
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2006-02-02
* vaccineType.coding.code = #tOPV
* vaccineType.coding.display = "tOPV"
* commercialName = "Polioviral vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Haffkine Bio Pharmaceutical Corporation Ltd"
* responsibleNRA.text = "Central Drugs Standard Control Organization (CDSCO)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MihtUAC"
* productName = "FVP-P-63"
* vaccineFullName = "Poliomyelitis vaccines (trivalent live, oral, innactivated, type 1,2, 3)"
* vaccineAbbreviatedName = "tOPV"
* vaccineCommercialName = "Polioviral vaccine"
* manufacturerReference = Reference(Manufacturer0013X0000498p2wQAA)
* responsibleNRAReference = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* productReference = Reference(tOPVProducta3K3X000006MihtUAC)

Instance: tOPVProducta3K3X000006MihtUAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Polioviral vaccine"
* manufacturer = Reference(Manufacturer0013X0000498p2wQAA) // Haffkine Bio Pharmaceutical Corporation Ltd
* doseQuantity =  20 'doses'
* classification = #tOPV
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MihtUAC"

Instance: PreQuala3K3X000006MihtUAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* validityPeriod.start = 2006-02-02
* product  = Reference(tOPVProducta3K3X000006MihtUAC)


// Source Record Row //: 5
//  Vaccine Product ID: (a3K3X000006MihuUAC)
//  Product Name: (FVP-P-64)
//  Date of Prequalification: (2001-03-20)
//  Vaccine Type: (YF)
//  Commercial Name: (Stabilized Yellow Fever Vaccine)
//  Presentation: (Ampoule)
//  No. of doses: (5)
//  Manufacturer: (Institut Pasteur de Dakar (IPD))
//  Responsible NRA: (Ministère de la Santé publique (DPM))
//

Instance: PreQualDBa3K3X000006MihuUAC
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2001-03-20
* vaccineType.coding.code = #YF
* vaccineType.coding.display = "YF"
* commercialName = "Stabilized Yellow Fever Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 5
* manufacturer.text = "Institut Pasteur de Dakar (IPD)"
* responsibleNRA.text = "Ministère de la Santé publique (DPM)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MihuUAC"
* productName = "FVP-P-64"
* vaccineFullName = "Yellow fever vaccine (live attenuated)"
* vaccineAbbreviatedName = "YF"
* vaccineCommercialName = "Stabilized Yellow Fever Vaccine"
* manufacturerReference = Reference(Manufacturer0013X000049bJ9SQAU)
* responsibleNRAReference = Reference(Holder0013X0000498p53QAA) // Ministère de la Santé publique (DPM)
* productReference = Reference(YFProducta3K3X000006MihuUAC)

Instance: YFProducta3K3X000006MihuUAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Stabilized Yellow Fever Vaccine"
* manufacturer = Reference(Manufacturer0013X000049bJ9SQAU) // Institut Pasteur de Dakar (IPD)
* doseQuantity =  5 'doses'
* classification = #YF
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MihuUAC"

Instance: PreQuala3K3X000006MihuUAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p53QAA) // Ministère de la Santé publique (DPM)
* validityPeriod.start = 2001-03-20
* product  = Reference(YFProducta3K3X000006MihuUAC)


// Source Record Row //: 6
//  Vaccine Product ID: (a3K3X000006MihvUAC)
//  Product Name: (FVP-P-65)
//  Date of Prequalification: (2001-03-20)
//  Vaccine Type: (YF)
//  Commercial Name: (Stabilized Yellow Fever Vaccine)
//  Presentation: (Ampoule)
//  No. of doses: (20)
//  Manufacturer: (Institut Pasteur de Dakar (IPD))
//  Responsible NRA: (Ministère de la Santé publique (DPM))
//

Instance: PreQualDBa3K3X000006MihvUAC
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2001-03-20
* vaccineType.coding.code = #YF
* vaccineType.coding.display = "YF"
* commercialName = "Stabilized Yellow Fever Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 20
* manufacturer.text = "Institut Pasteur de Dakar (IPD)"
* responsibleNRA.text = "Ministère de la Santé publique (DPM)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MihvUAC"
* productName = "FVP-P-65"
* vaccineFullName = "Yellow fever vaccine (live attenuated)"
* vaccineAbbreviatedName = "YF"
* vaccineCommercialName = "Stabilized Yellow Fever Vaccine"
* manufacturerReference = Reference(Manufacturer0013X000049bJ9SQAU)
* responsibleNRAReference = Reference(Holder0013X0000498p53QAA) // Ministère de la Santé publique (DPM)
* productReference = Reference(YFProducta3K3X000006MihvUAC)

Instance: YFProducta3K3X000006MihvUAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Stabilized Yellow Fever Vaccine"
* manufacturer = Reference(Manufacturer0013X000049bJ9SQAU) // Institut Pasteur de Dakar (IPD)
* doseQuantity =  20 'doses'
* classification = #YF
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MihvUAC"

Instance: PreQuala3K3X000006MihvUAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p53QAA) // Ministère de la Santé publique (DPM)
* validityPeriod.start = 2001-03-20
* product  = Reference(YFProducta3K3X000006MihvUAC)


// Source Record Row //: 7
//  Vaccine Product ID: (a3K3X000006MihwUAC)
//  Product Name: (FVP-P-66)
//  Date of Prequalification: (2001-03-20)
//  Vaccine Type: (YF)
//  Commercial Name: (Stabilized Yellow Fever Vaccine)
//  Presentation: (Ampoule)
//  No. of doses: (10)
//  Manufacturer: (Institut Pasteur de Dakar (IPD))
//  Responsible NRA: (Ministère de la Santé publique (DPM))
//

Instance: PreQualDBa3K3X000006MihwUAC
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2001-03-20
* vaccineType.coding.code = #YF
* vaccineType.coding.display = "YF"
* commercialName = "Stabilized Yellow Fever Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 10
* manufacturer.text = "Institut Pasteur de Dakar (IPD)"
* responsibleNRA.text = "Ministère de la Santé publique (DPM)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MihwUAC"
* productName = "FVP-P-66"
* vaccineFullName = "Yellow fever vaccine (live attenuated)"
* vaccineAbbreviatedName = "YF"
* vaccineCommercialName = "Stabilized Yellow Fever Vaccine"
* manufacturerReference = Reference(Manufacturer0013X000049bJ9SQAU)
* responsibleNRAReference = Reference(Holder0013X0000498p53QAA) // Ministère de la Santé publique (DPM)
* productReference = Reference(YFProducta3K3X000006MihwUAC)

Instance: YFProducta3K3X000006MihwUAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Stabilized Yellow Fever Vaccine"
* manufacturer = Reference(Manufacturer0013X000049bJ9SQAU) // Institut Pasteur de Dakar (IPD)
* doseQuantity =  10 'doses'
* classification = #YF
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MihwUAC"

Instance: PreQuala3K3X000006MihwUAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p53QAA) // Ministère de la Santé publique (DPM)
* validityPeriod.start = 2001-03-20
* product  = Reference(YFProducta3K3X000006MihwUAC)


// Source Record Row //: 8
//  Vaccine Product ID: (a3K3X000006MihxUAC)
//  Product Name: (FVP-P-67)
//  Date of Prequalification: (1987-01-01)
//  Vaccine Type: (BCG)
//  Commercial Name: (BCG Freeze Dried Glutamate vaccine)
//  Presentation: (Ampoule)
//  No. of doses: (20)
//  Manufacturer: (Japan BCG Laboratory (JBL))
//  Responsible NRA: (Pharmaceutical and Medical Devices Agency (PMDA))
//

Instance: PreQualDBa3K3X000006MihxUAC
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 1987-01-01
* vaccineType.coding.code = #BCG
* vaccineType.coding.display = "BCG"
* commercialName = "BCG Freeze Dried Glutamate vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 20
* manufacturer.text = "Japan BCG Laboratory (JBL)"
* responsibleNRA.text = "Pharmaceutical and Medical Devices Agency (PMDA)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MihxUAC"
* productName = "FVP-P-67"
* vaccineFullName = "BCG"
* vaccineAbbreviatedName = "BCG"
* vaccineCommercialName = "BCG Freeze Dried Glutamate vaccine"
* manufacturerReference = Reference(Manufacturer0013X0000498p4ZQAQ)
* responsibleNRAReference = Reference(Holder0013X0000498p4mQAA) // Pharmaceutical and Medical Devices Agency (PMDA)
* productReference = Reference(BCGProducta3K3X000006MihxUAC)

Instance: BCGProducta3K3X000006MihxUAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BCG Freeze Dried Glutamate vaccine"
* manufacturer = Reference(Manufacturer0013X0000498p4ZQAQ) // Japan BCG Laboratory (JBL)
* doseQuantity =  20 'doses'
* classification = #BCG
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MihxUAC"

Instance: PreQuala3K3X000006MihxUAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4mQAA) // Pharmaceutical and Medical Devices Agency (PMDA)
* validityPeriod.start = 1987-01-01
* product  = Reference(BCGProducta3K3X000006MihxUAC)


// Source Record Row //: 9
//  Vaccine Product ID: (a3K3X000006MihyUAC)
//  Product Name: (FVP-P-68)
//  Date of Prequalification: (1996-11-22)
//  Vaccine Type: (HepB)
//  Commercial Name: (Euvax B)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (LG Chem Ltd (LGC))
//  Responsible NRA: (Ministry of Food and Drug Safety (MFDS))
//

Instance: PreQualDBa3K3X000006MihyUAC
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 1996-11-22
* vaccineType.coding.code = #HepB
* vaccineType.coding.display = "HepB"
* commercialName = "Euvax B"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "LG Chem Ltd (LGC)"
* responsibleNRA.text = "Ministry of Food and Drug Safety (MFDS)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MihyUAC"
* productName = "FVP-P-68"
* vaccineFullName = "Hepatitis B vaccine (recombinant)"
* vaccineAbbreviatedName = "HepB"
* vaccineCommercialName = "Euvax B"
* manufacturerReference = Reference(Manufacturer0013X00004993qnQAA)
* responsibleNRAReference = Reference(Holder0013X00004993qyQAA) // Ministry of Food and Drug Safety (MFDS)
* productReference = Reference(HepBProducta3K3X000006MihyUAC)

Instance: HepBProducta3K3X000006MihyUAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Euvax B"
* manufacturer = Reference(Manufacturer0013X00004993qnQAA) // LG Chem Ltd (LGC)
* doseQuantity =  1 'doses'
* classification = #HepB
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MihyUAC"

Instance: PreQuala3K3X000006MihyUAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X00004993qyQAA) // Ministry of Food and Drug Safety (MFDS)
* validityPeriod.start = 1996-11-22
* product  = Reference(HepBProducta3K3X000006MihyUAC)


// Source Record Row //: 10
//  Vaccine Product ID: (a3K3X000006MihzUAC)
//  Product Name: (FVP-P-27)
//  Date of Prequalification: ()
//  Vaccine Type: ()
//  Commercial Name: ()
//  Presentation: ()
//  No. of doses: ()
//  Manufacturer: ()
//  Responsible NRA: ()
//

Instance: PreQualDBa3K3X000006MihzUAC
InstanceOf: PreQualDBAPIWithRefs
* commercialName = ""
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #
* presentation.coding.display = ""
* manufacturer.text = ""
* responsibleNRA.text = ""
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MihzUAC"
* productName = "FVP-P-27"
* vaccineCommercialName = ""
* manufacturerReference = Reference(Manufacturerd41d8cd98f00b204e9800998ecf8427e)
* responsibleNRAReference = Reference(Holderd41d8cd98f00b204e9800998ecf8427e) // 
* productReference = Reference(Producta3K3X000006MihzUAC)

Instance: Producta3K3X000006MihzUAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = ""
* manufacturer = Reference(Manufacturerd41d8cd98f00b204e9800998ecf8427e) // 
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MihzUAC"

Instance: PreQuala3K3X000006MihzUAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd41d8cd98f00b204e9800998ecf8427e) // 
* product  = Reference(Producta3K3X000006MihzUAC)


// Source Record Row //: 11
//  Vaccine Product ID: (a3K3X000006Mii0UAC)
//  Product Name: (FVP-P-61)
//  Date of Prequalification: (2001-03-09)
//  Vaccine Type: (MMR)
//  Commercial Name: (Priorix)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products  (FAMPH))
//

Instance: PreQualDBa3K3X000006Mii0UAC
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2001-03-09
* vaccineType.coding.code = #MMR
* vaccineType.coding.display = "MMR"
* commercialName = "Priorix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products  (FAMPH)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006Mii0UAC"
* productName = "FVP-P-61"
* vaccineFullName = "Measles, mumps, rubella combined vaccine (live, attenuated)"
* vaccineAbbreviatedName = "MMR"
* vaccineCommercialName = "Priorix"
* manufacturerReference = Reference(Manufacturer0013X0000498p3gQAA)
* responsibleNRAReference = Reference(Holder0013X0000498p67QAA) // Federal Agency for Medicines and Health Products  (FAMPH)
* productReference = Reference(MMRProducta3K3X000006Mii0UAC)

Instance: MMRProducta3K3X000006Mii0UAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Priorix"
* manufacturer = Reference(Manufacturer0013X0000498p3gQAA) // GlaxoSmithKline Biologicals SA
* doseQuantity =  1 'doses'
* classification = #MMR
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006Mii0UAC"

Instance: PreQuala3K3X000006Mii0UAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p67QAA) // Federal Agency for Medicines and Health Products  (FAMPH)
* validityPeriod.start = 2001-03-09
* product  = Reference(MMRProducta3K3X000006Mii0UAC)


// Source Record Row //: 12
//  Vaccine Product ID: (a3K3X000006Mii1UAC)
//  Product Name: (FVP-P-75)
//  Date of Prequalification: (2006-05-09)
//  Vaccine Type: (TT)
//  Commercial Name: (Tetatox)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)
//  Responsible NRA: (Bulgarian Drug Agency (BDA))
//

Instance: PreQualDBa3K3X000006Mii1UAC
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2006-05-09
* vaccineType.coding.code = #TT
* vaccineType.coding.display = "TT"
* commercialName = "Tetatox"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Bul Bio-National Center of Infectious and Parasitic Diseases Ltd."
* responsibleNRA.text = "Bulgarian Drug Agency (BDA)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006Mii1UAC"
* productName = "FVP-P-75"
* vaccineFullName = "Tetanus vaccine (adsorbed)"
* vaccineAbbreviatedName = "TT"
* vaccineCommercialName = "Tetatox"
* manufacturerReference = Reference(Manufacturer0013X0000498p2jQAA)
* responsibleNRAReference = Reference(Holder0013X00003cPkgXQAS) // Bulgarian Drug Agency (BDA)
* productReference = Reference(TTProducta3K3X000006Mii1UAC)

Instance: TTProducta3K3X000006Mii1UAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Tetatox"
* manufacturer = Reference(Manufacturer0013X0000498p2jQAA) // Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.
* doseQuantity =  10 'doses'
* classification = #TT
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006Mii1UAC"

Instance: PreQuala3K3X000006Mii1UAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X00003cPkgXQAS) // Bulgarian Drug Agency (BDA)
* validityPeriod.start = 2006-05-09
* product  = Reference(TTProducta3K3X000006Mii1UAC)


// Source Record Row //: 13
//  Vaccine Product ID: (a3K3X000006Mii2UAC)
//  Product Name: (FVP-P-76)
//  Date of Prequalification: (2006-05-09)
//  Vaccine Type: (TT)
//  Commercial Name: (Tetatox)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)
//  Responsible NRA: (Bulgarian Drug Agency (BDA))
//

Instance: PreQualDBa3K3X000006Mii2UAC
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2006-05-09
* vaccineType.coding.code = #TT
* vaccineType.coding.display = "TT"
* commercialName = "Tetatox"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Bul Bio-National Center of Infectious and Parasitic Diseases Ltd."
* responsibleNRA.text = "Bulgarian Drug Agency (BDA)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006Mii2UAC"
* productName = "FVP-P-76"
* vaccineFullName = "Tetanus vaccine (adsorbed)"
* vaccineAbbreviatedName = "TT"
* vaccineCommercialName = "Tetatox"
* manufacturerReference = Reference(Manufacturer0013X0000498p2jQAA)
* responsibleNRAReference = Reference(Holder0013X00003cPkgXQAS) // Bulgarian Drug Agency (BDA)
* productReference = Reference(TTProducta3K3X000006Mii2UAC)

Instance: TTProducta3K3X000006Mii2UAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Tetatox"
* manufacturer = Reference(Manufacturer0013X0000498p2jQAA) // Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.
* doseQuantity =  20 'doses'
* classification = #TT
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006Mii2UAC"

Instance: PreQuala3K3X000006Mii2UAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X00003cPkgXQAS) // Bulgarian Drug Agency (BDA)
* validityPeriod.start = 2006-05-09
* product  = Reference(TTProducta3K3X000006Mii2UAC)


// Source Record Row //: 14
//  Vaccine Product ID: (a3K3X000006Mii3UAC)
//  Product Name: (FVP-P-77)
//  Date of Prequalification: (2006-05-09)
//  Vaccine Type: (DT)
//  Commercial Name: (Diftet)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)
//  Responsible NRA: (Bulgarian Drug Agency (BDA))
//

Instance: PreQualDBa3K3X000006Mii3UAC
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2006-05-09
* vaccineType.coding.code = #DT
* vaccineType.coding.display = "DT"
* commercialName = "Diftet"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Bul Bio-National Center of Infectious and Parasitic Diseases Ltd."
* responsibleNRA.text = "Bulgarian Drug Agency (BDA)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006Mii3UAC"
* productName = "FVP-P-77"
* vaccineFullName = "Diphtheria and tetanus vaccine (adsorbed)"
* vaccineAbbreviatedName = "DT"
* vaccineCommercialName = "Diftet"
* manufacturerReference = Reference(Manufacturer0013X0000498p2jQAA)
* responsibleNRAReference = Reference(Holder0013X00003cPkgXQAS) // Bulgarian Drug Agency (BDA)
* productReference = Reference(DTProducta3K3X000006Mii3UAC)

Instance: DTProducta3K3X000006Mii3UAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diftet"
* manufacturer = Reference(Manufacturer0013X0000498p2jQAA) // Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.
* doseQuantity =  10 'doses'
* classification = #DT
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006Mii3UAC"

Instance: PreQuala3K3X000006Mii3UAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X00003cPkgXQAS) // Bulgarian Drug Agency (BDA)
* validityPeriod.start = 2006-05-09
* product  = Reference(DTProducta3K3X000006Mii3UAC)


// Source Record Row //: 15
//  Vaccine Product ID: (a3K3X000006Mii4UAC)
//  Product Name: (FVP-P-292)
//  Date of Prequalification: ()
//  Vaccine Type: ()
//  Commercial Name: ()
//  Presentation: ()
//  No. of doses: ()
//  Manufacturer: ()
//  Responsible NRA: ()
//

Instance: PreQualDBa3K3X000006Mii4UAC
InstanceOf: PreQualDBAPIWithRefs
* commercialName = ""
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #
* presentation.coding.display = ""
* manufacturer.text = ""
* responsibleNRA.text = ""
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006Mii4UAC"
* productName = "FVP-P-292"
* vaccineCommercialName = ""
* manufacturerReference = Reference(Manufacturerd41d8cd98f00b204e9800998ecf8427e)
* responsibleNRAReference = Reference(Holderd41d8cd98f00b204e9800998ecf8427e) // 
* productReference = Reference(Producta3K3X000006Mii4UAC)

Instance: Producta3K3X000006Mii4UAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = ""
* manufacturer = Reference(Manufacturerd41d8cd98f00b204e9800998ecf8427e) // 
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006Mii4UAC"

Instance: PreQuala3K3X000006Mii4UAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd41d8cd98f00b204e9800998ecf8427e) // 
* product  = Reference(Producta3K3X000006Mii4UAC)


// Source Record Row //: 16
//  Vaccine Product ID: (a3K3X000006Mii5UAC)
//  Product Name: (FVP-P-311)
//  Date of Prequalification: (2017-12-22)
//  Vaccine Type: (HepA)
//  Commercial Name: (HEALIVE)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Sinovac Biotech Co. Ltd)
//  Responsible NRA: (National Medical Products Administration  (NMPA))
//

Instance: PreQualDBa3K3X000006Mii5UAC
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2017-12-22
* vaccineType.coding.code = #HepA
* vaccineType.coding.display = "HepA"
* commercialName = "HEALIVE"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Sinovac Biotech Co. Ltd"
* responsibleNRA.text = "National Medical Products Administration  (NMPA)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006Mii5UAC"
* productName = "FVP-P-311"
* vaccineFullName = "Hepatitis A vaccine (inactivated)"
* vaccineAbbreviatedName = "HepA"
* vaccineCommercialName = "HEALIVE"
* manufacturerReference = Reference(Manufacturer0013X0000498p3ZQAQ)
* responsibleNRAReference = Reference(Holder0013X0000498p4wQAA) // National Medical Products Administration  (NMPA)
* productReference = Reference(HepAProducta3K3X000006Mii5UAC)

Instance: HepAProducta3K3X000006Mii5UAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "HEALIVE"
* manufacturer = Reference(Manufacturer0013X0000498p3ZQAQ) // Sinovac Biotech Co. Ltd
* doseQuantity =  1 'doses'
* classification = #HepA
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006Mii5UAC"

Instance: PreQuala3K3X000006Mii5UAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4wQAA) // National Medical Products Administration  (NMPA)
* validityPeriod.start = 2017-12-22
* product  = Reference(HepAProducta3K3X000006Mii5UAC)


// Source Record Row //: 17
//  Vaccine Product ID: (a3K3X000006Mii6UAC)
//  Product Name: (FVP-P-319)
//  Date of Prequalification: (2017-12-21)
//  Vaccine Type: (bOPV)
//  Commercial Name: (Poliomyelitis Vaccine (live oral attenuated human Diploid Cell) type 1 and 3)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Beijing Institute of Biological Products Co., Ltd.)
//  Responsible NRA: (National Medical Products Administration  (NMPA))
//

Instance: PreQualDBa3K3X000006Mii6UAC
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2017-12-21
* vaccineType.coding.code = #bOPV
* vaccineType.coding.display = "bOPV"
* commercialName = "Poliomyelitis Vaccine (live oral attenuated human Diploid Cell) type 1 and 3"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Beijing Institute of Biological Products Co., Ltd."
* responsibleNRA.text = "National Medical Products Administration  (NMPA)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006Mii6UAC"
* productName = "FVP-P-319"
* vaccineFullName = "Poliomyelitis vaccines (bivalent live, oral, innactivated, type 1, 3)"
* vaccineAbbreviatedName = "bOPV"
* vaccineCommercialName = "Poliomyelitis Vaccine (live oral attenuated human Diploid Cell) type 1 and 3"
* manufacturerReference = Reference(Manufacturer0013X0000498p4LQAQ)
* responsibleNRAReference = Reference(Holder0013X0000498p4wQAA) // National Medical Products Administration  (NMPA)
* productReference = Reference(bOPVProducta3K3X000006Mii6UAC)

Instance: bOPVProducta3K3X000006Mii6UAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Poliomyelitis Vaccine (live oral attenuated human Diploid Cell) type 1 and 3"
* manufacturer = Reference(Manufacturer0013X0000498p4LQAQ) // Beijing Institute of Biological Products Co., Ltd.
* doseQuantity =  20 'doses'
* classification = #bOPV
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006Mii6UAC"

Instance: PreQuala3K3X000006Mii6UAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4wQAA) // National Medical Products Administration  (NMPA)
* validityPeriod.start = 2017-12-21
* product  = Reference(bOPVProducta3K3X000006Mii6UAC)


// Source Record Row //: 18
//  Vaccine Product ID: (a3K3X000006Mii7UAC)
//  Product Name: (FVP-P-71)
//  Date of Prequalification: (1996-11-22)
//  Vaccine Type: (HepB)
//  Commercial Name: (Euvax B)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (LG Chem Ltd (LGC))
//  Responsible NRA: (Ministry of Food and Drug Safety (MFDS))
//

Instance: PreQualDBa3K3X000006Mii7UAC
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 1996-11-22
* vaccineType.coding.code = #HepB
* vaccineType.coding.display = "HepB"
* commercialName = "Euvax B"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "LG Chem Ltd (LGC)"
* responsibleNRA.text = "Ministry of Food and Drug Safety (MFDS)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006Mii7UAC"
* productName = "FVP-P-71"
* vaccineFullName = "Hepatitis B vaccine (recombinant)"
* vaccineAbbreviatedName = "HepB"
* vaccineCommercialName = "Euvax B"
* manufacturerReference = Reference(Manufacturer0013X00004993qnQAA)
* responsibleNRAReference = Reference(Holder0013X00004993qyQAA) // Ministry of Food and Drug Safety (MFDS)
* productReference = Reference(HepBProducta3K3X000006Mii7UAC)

Instance: HepBProducta3K3X000006Mii7UAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Euvax B"
* manufacturer = Reference(Manufacturer0013X00004993qnQAA) // LG Chem Ltd (LGC)
* doseQuantity =  10 'doses'
* classification = #HepB
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006Mii7UAC"

Instance: PreQuala3K3X000006Mii7UAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X00004993qyQAA) // Ministry of Food and Drug Safety (MFDS)
* validityPeriod.start = 1996-11-22
* product  = Reference(HepBProducta3K3X000006Mii7UAC)


// Source Record Row //: 19
//  Vaccine Product ID: (a3K3X000006Mii8UAC)
//  Product Name: (FVP-P-78)
//  Date of Prequalification: (2006-05-09)
//  Vaccine Type: (DT)
//  Commercial Name: (Diftet)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)
//  Responsible NRA: (Bulgarian Drug Agency (BDA))
//

Instance: PreQualDBa3K3X000006Mii8UAC
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2006-05-09
* vaccineType.coding.code = #DT
* vaccineType.coding.display = "DT"
* commercialName = "Diftet"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Bul Bio-National Center of Infectious and Parasitic Diseases Ltd."
* responsibleNRA.text = "Bulgarian Drug Agency (BDA)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006Mii8UAC"
* productName = "FVP-P-78"
* vaccineFullName = "Diphtheria and tetanus vaccine (adsorbed)"
* vaccineAbbreviatedName = "DT"
* vaccineCommercialName = "Diftet"
* manufacturerReference = Reference(Manufacturer0013X0000498p2jQAA)
* responsibleNRAReference = Reference(Holder0013X00003cPkgXQAS) // Bulgarian Drug Agency (BDA)
* productReference = Reference(DTProducta3K3X000006Mii8UAC)

Instance: DTProducta3K3X000006Mii8UAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diftet"
* manufacturer = Reference(Manufacturer0013X0000498p2jQAA) // Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.
* doseQuantity =  20 'doses'
* classification = #DT
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006Mii8UAC"

Instance: PreQuala3K3X000006Mii8UAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X00003cPkgXQAS) // Bulgarian Drug Agency (BDA)
* validityPeriod.start = 2006-05-09
* product  = Reference(DTProducta3K3X000006Mii8UAC)


// Source Record Row //: 20
//  Vaccine Product ID: (a3K3X000006Mii9UAC)
//  Product Name: (FVP-P-79)
//  Date of Prequalification: (2006-05-09)
//  Vaccine Type: (dT)
//  Commercial Name: (Tetadif)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)
//  Responsible NRA: (Bulgarian Drug Agency (BDA))
//

Instance: PreQualDBa3K3X000006Mii9UAC
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2006-05-09
* vaccineType.coding.code = #dT
* vaccineType.coding.display = "dT"
* commercialName = "Tetadif"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Bul Bio-National Center of Infectious and Parasitic Diseases Ltd."
* responsibleNRA.text = "Bulgarian Drug Agency (BDA)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006Mii9UAC"
* productName = "FVP-P-79"
* vaccineFullName = "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)"
* vaccineAbbreviatedName = "dT"
* vaccineCommercialName = "Tetadif"
* manufacturerReference = Reference(Manufacturer0013X0000498p2jQAA)
* responsibleNRAReference = Reference(Holder0013X00003cPkgXQAS) // Bulgarian Drug Agency (BDA)
* productReference = Reference(dTProducta3K3X000006Mii9UAC)

Instance: dTProducta3K3X000006Mii9UAC
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Tetadif"
* manufacturer = Reference(Manufacturer0013X0000498p2jQAA) // Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.
* doseQuantity =  10 'doses'
* classification = #dT
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006Mii9UAC"

Instance: PreQuala3K3X000006Mii9UAC
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X00003cPkgXQAS) // Bulgarian Drug Agency (BDA)
* validityPeriod.start = 2006-05-09
* product  = Reference(dTProducta3K3X000006Mii9UAC)


// Source Record Row //: 21
//  Vaccine Product ID: (a3K3X000006MiiAUAS)
//  Product Name: (FVP-P-80)
//  Date of Prequalification: (2006-05-09)
//  Vaccine Type: (dT)
//  Commercial Name: (Tetadif)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)
//  Responsible NRA: (Bulgarian Drug Agency (BDA))
//

Instance: PreQualDBa3K3X000006MiiAUAS
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2006-05-09
* vaccineType.coding.code = #dT
* vaccineType.coding.display = "dT"
* commercialName = "Tetadif"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Bul Bio-National Center of Infectious and Parasitic Diseases Ltd."
* responsibleNRA.text = "Bulgarian Drug Agency (BDA)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MiiAUAS"
* productName = "FVP-P-80"
* vaccineFullName = "Diphtheria and tetanus vaccine (adsorbed, reduced diphtheria antigen content)"
* vaccineAbbreviatedName = "dT"
* vaccineCommercialName = "Tetadif"
* manufacturerReference = Reference(Manufacturer0013X0000498p2jQAA)
* responsibleNRAReference = Reference(Holder0013X00003cPkgXQAS) // Bulgarian Drug Agency (BDA)
* productReference = Reference(dTProducta3K3X000006MiiAUAS)

Instance: dTProducta3K3X000006MiiAUAS
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Tetadif"
* manufacturer = Reference(Manufacturer0013X0000498p2jQAA) // Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.
* doseQuantity =  20 'doses'
* classification = #dT
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MiiAUAS"

Instance: PreQuala3K3X000006MiiAUAS
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X00003cPkgXQAS) // Bulgarian Drug Agency (BDA)
* validityPeriod.start = 2006-05-09
* product  = Reference(dTProducta3K3X000006MiiAUAS)


// Source Record Row //: 22
//  Vaccine Product ID: (a3K3X000006MiiBUAS)
//  Product Name: (FVP-P-329)
//  Date of Prequalification: (2020-03-25)
//  Vaccine Type: (TDV)
//  Commercial Name: (Dengvaxia)
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (5)
//  Manufacturer: (Sanofi Pasteur SA)
//  Responsible NRA: (Agence nationale de sécurité du médicament et des produits de santé (ANSM))
//

Instance: PreQualDBa3K3X000006MiiBUAS
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2020-03-25
* vaccineType.coding.code = #TDV
* vaccineType.coding.display = "TDV"
* commercialName = "Dengvaxia"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 5
* manufacturer.text = "Sanofi Pasteur SA"
* responsibleNRA.text = "Agence nationale de sécurité du médicament et des produits de santé (ANSM)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MiiBUAS"
* productName = "FVP-P-329"
* vaccineFullName = "Dengue tetravalent vaccine (live, attenuated)"
* vaccineAbbreviatedName = "TDV"
* vaccineCommercialName = "Dengvaxia"
* manufacturerReference = Reference(Manufacturer0013X0000498p3PQAQ)
* responsibleNRAReference = Reference(Holder0013X0000498p4bQAA) // Agence nationale de sécurité du médicament et des produits de santé (ANSM)
* productReference = Reference(TDVProducta3K3X000006MiiBUAS)

Instance: TDVProducta3K3X000006MiiBUAS
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Dengvaxia"
* manufacturer = Reference(Manufacturer0013X0000498p3PQAQ) // Sanofi Pasteur SA
* doseQuantity =  5 'doses'
* classification = #TDV
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MiiBUAS"

Instance: PreQuala3K3X000006MiiBUAS
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4bQAA) // Agence nationale de sécurité du médicament et des produits de santé (ANSM)
* validityPeriod.start = 2020-03-25
* product  = Reference(TDVProducta3K3X000006MiiBUAS)


// Source Record Row //: 23
//  Vaccine Product ID: (a3K3X000006MiiCUAS)
//  Product Name: (FVP-P-73)
//  Date of Prequalification: (1991-02-01)
//  Vaccine Type: (BCG)
//  Commercial Name: (BCG Vaccine)
//  Presentation: (Ampoule)
//  No. of doses: (10)
//  Manufacturer: (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)
//  Responsible NRA: (Bulgarian Drug Agency (BDA))
//

Instance: PreQualDBa3K3X000006MiiCUAS
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 1991-02-01
* vaccineType.coding.code = #BCG
* vaccineType.coding.display = "BCG"
* commercialName = "BCG Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 10
* manufacturer.text = "Bul Bio-National Center of Infectious and Parasitic Diseases Ltd."
* responsibleNRA.text = "Bulgarian Drug Agency (BDA)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MiiCUAS"
* productName = "FVP-P-73"
* vaccineFullName = "BCG"
* vaccineAbbreviatedName = "BCG"
* vaccineCommercialName = "BCG Vaccine"
* manufacturerReference = Reference(Manufacturer0013X0000498p2jQAA)
* responsibleNRAReference = Reference(Holder0013X00003cPkgXQAS) // Bulgarian Drug Agency (BDA)
* productReference = Reference(BCGProducta3K3X000006MiiCUAS)

Instance: BCGProducta3K3X000006MiiCUAS
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BCG Vaccine"
* manufacturer = Reference(Manufacturer0013X0000498p2jQAA) // Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.
* doseQuantity =  10 'doses'
* classification = #BCG
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MiiCUAS"

Instance: PreQuala3K3X000006MiiCUAS
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X00003cPkgXQAS) // Bulgarian Drug Agency (BDA)
* validityPeriod.start = 1991-02-01
* product  = Reference(BCGProducta3K3X000006MiiCUAS)


// Source Record Row //: 24
//  Vaccine Product ID: (a3K3X000006MiiDUAS)
//  Product Name: (FVP-P-74)
//  Date of Prequalification: (1991-02-01)
//  Vaccine Type: (BCG)
//  Commercial Name: (BCG Vaccine)
//  Presentation: (Ampoule)
//  No. of doses: (20)
//  Manufacturer: (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)
//  Responsible NRA: (Bulgarian Drug Agency (BDA))
//

Instance: PreQualDBa3K3X000006MiiDUAS
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 1991-02-01
* vaccineType.coding.code = #BCG
* vaccineType.coding.display = "BCG"
* commercialName = "BCG Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 20
* manufacturer.text = "Bul Bio-National Center of Infectious and Parasitic Diseases Ltd."
* responsibleNRA.text = "Bulgarian Drug Agency (BDA)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MiiDUAS"
* productName = "FVP-P-74"
* vaccineFullName = "BCG"
* vaccineAbbreviatedName = "BCG"
* vaccineCommercialName = "BCG Vaccine"
* manufacturerReference = Reference(Manufacturer0013X0000498p2jQAA)
* responsibleNRAReference = Reference(Holder0013X00003cPkgXQAS) // Bulgarian Drug Agency (BDA)
* productReference = Reference(BCGProducta3K3X000006MiiDUAS)

Instance: BCGProducta3K3X000006MiiDUAS
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BCG Vaccine"
* manufacturer = Reference(Manufacturer0013X0000498p2jQAA) // Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.
* doseQuantity =  20 'doses'
* classification = #BCG
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MiiDUAS"

Instance: PreQuala3K3X000006MiiDUAS
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X00003cPkgXQAS) // Bulgarian Drug Agency (BDA)
* validityPeriod.start = 1991-02-01
* product  = Reference(BCGProducta3K3X000006MiiDUAS)


// Source Record Row //: 25
//  Vaccine Product ID: (a3K3X000006MiiEUAS)
//  Product Name: (FVP-P-137)
//  Date of Prequalification: (1993-02-15)
//  Vaccine Type: (MR)
//  Commercial Name: (Measles and Rubella Vaccine Live Attenuated)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India)
//  Responsible NRA: (Central Drugs Standard Control Organization (CDSCO))
//

Instance: PreQualDBa3K3X000006MiiEUAS
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 1993-02-15
* vaccineType.coding.code = #MR
* vaccineType.coding.display = "MR"
* commercialName = "Measles and Rubella Vaccine Live Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India"
* responsibleNRA.text = "Central Drugs Standard Control Organization (CDSCO)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MiiEUAS"
* productName = "FVP-P-137"
* vaccineFullName = "Measles, rubella combined vaccine (live, attenuated)"
* vaccineAbbreviatedName = "MR"
* vaccineCommercialName = "Measles and Rubella Vaccine Live Attenuated"
* manufacturerReference = Reference(Manufacturer0013X00003cPkzfQAC)
* responsibleNRAReference = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* productReference = Reference(MRProducta3K3X000006MiiEUAS)

Instance: MRProducta3K3X000006MiiEUAS
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles and Rubella Vaccine Live Attenuated"
* manufacturer = Reference(Manufacturer0013X00003cPkzfQAC) // Serum Institute of India
* doseQuantity =  1 'doses'
* classification = #MR
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MiiEUAS"

Instance: PreQuala3K3X000006MiiEUAS
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* validityPeriod.start = 1993-02-15
* product  = Reference(MRProducta3K3X000006MiiEUAS)


// Source Record Row //: 26
//  Vaccine Product ID: (a3K3X000006MiiFUAS)
//  Product Name: (FVP-P-136)
//  Date of Prequalification: (1995-04-04)
//  Vaccine Type: (TT)
//  Commercial Name: (Tetanus  Toxoid Vaccine Adsorbed)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Serum Institute of India)
//  Responsible NRA: (Central Drugs Standard Control Organization (CDSCO))
//

Instance: PreQualDBa3K3X000006MiiFUAS
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 1995-04-04
* vaccineType.coding.code = #TT
* vaccineType.coding.display = "TT"
* commercialName = "Tetanus  Toxoid Vaccine Adsorbed"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Serum Institute of India"
* responsibleNRA.text = "Central Drugs Standard Control Organization (CDSCO)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MiiFUAS"
* productName = "FVP-P-136"
* vaccineFullName = "Tetanus vaccine (adsorbed)"
* vaccineAbbreviatedName = "TT"
* vaccineCommercialName = "Tetanus  Toxoid Vaccine Adsorbed"
* manufacturerReference = Reference(Manufacturer0013X00003cPkzfQAC)
* responsibleNRAReference = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* productReference = Reference(TTProducta3K3X000006MiiFUAS)

Instance: TTProducta3K3X000006MiiFUAS
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Tetanus  Toxoid Vaccine Adsorbed"
* manufacturer = Reference(Manufacturer0013X00003cPkzfQAC) // Serum Institute of India
* doseQuantity =  20 'doses'
* classification = #TT
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MiiFUAS"

Instance: PreQuala3K3X000006MiiFUAS
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* validityPeriod.start = 1995-04-04
* product  = Reference(TTProducta3K3X000006MiiFUAS)


// Source Record Row //: 27
//  Vaccine Product ID: (a3K3X000006MiiGUAS)
//  Product Name: (FVP-P-138)
//  Date of Prequalification: (1993-02-15)
//  Vaccine Type: (MR)
//  Commercial Name: (Measles and Rubella Vaccine Live Attenuated)
//  Presentation: (Vial)
//  No. of doses: (2)
//  Manufacturer: (Serum Institute of India)
//  Responsible NRA: (Central Drugs Standard Control Organization (CDSCO))
//

Instance: PreQualDBa3K3X000006MiiGUAS
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 1993-02-15
* vaccineType.coding.code = #MR
* vaccineType.coding.display = "MR"
* commercialName = "Measles and Rubella Vaccine Live Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* manufacturer.text = "Serum Institute of India"
* responsibleNRA.text = "Central Drugs Standard Control Organization (CDSCO)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MiiGUAS"
* productName = "FVP-P-138"
* vaccineFullName = "Measles, rubella combined vaccine (live, attenuated)"
* vaccineAbbreviatedName = "MR"
* vaccineCommercialName = "Measles and Rubella Vaccine Live Attenuated"
* manufacturerReference = Reference(Manufacturer0013X00003cPkzfQAC)
* responsibleNRAReference = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* productReference = Reference(MRProducta3K3X000006MiiGUAS)

Instance: MRProducta3K3X000006MiiGUAS
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles and Rubella Vaccine Live Attenuated"
* manufacturer = Reference(Manufacturer0013X00003cPkzfQAC) // Serum Institute of India
* doseQuantity =  2 'doses'
* classification = #MR
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MiiGUAS"

Instance: PreQuala3K3X000006MiiGUAS
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* validityPeriod.start = 1993-02-15
* product  = Reference(MRProducta3K3X000006MiiGUAS)


// Source Record Row //: 28
//  Vaccine Product ID: (a3K3X000006MiiHUAS)
//  Product Name: (FVP-P-141)
//  Date of Prequalification: (2003-08-08)
//  Vaccine Type: (MMR)
//  Commercial Name: (Measles Mumps and Rubella Vaccine Live Attenuated)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India)
//  Responsible NRA: (Central Drugs Standard Control Organization (CDSCO))
//

Instance: PreQualDBa3K3X000006MiiHUAS
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2003-08-08
* vaccineType.coding.code = #MMR
* vaccineType.coding.display = "MMR"
* commercialName = "Measles Mumps and Rubella Vaccine Live Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India"
* responsibleNRA.text = "Central Drugs Standard Control Organization (CDSCO)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MiiHUAS"
* productName = "FVP-P-141"
* vaccineFullName = "Measles, mumps, rubella combined vaccine (live, attenuated)"
* vaccineAbbreviatedName = "MMR"
* vaccineCommercialName = "Measles Mumps and Rubella Vaccine Live Attenuated"
* manufacturerReference = Reference(Manufacturer0013X00003cPkzfQAC)
* responsibleNRAReference = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* productReference = Reference(MMRProducta3K3X000006MiiHUAS)

Instance: MMRProducta3K3X000006MiiHUAS
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles Mumps and Rubella Vaccine Live Attenuated"
* manufacturer = Reference(Manufacturer0013X00003cPkzfQAC) // Serum Institute of India
* doseQuantity =  1 'doses'
* classification = #MMR
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MiiHUAS"

Instance: PreQuala3K3X000006MiiHUAS
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* validityPeriod.start = 2003-08-08
* product  = Reference(MMRProducta3K3X000006MiiHUAS)


// Source Record Row //: 29
//  Vaccine Product ID: (a3K3X000006MiiIUAS)
//  Product Name: (FVP-P-142)
//  Date of Prequalification: (2003-08-08)
//  Vaccine Type: (MMR)
//  Commercial Name: (Measles Mumps and Rubella Vaccine Live Attenuated)
//  Presentation: (Vial)
//  No. of doses: (2)
//  Manufacturer: (Serum Institute of India)
//  Responsible NRA: (Central Drugs Standard Control Organization (CDSCO))
//

Instance: PreQualDBa3K3X000006MiiIUAS
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2003-08-08
* vaccineType.coding.code = #MMR
* vaccineType.coding.display = "MMR"
* commercialName = "Measles Mumps and Rubella Vaccine Live Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* manufacturer.text = "Serum Institute of India"
* responsibleNRA.text = "Central Drugs Standard Control Organization (CDSCO)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MiiIUAS"
* productName = "FVP-P-142"
* vaccineFullName = "Measles, mumps, rubella combined vaccine (live, attenuated)"
* vaccineAbbreviatedName = "MMR"
* vaccineCommercialName = "Measles Mumps and Rubella Vaccine Live Attenuated"
* manufacturerReference = Reference(Manufacturer0013X00003cPkzfQAC)
* responsibleNRAReference = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* productReference = Reference(MMRProducta3K3X000006MiiIUAS)

Instance: MMRProducta3K3X000006MiiIUAS
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles Mumps and Rubella Vaccine Live Attenuated"
* manufacturer = Reference(Manufacturer0013X00003cPkzfQAC) // Serum Institute of India
* doseQuantity =  2 'doses'
* classification = #MMR
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MiiIUAS"

Instance: PreQuala3K3X000006MiiIUAS
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* validityPeriod.start = 2003-08-08
* product  = Reference(MMRProducta3K3X000006MiiIUAS)


// Source Record Row //: 30
//  Vaccine Product ID: (a3K3X000006MiiJUAS)
//  Product Name: (FVP-P-144)
//  Date of Prequalification: (2003-08-08)
//  Vaccine Type: (MMR)
//  Commercial Name: (Measles Mumps and Rubella Vaccine Live Attenuated)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India)
//  Responsible NRA: (Central Drugs Standard Control Organization (CDSCO))
//

Instance: PreQualDBa3K3X000006MiiJUAS
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2003-08-08
* vaccineType.coding.code = #MMR
* vaccineType.coding.display = "MMR"
* commercialName = "Measles Mumps and Rubella Vaccine Live Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India"
* responsibleNRA.text = "Central Drugs Standard Control Organization (CDSCO)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MiiJUAS"
* productName = "FVP-P-144"
* vaccineFullName = "Measles, mumps, rubella combined vaccine (live, attenuated)"
* vaccineAbbreviatedName = "MMR"
* vaccineCommercialName = "Measles Mumps and Rubella Vaccine Live Attenuated"
* manufacturerReference = Reference(Manufacturer0013X00003cPkzfQAC)
* responsibleNRAReference = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* productReference = Reference(MMRProducta3K3X000006MiiJUAS)

Instance: MMRProducta3K3X000006MiiJUAS
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles Mumps and Rubella Vaccine Live Attenuated"
* manufacturer = Reference(Manufacturer0013X00003cPkzfQAC) // Serum Institute of India
* doseQuantity =  10 'doses'
* classification = #MMR
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MiiJUAS"

Instance: PreQuala3K3X000006MiiJUAS
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* validityPeriod.start = 2003-08-08
* product  = Reference(MMRProducta3K3X000006MiiJUAS)


// Source Record Row //: 31
//  Vaccine Product ID: (a3K3X000006MiiKUAS)
//  Product Name: (FVP-P-143)
//  Date of Prequalification: (2003-08-08)
//  Vaccine Type: (MMR)
//  Commercial Name: (Measles Mumps and Rubella Vaccine Live Attenuated)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Serum Institute of India)
//  Responsible NRA: (Central Drugs Standard Control Organization (CDSCO))
//

Instance: PreQualDBa3K3X000006MiiKUAS
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2003-08-08
* vaccineType.coding.code = #MMR
* vaccineType.coding.display = "MMR"
* commercialName = "Measles Mumps and Rubella Vaccine Live Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Serum Institute of India"
* responsibleNRA.text = "Central Drugs Standard Control Organization (CDSCO)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MiiKUAS"
* productName = "FVP-P-143"
* vaccineFullName = "Measles, mumps, rubella combined vaccine (live, attenuated)"
* vaccineAbbreviatedName = "MMR"
* vaccineCommercialName = "Measles Mumps and Rubella Vaccine Live Attenuated"
* manufacturerReference = Reference(Manufacturer0013X00003cPkzfQAC)
* responsibleNRAReference = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* productReference = Reference(MMRProducta3K3X000006MiiKUAS)

Instance: MMRProducta3K3X000006MiiKUAS
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles Mumps and Rubella Vaccine Live Attenuated"
* manufacturer = Reference(Manufacturer0013X00003cPkzfQAC) // Serum Institute of India
* doseQuantity =  5 'doses'
* classification = #MMR
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MiiKUAS"

Instance: PreQuala3K3X000006MiiKUAS
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* validityPeriod.start = 2003-08-08
* product  = Reference(MMRProducta3K3X000006MiiKUAS)


// Source Record Row //: 32
//  Vaccine Product ID: (a3K3X000006MiiLUAS)
//  Product Name: (FVP-P-272)
//  Date of Prequalification: (2013-10-09)
//  Vaccine Type: (JE)
//  Commercial Name: (Japanese Encephalitis Vaccine Live (SA14-14-2))
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (5)
//  Manufacturer: (Chengdu Institute of Biological Products Co. Ltd)
//  Responsible NRA: (National Medical Products Administration  (NMPA))
//

Instance: PreQualDBa3K3X000006MiiLUAS
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 2013-10-09
* vaccineType.coding.code = #JE
* vaccineType.coding.display = "JE"
* commercialName = "Japanese Encephalitis Vaccine Live (SA14-14-2)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 5
* manufacturer.text = "Chengdu Institute of Biological Products Co. Ltd"
* responsibleNRA.text = "National Medical Products Administration  (NMPA)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MiiLUAS"
* productName = "FVP-P-272"
* vaccineFullName = "Japanese encephalitis vaccine (live, attenuated) for human use"
* vaccineAbbreviatedName = "JE"
* vaccineCommercialName = "Japanese Encephalitis Vaccine Live (SA14-14-2)"
* manufacturerReference = Reference(Manufacturer0013X0000498p2qQAA)
* responsibleNRAReference = Reference(Holder0013X0000498p4wQAA) // National Medical Products Administration  (NMPA)
* productReference = Reference(JEProducta3K3X000006MiiLUAS)

Instance: JEProducta3K3X000006MiiLUAS
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Japanese Encephalitis Vaccine Live (SA14-14-2)"
* manufacturer = Reference(Manufacturer0013X0000498p2qQAA) // Chengdu Institute of Biological Products Co. Ltd
* doseQuantity =  5 'doses'
* classification = #JE
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MiiLUAS"

Instance: PreQuala3K3X000006MiiLUAS
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4wQAA) // National Medical Products Administration  (NMPA)
* validityPeriod.start = 2013-10-09
* product  = Reference(JEProducta3K3X000006MiiLUAS)


// Source Record Row //: 33
//  Vaccine Product ID: (a3K3X000006MiiMUAS)
//  Product Name: (FVP-P-145)
//  Date of Prequalification: (1993-02-15)
//  Vaccine Type: (M)
//  Commercial Name: (Measles Vaccine Live Attenuated)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India)
//  Responsible NRA: (Central Drugs Standard Control Organization (CDSCO))
//

Instance: PreQualDBa3K3X000006MiiMUAS
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 1993-02-15
* vaccineType.coding.code = #M
* vaccineType.coding.display = "M"
* commercialName = "Measles Vaccine Live Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India"
* responsibleNRA.text = "Central Drugs Standard Control Organization (CDSCO)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MiiMUAS"
* productName = "FVP-P-145"
* vaccineFullName = "Measles vaccine (live, attenuated)"
* vaccineAbbreviatedName = "M"
* vaccineCommercialName = "Measles Vaccine Live Attenuated"
* manufacturerReference = Reference(Manufacturer0013X00003cPkzfQAC)
* responsibleNRAReference = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* productReference = Reference(MProducta3K3X000006MiiMUAS)

Instance: MProducta3K3X000006MiiMUAS
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles Vaccine Live Attenuated"
* manufacturer = Reference(Manufacturer0013X00003cPkzfQAC) // Serum Institute of India
* doseQuantity =  1 'doses'
* classification = #M
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MiiMUAS"

Instance: PreQuala3K3X000006MiiMUAS
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* validityPeriod.start = 1993-02-15
* product  = Reference(MProducta3K3X000006MiiMUAS)


// Source Record Row //: 34
//  Vaccine Product ID: (a3K3X000006MiiNUAS)
//  Product Name: (FVP-P-124)
//  Date of Prequalification: (1995-04-04)
//  Vaccine Type: (DTwP)
//  Commercial Name: (Diphtheria-Tetanus-Pertussis Vaccine Adsorbed)
//  Presentation: (Ampoule)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India)
//  Responsible NRA: (Central Drugs Standard Control Organization (CDSCO))
//

Instance: PreQualDBa3K3X000006MiiNUAS
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 1995-04-04
* vaccineType.coding.code = #DTwP
* vaccineType.coding.display = "DTwP"
* commercialName = "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 1
* manufacturer.text = "Serum Institute of India"
* responsibleNRA.text = "Central Drugs Standard Control Organization (CDSCO)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MiiNUAS"
* productName = "FVP-P-124"
* vaccineFullName = "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)"
* vaccineAbbreviatedName = "DTwP"
* vaccineCommercialName = "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed"
* manufacturerReference = Reference(Manufacturer0013X00003cPkzfQAC)
* responsibleNRAReference = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* productReference = Reference(DTwPProducta3K3X000006MiiNUAS)

Instance: DTwPProducta3K3X000006MiiNUAS
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed"
* manufacturer = Reference(Manufacturer0013X00003cPkzfQAC) // Serum Institute of India
* doseQuantity =  1 'doses'
* classification = #DTwP
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MiiNUAS"

Instance: PreQuala3K3X000006MiiNUAS
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* validityPeriod.start = 1995-04-04
* product  = Reference(DTwPProducta3K3X000006MiiNUAS)


// Source Record Row //: 35
//  Vaccine Product ID: (a3K3X000006MiiOUAS)
//  Product Name: (FVP-P-125)
//  Date of Prequalification: (1995-04-04)
//  Vaccine Type: (DTwP)
//  Commercial Name: (Diphtheria-Tetanus-Pertussis Vaccine Adsorbed)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India)
//  Responsible NRA: (Central Drugs Standard Control Organization (CDSCO))
//

Instance: PreQualDBa3K3X000006MiiOUAS
InstanceOf: PreQualDBAPIWithRefs
* dateOfPrequal = 1995-04-04
* vaccineType.coding.code = #DTwP
* vaccineType.coding.display = "DTwP"
* commercialName = "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India"
* responsibleNRA.text = "Central Drugs Standard Control Organization (CDSCO)"
* productId.system = "https://extranet.who.int/prequal/api"
* productId.value = "a3K3X000006MiiOUAS"
* productName = "FVP-P-125"
* vaccineFullName = "Diphtheria, tetanus and (whole cell) pertussis vaccine (adsorbed)"
* vaccineAbbreviatedName = "DTwP"
* vaccineCommercialName = "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed"
* manufacturerReference = Reference(Manufacturer0013X00003cPkzfQAC)
* responsibleNRAReference = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* productReference = Reference(DTwPProducta3K3X000006MiiOUAS)

Instance: DTwPProducta3K3X000006MiiOUAS
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed"
* manufacturer = Reference(Manufacturer0013X00003cPkzfQAC) // Serum Institute of India
* doseQuantity =  10 'doses'
* classification = #DTwP
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial
* identifier.system = "https://extranet.who.int/prequal/api"
* identifier.value = "a3K3X000006MiiOUAS"

Instance: PreQuala3K3X000006MiiOUAS
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder0013X0000498p4fQAA) // Central Drugs Standard Control Organization (CDSCO)
* validityPeriod.start = 1995-04-04
* product  = Reference(DTwPProducta3K3X000006MiiOUAS)

