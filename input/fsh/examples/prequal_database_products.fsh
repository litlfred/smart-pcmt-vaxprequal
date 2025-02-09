
// Source Record Row //: 2
//  Date of Prequalification: (16/01/2025)
//  Vaccine Type: (Hepatitis B (Paediatric))
//  Commercial Name: (BEVAC®)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 0a80755033118a426f1d2a571df1b6df  
//

Instance: PreQualDB0a80755033118a426f1d2a571df1b6df  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2025-01-16
* vaccineType.coding.code = #HepatitisBPaediatric
* vaccineType.coding.display = "Hepatitis B (Paediatric)"
* commercialName = "BEVAC®"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "0a80755033118a426f1d2a571df1b6df  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(HepatitisBPaediatricProduct0a80755033118a426f1d2a571df1b6df  ) 

Instance: HepatitisBPaediatricProduct0a80755033118a426f1d2a571df1b6df  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BEVAC®"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  1 'doses'
* classification = #HepatitisBPaediatric
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual0a80755033118a426f1d2a571df1b6df  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2025-01-16
* product  = Reference(HepatitisBPaediatricProduct0a80755033118a426f1d2a571df1b6df  ) 

// Source Record Row //: 3
//  Date of Prequalification: (20/01/2025)
//  Vaccine Type: (Hepatitis B)
//  Commercial Name: (BEVAC®)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 29a71534ef44b701da06062075100739  
//

Instance: PreQualDB29a71534ef44b701da06062075100739  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2025-01-20
* vaccineType.coding.code = #HepatitisB
* vaccineType.coding.display = "Hepatitis B"
* commercialName = "BEVAC®"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "29a71534ef44b701da06062075100739  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(HepatitisBProduct29a71534ef44b701da06062075100739  ) 

Instance: HepatitisBProduct29a71534ef44b701da06062075100739  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BEVAC®"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  1 'doses'
* classification = #HepatitisB
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual29a71534ef44b701da06062075100739  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2025-01-20
* product  = Reference(HepatitisBProduct29a71534ef44b701da06062075100739  ) 

// Source Record Row //: 4
//  Date of Prequalification: (01/04/1998)
//  Vaccine Type: (Haemophilus influenzae type b)
//  Commercial Name: (Act-HIB)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Sanofi Pasteur)
//  Responsible NRA: (Agence nationale de sécurité du médicament et des produits de santé)
//  md5(ROW): f455a733c51ebd231f8e748ff2d54292  
//

Instance: PreQualDBf455a733c51ebd231f8e748ff2d54292  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1998-04-01
* vaccineType.coding.code = #Haemophilusinfluenzaetyp
* vaccineType.coding.display = "Haemophilus influenzae type b"
* commercialName = "Act-HIB"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Sanofi Pasteur"
* responsibleNRA.text = "Agence nationale de sécurité du médicament et des produits de santé"
* index.value = "f455a733c51ebd231f8e748ff2d54292  "
* manufacturerReference = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) 
* responsibleNRAReference = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* productReference = Reference(HaemophilusinfluenzaetypProductf455a733c51ebd231f8e748ff2d54292  ) 

Instance: HaemophilusinfluenzaetypProductf455a733c51ebd231f8e748ff2d54292  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Act-HIB"
* manufacturer = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) // Sanofi Pasteur
* doseQuantity =  1 'doses'
* classification = #Haemophilusinfluenzaetyp
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualf455a733c51ebd231f8e748ff2d54292  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* validityPeriod.start = 1998-04-01
* product  = Reference(HaemophilusinfluenzaetypProductf455a733c51ebd231f8e748ff2d54292  ) 

// Source Record Row //: 5
//  Date of Prequalification: (08/05/2017)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (acellular))
//  Commercial Name: (Adacel)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Sanofi Pasteur Limited)
//  Responsible NRA: (Health Canada - Santé Canada)
//  md5(ROW): 2b5b9b19671826d92dff00f622588487  
//

Instance: PreQualDB2b5b9b19671826d92dff00f622588487  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2017-05-08
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (acellular)"
* commercialName = "Adacel"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Sanofi Pasteur Limited"
* responsibleNRA.text = "Health Canada - Santé Canada"
* index.value = "2b5b9b19671826d92dff00f622588487  "
* manufacturerReference = Reference(Manufacturer2e05c0b54d85a829edc3312f6eda9232  ) 
* responsibleNRAReference = Reference(Holder6237d292dd8018497991076b85cae399  ) // Health Canada - Santé Canada
* productReference = Reference(DiphtheriaTetanusPertussProduct2b5b9b19671826d92dff00f622588487  ) 

Instance: DiphtheriaTetanusPertussProduct2b5b9b19671826d92dff00f622588487  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Adacel"
* manufacturer = Reference(Manufacturer2e05c0b54d85a829edc3312f6eda9232  ) // Sanofi Pasteur Limited
* doseQuantity =  1 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual2b5b9b19671826d92dff00f622588487  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder6237d292dd8018497991076b85cae399  ) // Health Canada - Santé Canada
* validityPeriod.start = 2017-05-08
* product  = Reference(DiphtheriaTetanusPertussProduct2b5b9b19671826d92dff00f622588487  ) 

// Source Record Row //: 6
//  Date of Prequalification: (11/03/1999)
//  Vaccine Type: (Diphtheria-Tetanus)
//  Commercial Name: (Adsorbed DT Vaccine)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (PT Bio Farma (Persero))
//  Responsible NRA: (National Agency of Drug and Food Control Indonesia)
//  md5(ROW): 0b291aa3e71f93edc6e5020d6702012c  
//

Instance: PreQualDB0b291aa3e71f93edc6e5020d6702012c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1999-03-11
* vaccineType.coding.code = #DiphtheriaTetanus
* vaccineType.coding.display = "Diphtheria-Tetanus"
* commercialName = "Adsorbed DT Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "PT Bio Farma (Persero)"
* responsibleNRA.text = "National Agency of Drug and Food Control Indonesia"
* index.value = "0b291aa3e71f93edc6e5020d6702012c  "
* manufacturerReference = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) 
* responsibleNRAReference = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* productReference = Reference(DiphtheriaTetanusProduct0b291aa3e71f93edc6e5020d6702012c  ) 

Instance: DiphtheriaTetanusProduct0b291aa3e71f93edc6e5020d6702012c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Adsorbed DT Vaccine"
* manufacturer = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) // PT Bio Farma (Persero)
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanus
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual0b291aa3e71f93edc6e5020d6702012c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* validityPeriod.start = 1999-03-11
* product  = Reference(DiphtheriaTetanusProduct0b291aa3e71f93edc6e5020d6702012c  ) 

// Source Record Row //: 7
//  Date of Prequalification: (07/02/2020)
//  Vaccine Type: (Influenza, seasonal (Trivalent))
//  Commercial Name: (Afluria®)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Seqirus Limited)
//  Responsible NRA: (US Food and Drug Administration- Office of Vaccine Research and Review)
//  md5(ROW): d748a38574e356813c814007a57c7781  
//

Instance: PreQualDBd748a38574e356813c814007a57c7781  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2020-02-07
* vaccineType.coding.code = #InfluenzaseasonalTrivale
* vaccineType.coding.display = "Influenza, seasonal (Trivalent)"
* commercialName = "Afluria®"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Seqirus Limited"
* responsibleNRA.text = "US Food and Drug Administration- Office of Vaccine Research and Review"
* index.value = "d748a38574e356813c814007a57c7781  "
* manufacturerReference = Reference(Manufacturer41f97525c1b4c5c2ec18ee0e4e641a04  ) 
* responsibleNRAReference = Reference(Holder2df14aa8a419a11f1b47bb8c2a82636c  ) // US Food and Drug Administration- Office of Vaccine Research and Review
* productReference = Reference(InfluenzaseasonalTrivaleProductd748a38574e356813c814007a57c7781  ) 

Instance: InfluenzaseasonalTrivaleProductd748a38574e356813c814007a57c7781  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Afluria®"
* manufacturer = Reference(Manufacturer41f97525c1b4c5c2ec18ee0e4e641a04  ) // Seqirus Limited
* doseQuantity =  10 'doses'
* classification = #InfluenzaseasonalTrivale
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuald748a38574e356813c814007a57c7781  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2df14aa8a419a11f1b47bb8c2a82636c  ) // US Food and Drug Administration- Office of Vaccine Research and Review
* validityPeriod.start = 2020-02-07
* product  = Reference(InfluenzaseasonalTrivaleProductd748a38574e356813c814007a57c7781  ) 

// Source Record Row //: 8
//  Date of Prequalification: (05/03/2019)
//  Vaccine Type: (Influenza, seasonal (Quadrivalent))
//  Commercial Name: (Afluria® Quadrivalent)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Seqirus Limited)
//  Responsible NRA: (US Food and Drug Administration- Office of Vaccine Research and Review)
//  md5(ROW): 0e15fb29d9353a3e14d4b6d4180efb5a  
//

Instance: PreQualDB0e15fb29d9353a3e14d4b6d4180efb5a  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2019-03-05
* vaccineType.coding.code = #InfluenzaseasonalQuadriv
* vaccineType.coding.display = "Influenza, seasonal (Quadrivalent)"
* commercialName = "Afluria® Quadrivalent"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Seqirus Limited"
* responsibleNRA.text = "US Food and Drug Administration- Office of Vaccine Research and Review"
* index.value = "0e15fb29d9353a3e14d4b6d4180efb5a  "
* manufacturerReference = Reference(Manufacturer41f97525c1b4c5c2ec18ee0e4e641a04  ) 
* responsibleNRAReference = Reference(Holder2df14aa8a419a11f1b47bb8c2a82636c  ) // US Food and Drug Administration- Office of Vaccine Research and Review
* productReference = Reference(InfluenzaseasonalQuadrivProduct0e15fb29d9353a3e14d4b6d4180efb5a  ) 

Instance: InfluenzaseasonalQuadrivProduct0e15fb29d9353a3e14d4b6d4180efb5a  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Afluria® Quadrivalent"
* manufacturer = Reference(Manufacturer41f97525c1b4c5c2ec18ee0e4e641a04  ) // Seqirus Limited
* doseQuantity =  10 'doses'
* classification = #InfluenzaseasonalQuadriv
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual0e15fb29d9353a3e14d4b6d4180efb5a  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2df14aa8a419a11f1b47bb8c2a82636c  ) // US Food and Drug Administration- Office of Vaccine Research and Review
* validityPeriod.start = 2019-03-05
* product  = Reference(InfluenzaseasonalQuadrivProduct0e15fb29d9353a3e14d4b6d4180efb5a  ) 

// Source Record Row //: 9
//  Date of Prequalification: (14/02/2023)
//  Vaccine Type: (Varicella)
//  Commercial Name: (BARYCELA inj.)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (GC Biopharma Corp.)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): 68d1e94dee14002a478bb763192fd4c8  
//

Instance: PreQualDB68d1e94dee14002a478bb763192fd4c8  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2023-02-14
* vaccineType.coding.code = #Varicella
* vaccineType.coding.display = "Varicella"
* commercialName = "BARYCELA inj."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "GC Biopharma Corp."
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "68d1e94dee14002a478bb763192fd4c8  "
* manufacturerReference = Reference(Manufacturer0ac2fc7e2f3857eea1bd0d6fe3e1e432  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(VaricellaProduct68d1e94dee14002a478bb763192fd4c8  ) 

Instance: VaricellaProduct68d1e94dee14002a478bb763192fd4c8  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BARYCELA inj."
* manufacturer = Reference(Manufacturer0ac2fc7e2f3857eea1bd0d6fe3e1e432  ) // GC Biopharma Corp.
* doseQuantity =  1 'doses'
* classification = #Varicella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual68d1e94dee14002a478bb763192fd4c8  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2023-02-14
* product  = Reference(VaricellaProduct68d1e94dee14002a478bb763192fd4c8  ) 

// Source Record Row //: 10
//  Date of Prequalification: (01/01/1987)
//  Vaccine Type: (BCG)
//  Commercial Name: (BCG Freeze Dried Glutamate vaccine)
//  Presentation: (Ampoule)
//  No. of doses: (10)
//  Manufacturer: (Japan BCG Laboratory)
//  Responsible NRA: (Pharmaceutical and Medical Devices Agency)
//  md5(ROW): a225473ed705ece5111f5bfcaf99f216  
//

Instance: PreQualDBa225473ed705ece5111f5bfcaf99f216  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1987-01-01
* vaccineType.coding.code = #BCG
* vaccineType.coding.display = "BCG"
* commercialName = "BCG Freeze Dried Glutamate vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 10
* manufacturer.text = "Japan BCG Laboratory"
* responsibleNRA.text = "Pharmaceutical and Medical Devices Agency"
* index.value = "a225473ed705ece5111f5bfcaf99f216  "
* manufacturerReference = Reference(Manufacturerb9ce4b3161c0bb54b370a457d22926e0  ) 
* responsibleNRAReference = Reference(Holder4d70627b72cb75bcde38e52b0f1b7db2  ) // Pharmaceutical and Medical Devices Agency
* productReference = Reference(BCGProducta225473ed705ece5111f5bfcaf99f216  ) 

Instance: BCGProducta225473ed705ece5111f5bfcaf99f216  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BCG Freeze Dried Glutamate vaccine"
* manufacturer = Reference(Manufacturerb9ce4b3161c0bb54b370a457d22926e0  ) // Japan BCG Laboratory
* doseQuantity =  10 'doses'
* classification = #BCG
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule

Instance: PreQuala225473ed705ece5111f5bfcaf99f216  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder4d70627b72cb75bcde38e52b0f1b7db2  ) // Pharmaceutical and Medical Devices Agency
* validityPeriod.start = 1987-01-01
* product  = Reference(BCGProducta225473ed705ece5111f5bfcaf99f216  ) 

// Source Record Row //: 11
//  Date of Prequalification: (01/01/1987)
//  Vaccine Type: (BCG)
//  Commercial Name: (BCG Freeze Dried Glutamate vaccine)
//  Presentation: (Ampoule)
//  No. of doses: (20)
//  Manufacturer: (Japan BCG Laboratory)
//  Responsible NRA: (Pharmaceutical and Medical Devices Agency)
//  md5(ROW): e40454e099c809e80e245d28528c4f40  
//

Instance: PreQualDBe40454e099c809e80e245d28528c4f40  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1987-01-01
* vaccineType.coding.code = #BCG
* vaccineType.coding.display = "BCG"
* commercialName = "BCG Freeze Dried Glutamate vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 20
* manufacturer.text = "Japan BCG Laboratory"
* responsibleNRA.text = "Pharmaceutical and Medical Devices Agency"
* index.value = "e40454e099c809e80e245d28528c4f40  "
* manufacturerReference = Reference(Manufacturerb9ce4b3161c0bb54b370a457d22926e0  ) 
* responsibleNRAReference = Reference(Holder4d70627b72cb75bcde38e52b0f1b7db2  ) // Pharmaceutical and Medical Devices Agency
* productReference = Reference(BCGProducte40454e099c809e80e245d28528c4f40  ) 

Instance: BCGProducte40454e099c809e80e245d28528c4f40  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BCG Freeze Dried Glutamate vaccine"
* manufacturer = Reference(Manufacturerb9ce4b3161c0bb54b370a457d22926e0  ) // Japan BCG Laboratory
* doseQuantity =  20 'doses'
* classification = #BCG
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule

Instance: PreQuale40454e099c809e80e245d28528c4f40  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder4d70627b72cb75bcde38e52b0f1b7db2  ) // Pharmaceutical and Medical Devices Agency
* validityPeriod.start = 1987-01-01
* product  = Reference(BCGProducte40454e099c809e80e245d28528c4f40  ) 

// Source Record Row //: 12
//  Date of Prequalification: (29/05/2003)
//  Vaccine Type: (BCG)
//  Commercial Name: (BCG Vaccine)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): ee4fa99e6bfabbc2a99fe3b0ec7f6db4  
//

Instance: PreQualDBee4fa99e6bfabbc2a99fe3b0ec7f6db4  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2003-05-29
* vaccineType.coding.code = #BCG
* vaccineType.coding.display = "BCG"
* commercialName = "BCG Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "ee4fa99e6bfabbc2a99fe3b0ec7f6db4  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(BCGProductee4fa99e6bfabbc2a99fe3b0ec7f6db4  ) 

Instance: BCGProductee4fa99e6bfabbc2a99fe3b0ec7f6db4  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BCG Vaccine"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  20 'doses'
* classification = #BCG
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualee4fa99e6bfabbc2a99fe3b0ec7f6db4  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2003-05-29
* product  = Reference(BCGProductee4fa99e6bfabbc2a99fe3b0ec7f6db4  ) 

// Source Record Row //: 13
//  Date of Prequalification: (03/12/2024)
//  Vaccine Type: (BCG)
//  Commercial Name: (BCG Vaccine)
//  Presentation: (Vial + Ampoule)
//  No. of doses: (20)
//  Manufacturer: (GreenSignal Bio Pharma Pvt Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 508c17fc4a3f649c75478d6bc83ab3b4  
//

Instance: PreQualDB508c17fc4a3f649c75478d6bc83ab3b4  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-12-03
* vaccineType.coding.code = #BCG
* vaccineType.coding.display = "BCG"
* commercialName = "BCG Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 20
* manufacturer.text = "GreenSignal Bio Pharma Pvt Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "508c17fc4a3f649c75478d6bc83ab3b4  "
* manufacturerReference = Reference(Manufacturer809ba2c9dd16700daf4b638fb948b814  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(BCGProduct508c17fc4a3f649c75478d6bc83ab3b4  ) 

Instance: BCGProduct508c17fc4a3f649c75478d6bc83ab3b4  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BCG Vaccine"
* manufacturer = Reference(Manufacturer809ba2c9dd16700daf4b638fb948b814  ) // GreenSignal Bio Pharma Pvt Limited
* doseQuantity =  20 'doses'
* classification = #BCG
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQual508c17fc4a3f649c75478d6bc83ab3b4  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2024-12-03
* product  = Reference(BCGProduct508c17fc4a3f649c75478d6bc83ab3b4  ) 

// Source Record Row //: 14
//  Date of Prequalification: (01/02/1991)
//  Vaccine Type: (BCG)
//  Commercial Name: (BCG Vaccine)
//  Presentation: (Ampoule)
//  No. of doses: (10)
//  Manufacturer: (BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.))
//  Responsible NRA: (Bulgarian Drug Agency)
//  md5(ROW): 92b29c115b94bfd6959395add8189921  
//

Instance: PreQualDB92b29c115b94bfd6959395add8189921  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1991-02-01
* vaccineType.coding.code = #BCG
* vaccineType.coding.display = "BCG"
* commercialName = "BCG Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 10
* manufacturer.text = "BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)"
* responsibleNRA.text = "Bulgarian Drug Agency"
* index.value = "92b29c115b94bfd6959395add8189921  "
* manufacturerReference = Reference(Manufacturer7e1075439f93207b76e283af4e5a96d5  ) 
* responsibleNRAReference = Reference(Holder2249658a617cfcc38ca334756748dcd0  ) // Bulgarian Drug Agency
* productReference = Reference(BCGProduct92b29c115b94bfd6959395add8189921  ) 

Instance: BCGProduct92b29c115b94bfd6959395add8189921  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BCG Vaccine"
* manufacturer = Reference(Manufacturer7e1075439f93207b76e283af4e5a96d5  ) // BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)
* doseQuantity =  10 'doses'
* classification = #BCG
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule

Instance: PreQual92b29c115b94bfd6959395add8189921  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2249658a617cfcc38ca334756748dcd0  ) // Bulgarian Drug Agency
* validityPeriod.start = 1991-02-01
* product  = Reference(BCGProduct92b29c115b94bfd6959395add8189921  ) 

// Source Record Row //: 15
//  Date of Prequalification: (01/02/1991)
//  Vaccine Type: (BCG)
//  Commercial Name: (BCG Vaccine)
//  Presentation: (Ampoule)
//  No. of doses: (20)
//  Manufacturer: (BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.))
//  Responsible NRA: (Bulgarian Drug Agency)
//  md5(ROW): fa2cfb4dc7d79771ed47d86a3efc9167  
//

Instance: PreQualDBfa2cfb4dc7d79771ed47d86a3efc9167  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1991-02-01
* vaccineType.coding.code = #BCG
* vaccineType.coding.display = "BCG"
* commercialName = "BCG Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 20
* manufacturer.text = "BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)"
* responsibleNRA.text = "Bulgarian Drug Agency"
* index.value = "fa2cfb4dc7d79771ed47d86a3efc9167  "
* manufacturerReference = Reference(Manufacturer7e1075439f93207b76e283af4e5a96d5  ) 
* responsibleNRAReference = Reference(Holder2249658a617cfcc38ca334756748dcd0  ) // Bulgarian Drug Agency
* productReference = Reference(BCGProductfa2cfb4dc7d79771ed47d86a3efc9167  ) 

Instance: BCGProductfa2cfb4dc7d79771ed47d86a3efc9167  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BCG Vaccine"
* manufacturer = Reference(Manufacturer7e1075439f93207b76e283af4e5a96d5  ) // BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)
* doseQuantity =  20 'doses'
* classification = #BCG
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule

Instance: PreQualfa2cfb4dc7d79771ed47d86a3efc9167  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2249658a617cfcc38ca334756748dcd0  ) // Bulgarian Drug Agency
* validityPeriod.start = 1991-02-01
* product  = Reference(BCGProductfa2cfb4dc7d79771ed47d86a3efc9167  ) 

// Source Record Row //: 16
//  Date of Prequalification: (27/09/1994)
//  Vaccine Type: (BCG)
//  Commercial Name: (BCG Vaccine AJV)
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (10)
//  Manufacturer: (AJ Vaccines A/S)
//  Responsible NRA: (Danish Medicines Agency)
//  md5(ROW): 133dc209d46d1398e03c452ad1a537ed  
//

Instance: PreQualDB133dc209d46d1398e03c452ad1a537ed  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1994-09-27
* vaccineType.coding.code = #BCG
* vaccineType.coding.display = "BCG"
* commercialName = "BCG Vaccine AJV"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 10
* manufacturer.text = "AJ Vaccines A/S"
* responsibleNRA.text = "Danish Medicines Agency"
* index.value = "133dc209d46d1398e03c452ad1a537ed  "
* manufacturerReference = Reference(Manufacturer5dc54242e07048dc1f0433b45d61957c  ) 
* responsibleNRAReference = Reference(Holdera5a3d2d85f2b1e0fcd688a9dbd32e328  ) // Danish Medicines Agency
* productReference = Reference(BCGProduct133dc209d46d1398e03c452ad1a537ed  ) 

Instance: BCGProduct133dc209d46d1398e03c452ad1a537ed  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BCG Vaccine AJV"
* manufacturer = Reference(Manufacturer5dc54242e07048dc1f0433b45d61957c  ) // AJ Vaccines A/S
* doseQuantity =  10 'doses'
* classification = #BCG
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient

Instance: PreQual133dc209d46d1398e03c452ad1a537ed  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdera5a3d2d85f2b1e0fcd688a9dbd32e328  ) // Danish Medicines Agency
* validityPeriod.start = 1994-09-27
* product  = Reference(BCGProduct133dc209d46d1398e03c452ad1a537ed  ) 

// Source Record Row //: 17
//  Date of Prequalification: (16/01/2025)
//  Vaccine Type: (Hepatitis B (Paediatric))
//  Commercial Name: (BEVAC®)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 12ac64a6373a51fb383f4d55fc5e32b8  
//

Instance: PreQualDB12ac64a6373a51fb383f4d55fc5e32b8  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2025-01-16
* vaccineType.coding.code = #HepatitisBPaediatric
* vaccineType.coding.display = "Hepatitis B (Paediatric)"
* commercialName = "BEVAC®"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "12ac64a6373a51fb383f4d55fc5e32b8  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(HepatitisBPaediatricProduct12ac64a6373a51fb383f4d55fc5e32b8  ) 

Instance: HepatitisBPaediatricProduct12ac64a6373a51fb383f4d55fc5e32b8  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BEVAC®"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  10 'doses'
* classification = #HepatitisBPaediatric
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual12ac64a6373a51fb383f4d55fc5e32b8  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2025-01-16
* product  = Reference(HepatitisBPaediatricProduct12ac64a6373a51fb383f4d55fc5e32b8  ) 

// Source Record Row //: 18
//  Date of Prequalification: (16/01/2025)
//  Vaccine Type: (Hepatitis B)
//  Commercial Name: (BEVAC®)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 790d33df8e93799f8894daabb900d356  
//

Instance: PreQualDB790d33df8e93799f8894daabb900d356  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2025-01-16
* vaccineType.coding.code = #HepatitisB
* vaccineType.coding.display = "Hepatitis B"
* commercialName = "BEVAC®"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "790d33df8e93799f8894daabb900d356  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(HepatitisBProduct790d33df8e93799f8894daabb900d356  ) 

Instance: HepatitisBProduct790d33df8e93799f8894daabb900d356  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BEVAC®"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  10 'doses'
* classification = #HepatitisB
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual790d33df8e93799f8894daabb900d356  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2025-01-16
* product  = Reference(HepatitisBProduct790d33df8e93799f8894daabb900d356  ) 

// Source Record Row //: 19
//  Date of Prequalification: (09/10/2023)
//  Vaccine Type: (Covid-19)
//  Commercial Name: (BIMERVAX)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (HIPRA HUMAN HEALTH, S.L.U)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): 8da0ece0c48e47a9df9e0ad312343219  
//

Instance: PreQualDB8da0ece0c48e47a9df9e0ad312343219  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2023-10-09
* vaccineType.coding.code = #Covid19
* vaccineType.coding.display = "Covid-19"
* commercialName = "BIMERVAX"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "HIPRA HUMAN HEALTH, S.L.U"
* responsibleNRA.text = "European Medicines Agency"
* index.value = "8da0ece0c48e47a9df9e0ad312343219  "
* manufacturerReference = Reference(Manufacturer8c92e4ffbcf50b35012bfe88689a06e3  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(Covid19Product8da0ece0c48e47a9df9e0ad312343219  ) 

Instance: Covid19Product8da0ece0c48e47a9df9e0ad312343219  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BIMERVAX"
* manufacturer = Reference(Manufacturer8c92e4ffbcf50b35012bfe88689a06e3  ) // HIPRA HUMAN HEALTH, S.L.U
* doseQuantity =  1 'doses'
* classification = #Covid19
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual8da0ece0c48e47a9df9e0ad312343219  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2023-10-09
* product  = Reference(Covid19Product8da0ece0c48e47a9df9e0ad312343219  ) 

// Source Record Row //: 20
//  Date of Prequalification: (20/03/2015)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Trivalent)
//  Commercial Name: (BIOPOLIO)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Bharat Biotech International Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): fa4849f7532d522134f4102063af1617  
//

Instance: PreQualDBfa4849f7532d522134f4102063af1617  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2015-03-20
* vaccineType.coding.code = #PolioVaccineOralOPVTriva
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Trivalent"
* commercialName = "BIOPOLIO"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Bharat Biotech International Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "fa4849f7532d522134f4102063af1617  "
* manufacturerReference = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineOralOPVTrivaProductfa4849f7532d522134f4102063af1617  ) 

Instance: PolioVaccineOralOPVTrivaProductfa4849f7532d522134f4102063af1617  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BIOPOLIO"
* manufacturer = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) // Bharat Biotech International Limited
* doseQuantity =  10 'doses'
* classification = #PolioVaccineOralOPVTriva
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualfa4849f7532d522134f4102063af1617  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2015-03-20
* product  = Reference(PolioVaccineOralOPVTrivaProductfa4849f7532d522134f4102063af1617  ) 

// Source Record Row //: 21
//  Date of Prequalification: (20/03/2015)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Trivalent)
//  Commercial Name: (BIOPOLIO)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Bharat Biotech International Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 4df3a93ab495d85b3583d0cd1ae3d83e  
//

Instance: PreQualDB4df3a93ab495d85b3583d0cd1ae3d83e  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2015-03-20
* vaccineType.coding.code = #PolioVaccineOralOPVTriva
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Trivalent"
* commercialName = "BIOPOLIO"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Bharat Biotech International Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "4df3a93ab495d85b3583d0cd1ae3d83e  "
* manufacturerReference = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineOralOPVTrivaProduct4df3a93ab495d85b3583d0cd1ae3d83e  ) 

Instance: PolioVaccineOralOPVTrivaProduct4df3a93ab495d85b3583d0cd1ae3d83e  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BIOPOLIO"
* manufacturer = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) // Bharat Biotech International Limited
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVTriva
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual4df3a93ab495d85b3583d0cd1ae3d83e  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2015-03-20
* product  = Reference(PolioVaccineOralOPVTrivaProduct4df3a93ab495d85b3583d0cd1ae3d83e  ) 

// Source Record Row //: 22
//  Date of Prequalification: (25/08/2017)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3)
//  Commercial Name: (BIOPOLIO B1/3)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Bharat Biotech International Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 16e883911ea0108b8213bc213c9972fe  
//

Instance: PreQualDB16e883911ea0108b8213bc213c9972fe  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2017-08-25
* vaccineType.coding.code = #PolioVaccineOralOPVBival
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3"
* commercialName = "BIOPOLIO B1/3"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Bharat Biotech International Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "16e883911ea0108b8213bc213c9972fe  "
* manufacturerReference = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineOralOPVBivalProduct16e883911ea0108b8213bc213c9972fe  ) 

Instance: PolioVaccineOralOPVBivalProduct16e883911ea0108b8213bc213c9972fe  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BIOPOLIO B1/3"
* manufacturer = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) // Bharat Biotech International Limited
* doseQuantity =  10 'doses'
* classification = #PolioVaccineOralOPVBival
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual16e883911ea0108b8213bc213c9972fe  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2017-08-25
* product  = Reference(PolioVaccineOralOPVBivalProduct16e883911ea0108b8213bc213c9972fe  ) 

// Source Record Row //: 23
//  Date of Prequalification: (20/03/2015)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3)
//  Commercial Name: (BIOPOLIO B1/3)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Bharat Biotech International Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 0e59118bc5938520115bac65a45be04d  
//

Instance: PreQualDB0e59118bc5938520115bac65a45be04d  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2015-03-20
* vaccineType.coding.code = #PolioVaccineOralOPVBival
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3"
* commercialName = "BIOPOLIO B1/3"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Bharat Biotech International Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "0e59118bc5938520115bac65a45be04d  "
* manufacturerReference = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineOralOPVBivalProduct0e59118bc5938520115bac65a45be04d  ) 

Instance: PolioVaccineOralOPVBivalProduct0e59118bc5938520115bac65a45be04d  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "BIOPOLIO B1/3"
* manufacturer = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) // Bharat Biotech International Limited
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVBival
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual0e59118bc5938520115bac65a45be04d  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2015-03-20
* product  = Reference(PolioVaccineOralOPVBivalProduct0e59118bc5938520115bac65a45be04d  ) 

// Source Record Row //: 24
//  Date of Prequalification: (16/11/2021)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3)
//  Commercial Name: (Bivalent OPV Type 1 and 3 Poliomyelitis Vaccine, Live (Oral))
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Panacea Biotec Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): b62fbc87532804be42afa8d9050ef452  
//

Instance: PreQualDBb62fbc87532804be42afa8d9050ef452  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2021-11-16
* vaccineType.coding.code = #PolioVaccineOralOPVBival
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3"
* commercialName = "Bivalent OPV Type 1 and 3 Poliomyelitis Vaccine, Live (Oral)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Panacea Biotec Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "b62fbc87532804be42afa8d9050ef452  "
* manufacturerReference = Reference(Manufacturerfea9c0b58ceb56b0d925a05e74377afb  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineOralOPVBivalProductb62fbc87532804be42afa8d9050ef452  ) 

Instance: PolioVaccineOralOPVBivalProductb62fbc87532804be42afa8d9050ef452  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Bivalent OPV Type 1 and 3 Poliomyelitis Vaccine, Live (Oral)"
* manufacturer = Reference(Manufacturerfea9c0b58ceb56b0d925a05e74377afb  ) // Panacea Biotec Ltd.
* doseQuantity =  10 'doses'
* classification = #PolioVaccineOralOPVBival
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualb62fbc87532804be42afa8d9050ef452  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2021-11-16
* product  = Reference(PolioVaccineOralOPVBivalProductb62fbc87532804be42afa8d9050ef452  ) 

// Source Record Row //: 25
//  Date of Prequalification: (07/12/2018)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3)
//  Commercial Name: (Bivalent OPV Type 1 and 3 Poliomyelitis Vaccine, Live (Oral))
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Panacea Biotec Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 02c099d69cd245e7fcd3280a96f1dccb  
//

Instance: PreQualDB02c099d69cd245e7fcd3280a96f1dccb  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2018-12-07
* vaccineType.coding.code = #PolioVaccineOralOPVBival
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3"
* commercialName = "Bivalent OPV Type 1 and 3 Poliomyelitis Vaccine, Live (Oral)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Panacea Biotec Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "02c099d69cd245e7fcd3280a96f1dccb  "
* manufacturerReference = Reference(Manufacturerfea9c0b58ceb56b0d925a05e74377afb  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineOralOPVBivalProduct02c099d69cd245e7fcd3280a96f1dccb  ) 

Instance: PolioVaccineOralOPVBivalProduct02c099d69cd245e7fcd3280a96f1dccb  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Bivalent OPV Type 1 and 3 Poliomyelitis Vaccine, Live (Oral)"
* manufacturer = Reference(Manufacturerfea9c0b58ceb56b0d925a05e74377afb  ) // Panacea Biotec Ltd.
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVBival
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual02c099d69cd245e7fcd3280a96f1dccb  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2018-12-07
* product  = Reference(PolioVaccineOralOPVBivalProduct02c099d69cd245e7fcd3280a96f1dccb  ) 

// Source Record Row //: 26
//  Date of Prequalification: (05/11/2015)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3)
//  Commercial Name: (Bivalent Oral Poliomyelitis Vaccine Type 1&3 (bOPV 1&3))
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (PT Bio Farma (Persero))
//  Responsible NRA: (National Agency of Drug and Food Control Indonesia)
//  md5(ROW): decf3a77facc0b8f1443db5f7a806857  
//

Instance: PreQualDBdecf3a77facc0b8f1443db5f7a806857  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2015-11-05
* vaccineType.coding.code = #PolioVaccineOralOPVBival
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3"
* commercialName = "Bivalent Oral Poliomyelitis Vaccine Type 1&3 (bOPV 1&3)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "PT Bio Farma (Persero)"
* responsibleNRA.text = "National Agency of Drug and Food Control Indonesia"
* index.value = "decf3a77facc0b8f1443db5f7a806857  "
* manufacturerReference = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) 
* responsibleNRAReference = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* productReference = Reference(PolioVaccineOralOPVBivalProductdecf3a77facc0b8f1443db5f7a806857  ) 

Instance: PolioVaccineOralOPVBivalProductdecf3a77facc0b8f1443db5f7a806857  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Bivalent Oral Poliomyelitis Vaccine Type 1&3 (bOPV 1&3)"
* manufacturer = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) // PT Bio Farma (Persero)
* doseQuantity =  10 'doses'
* classification = #PolioVaccineOralOPVBival
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualdecf3a77facc0b8f1443db5f7a806857  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* validityPeriod.start = 2015-11-05
* product  = Reference(PolioVaccineOralOPVBivalProductdecf3a77facc0b8f1443db5f7a806857  ) 

// Source Record Row //: 27
//  Date of Prequalification: (26/05/2010)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3)
//  Commercial Name: (Bivalent Oral Poliomyelitis Vaccine Type 1&3 (bOPV 1&3))
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (PT Bio Farma (Persero))
//  Responsible NRA: (National Agency of Drug and Food Control Indonesia)
//  md5(ROW): 10aa94cef126e62542c2c45dc3604c0b  
//

Instance: PreQualDB10aa94cef126e62542c2c45dc3604c0b  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-05-26
* vaccineType.coding.code = #PolioVaccineOralOPVBival
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3"
* commercialName = "Bivalent Oral Poliomyelitis Vaccine Type 1&3 (bOPV 1&3)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "PT Bio Farma (Persero)"
* responsibleNRA.text = "National Agency of Drug and Food Control Indonesia"
* index.value = "10aa94cef126e62542c2c45dc3604c0b  "
* manufacturerReference = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) 
* responsibleNRAReference = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* productReference = Reference(PolioVaccineOralOPVBivalProduct10aa94cef126e62542c2c45dc3604c0b  ) 

Instance: PolioVaccineOralOPVBivalProduct10aa94cef126e62542c2c45dc3604c0b  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Bivalent Oral Poliomyelitis Vaccine Type 1&3 (bOPV 1&3)"
* manufacturer = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) // PT Bio Farma (Persero)
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVBival
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual10aa94cef126e62542c2c45dc3604c0b  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* validityPeriod.start = 2010-05-26
* product  = Reference(PolioVaccineOralOPVBivalProduct10aa94cef126e62542c2c45dc3604c0b  ) 

// Source Record Row //: 28
//  Date of Prequalification: (19/03/2010)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3)
//  Commercial Name: (Bivalent type 1&3 Oral Poliomyelitis vaccine, IP (bOPV1&3))
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Haffkine Bio Pharmaceutical Corporation Ltd)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 26e6c50dfb385f223a12238dc6e202dd  
//

Instance: PreQualDB26e6c50dfb385f223a12238dc6e202dd  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-03-19
* vaccineType.coding.code = #PolioVaccineOralOPVBival
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3"
* commercialName = "Bivalent type 1&3 Oral Poliomyelitis vaccine, IP (bOPV1&3)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Haffkine Bio Pharmaceutical Corporation Ltd"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "26e6c50dfb385f223a12238dc6e202dd  "
* manufacturerReference = Reference(Manufacturer42565af3e1da9c8e2b48128dd0b2b292  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineOralOPVBivalProduct26e6c50dfb385f223a12238dc6e202dd  ) 

Instance: PolioVaccineOralOPVBivalProduct26e6c50dfb385f223a12238dc6e202dd  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Bivalent type 1&3 Oral Poliomyelitis vaccine, IP (bOPV1&3)"
* manufacturer = Reference(Manufacturer42565af3e1da9c8e2b48128dd0b2b292  ) // Haffkine Bio Pharmaceutical Corporation Ltd
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVBival
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual26e6c50dfb385f223a12238dc6e202dd  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2010-03-19
* product  = Reference(PolioVaccineOralOPVBivalProduct26e6c50dfb385f223a12238dc6e202dd  ) 

// Source Record Row //: 29
//  Date of Prequalification: (09/07/2013)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (acellular))
//  Commercial Name: (Boostrix)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): d86fa01b474096e0551b7c34b93fcdfc  
//

Instance: PreQualDBd86fa01b474096e0551b7c34b93fcdfc  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2013-07-09
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (acellular)"
* commercialName = "Boostrix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "d86fa01b474096e0551b7c34b93fcdfc  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(DiphtheriaTetanusPertussProductd86fa01b474096e0551b7c34b93fcdfc  ) 

Instance: DiphtheriaTetanusPertussProductd86fa01b474096e0551b7c34b93fcdfc  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Boostrix"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  1 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuald86fa01b474096e0551b7c34b93fcdfc  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2013-07-09
* product  = Reference(DiphtheriaTetanusPertussProductd86fa01b474096e0551b7c34b93fcdfc  ) 

// Source Record Row //: 30
//  Date of Prequalification: (14/10/2021)
//  Vaccine Type: (Human Papillomavirus (Bivalent))
//  Commercial Name: (Cecolin®)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Xiamen Innovax Biotech Co. Ltd.)
//  Responsible NRA: (National Medical Products Administration)
//  md5(ROW): b342f0044a178c79f90b581a4a5208ba  
//

Instance: PreQualDBb342f0044a178c79f90b581a4a5208ba  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2021-10-14
* vaccineType.coding.code = #HumanPapillomavirusBival
* vaccineType.coding.display = "Human Papillomavirus (Bivalent)"
* commercialName = "Cecolin®"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Xiamen Innovax Biotech Co. Ltd."
* responsibleNRA.text = "National Medical Products Administration"
* index.value = "b342f0044a178c79f90b581a4a5208ba  "
* manufacturerReference = Reference(Manufacturera5cc87bbf41f05f69cabde633c076a70  ) 
* responsibleNRAReference = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* productReference = Reference(HumanPapillomavirusBivalProductb342f0044a178c79f90b581a4a5208ba  ) 

Instance: HumanPapillomavirusBivalProductb342f0044a178c79f90b581a4a5208ba  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Cecolin®"
* manufacturer = Reference(Manufacturera5cc87bbf41f05f69cabde633c076a70  ) // Xiamen Innovax Biotech Co. Ltd.
* doseQuantity =  1 'doses'
* classification = #HumanPapillomavirusBival
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualb342f0044a178c79f90b581a4a5208ba  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* validityPeriod.start = 2021-10-14
* product  = Reference(HumanPapillomavirusBivalProductb342f0044a178c79f90b581a4a5208ba  ) 

// Source Record Row //: 31
//  Date of Prequalification: (17/12/2009)
//  Vaccine Type: (Influenza, Pandemic (H1N1))
//  Commercial Name: (Celtura)
//  Presentation: (Vial)
//  No. of doses: (17)
//  Manufacturer: (Seqirus GmbH)
//  Responsible NRA: (Paul-Ehrlich-Institut)
//  md5(ROW): 8cb910c5702efa28db66bc22c8243188  
//

Instance: PreQualDB8cb910c5702efa28db66bc22c8243188  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-12-17
* vaccineType.coding.code = #InfluenzaPandemicH1N1
* vaccineType.coding.display = "Influenza, Pandemic (H1N1)"
* commercialName = "Celtura"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 17
* manufacturer.text = "Seqirus GmbH"
* responsibleNRA.text = "Paul-Ehrlich-Institut"
* index.value = "8cb910c5702efa28db66bc22c8243188  "
* manufacturerReference = Reference(Manufacturer45d45e667e2afae89b226dcbff654854  ) 
* responsibleNRAReference = Reference(Holder2ca9bea235654620194199f17ca78e94  ) // Paul-Ehrlich-Institut
* productReference = Reference(InfluenzaPandemicH1N1Product8cb910c5702efa28db66bc22c8243188  ) 

Instance: InfluenzaPandemicH1N1Product8cb910c5702efa28db66bc22c8243188  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Celtura"
* manufacturer = Reference(Manufacturer45d45e667e2afae89b226dcbff654854  ) // Seqirus GmbH
* doseQuantity =  17 'doses'
* classification = #InfluenzaPandemicH1N1
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual8cb910c5702efa28db66bc22c8243188  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2ca9bea235654620194199f17ca78e94  ) // Paul-Ehrlich-Institut
* validityPeriod.start = 2009-12-17
* product  = Reference(InfluenzaPandemicH1N1Product8cb910c5702efa28db66bc22c8243188  ) 

// Source Record Row //: 32
//  Date of Prequalification: (08/07/2009)
//  Vaccine Type: (Human Papillomavirus (Bivalent))
//  Commercial Name: (Cervarix)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): 90bc0971e6434227a7385b7965be0958  
//

Instance: PreQualDB90bc0971e6434227a7385b7965be0958  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-07-08
* vaccineType.coding.code = #HumanPapillomavirusBival
* vaccineType.coding.display = "Human Papillomavirus (Bivalent)"
* commercialName = "Cervarix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "90bc0971e6434227a7385b7965be0958  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(HumanPapillomavirusBivalProduct90bc0971e6434227a7385b7965be0958  ) 

Instance: HumanPapillomavirusBivalProduct90bc0971e6434227a7385b7965be0958  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Cervarix"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  1 'doses'
* classification = #HumanPapillomavirusBival
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual90bc0971e6434227a7385b7965be0958  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2009-07-08
* product  = Reference(HumanPapillomavirusBivalProduct90bc0971e6434227a7385b7965be0958  ) 

// Source Record Row //: 33
//  Date of Prequalification: (08/07/2009)
//  Vaccine Type: (Human Papillomavirus (Bivalent))
//  Commercial Name: (Cervarix)
//  Presentation: (Vial)
//  No. of doses: (2)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): d74dd5ffaeebfbdedd5ee981b05b45f5  
//

Instance: PreQualDBd74dd5ffaeebfbdedd5ee981b05b45f5  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-07-08
* vaccineType.coding.code = #HumanPapillomavirusBival
* vaccineType.coding.display = "Human Papillomavirus (Bivalent)"
* commercialName = "Cervarix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "d74dd5ffaeebfbdedd5ee981b05b45f5  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(HumanPapillomavirusBivalProductd74dd5ffaeebfbdedd5ee981b05b45f5  ) 

Instance: HumanPapillomavirusBivalProductd74dd5ffaeebfbdedd5ee981b05b45f5  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Cervarix"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  2 'doses'
* classification = #HumanPapillomavirusBival
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuald74dd5ffaeebfbdedd5ee981b05b45f5  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2009-07-08
* product  = Reference(HumanPapillomavirusBivalProductd74dd5ffaeebfbdedd5ee981b05b45f5  ) 

// Source Record Row //: 34
//  Date of Prequalification: (09/10/2024)
//  Vaccine Type: (Covid-19)
//  Commercial Name: (Comirnaty®)
//  Presentation: (Vial)
//  No. of doses: ()
//  Manufacturer: (BioNTech Manufacturing GmbH)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): 2afac141c6a2f5d7231a1db67e0613a5  
//

Instance: PreQualDB2afac141c6a2f5d7231a1db67e0613a5  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-10-09
* vaccineType.coding.code = #Covid19
* vaccineType.coding.display = "Covid-19"
* commercialName = "Comirnaty®"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* manufacturer.text = "BioNTech Manufacturing GmbH"
* responsibleNRA.text = "European Medicines Agency"
* index.value = "2afac141c6a2f5d7231a1db67e0613a5  "
* manufacturerReference = Reference(Manufacturere9bbc99629b5c4f5c92009585b5deb4d  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(Covid19Product2afac141c6a2f5d7231a1db67e0613a5  ) 

Instance: Covid19Product2afac141c6a2f5d7231a1db67e0613a5  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Comirnaty®"
* manufacturer = Reference(Manufacturere9bbc99629b5c4f5c92009585b5deb4d  ) // BioNTech Manufacturing GmbH
* classification = #Covid19
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual2afac141c6a2f5d7231a1db67e0613a5  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2024-10-09
* product  = Reference(Covid19Product2afac141c6a2f5d7231a1db67e0613a5  ) 

// Source Record Row //: 35
//  Date of Prequalification: (19/12/2023)
//  Vaccine Type: (Malaria)
//  Commercial Name: (CYVAC)
//  Presentation: (Vial)
//  No. of doses: (2)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 88d9bdf685abb8563d94dae08fc1d860  
//

Instance: PreQualDB88d9bdf685abb8563d94dae08fc1d860  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2023-12-19
* vaccineType.coding.code = #Malaria
* vaccineType.coding.display = "Malaria"
* commercialName = "CYVAC"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "88d9bdf685abb8563d94dae08fc1d860  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MalariaProduct88d9bdf685abb8563d94dae08fc1d860  ) 

Instance: MalariaProduct88d9bdf685abb8563d94dae08fc1d860  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "CYVAC"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  2 'doses'
* classification = #Malaria
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual88d9bdf685abb8563d94dae08fc1d860  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2023-12-19
* product  = Reference(MalariaProduct88d9bdf685abb8563d94dae08fc1d860  ) 

// Source Record Row //: 36
//  Date of Prequalification: (25/03/2020)
//  Vaccine Type: (Dengue Tetravalent (live, attenuated))
//  Commercial Name: (Dengvaxia)
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (5)
//  Manufacturer: (Sanofi Pasteur)
//  Responsible NRA: (Agence nationale de sécurité du médicament et des produits de santé)
//  md5(ROW): 8ffab92f1c77bcdc5b542565b27784b1  
//

Instance: PreQualDB8ffab92f1c77bcdc5b542565b27784b1  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2020-03-25
* vaccineType.coding.code = #DengueTetravalentliveatt
* vaccineType.coding.display = "Dengue Tetravalent (live, attenuated)"
* commercialName = "Dengvaxia"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 5
* manufacturer.text = "Sanofi Pasteur"
* responsibleNRA.text = "Agence nationale de sécurité du médicament et des produits de santé"
* index.value = "8ffab92f1c77bcdc5b542565b27784b1  "
* manufacturerReference = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) 
* responsibleNRAReference = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* productReference = Reference(DengueTetravalentliveattProduct8ffab92f1c77bcdc5b542565b27784b1  ) 

Instance: DengueTetravalentliveattProduct8ffab92f1c77bcdc5b542565b27784b1  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Dengvaxia"
* manufacturer = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) // Sanofi Pasteur
* doseQuantity =  5 'doses'
* classification = #DengueTetravalentliveatt
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient

Instance: PreQual8ffab92f1c77bcdc5b542565b27784b1  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* validityPeriod.start = 2020-03-25
* product  = Reference(DengueTetravalentliveattProduct8ffab92f1c77bcdc5b542565b27784b1  ) 

// Source Record Row //: 37
//  Date of Prequalification: (09/05/2006)
//  Vaccine Type: (Diphtheria-Tetanus)
//  Commercial Name: (Diftet)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.))
//  Responsible NRA: (Bulgarian Drug Agency)
//  md5(ROW): a0aba531248cc7cc61d06551ad5ff9d7  
//

Instance: PreQualDBa0aba531248cc7cc61d06551ad5ff9d7  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2006-05-09
* vaccineType.coding.code = #DiphtheriaTetanus
* vaccineType.coding.display = "Diphtheria-Tetanus"
* commercialName = "Diftet"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)"
* responsibleNRA.text = "Bulgarian Drug Agency"
* index.value = "a0aba531248cc7cc61d06551ad5ff9d7  "
* manufacturerReference = Reference(Manufacturer7e1075439f93207b76e283af4e5a96d5  ) 
* responsibleNRAReference = Reference(Holder2249658a617cfcc38ca334756748dcd0  ) // Bulgarian Drug Agency
* productReference = Reference(DiphtheriaTetanusProducta0aba531248cc7cc61d06551ad5ff9d7  ) 

Instance: DiphtheriaTetanusProducta0aba531248cc7cc61d06551ad5ff9d7  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diftet"
* manufacturer = Reference(Manufacturer7e1075439f93207b76e283af4e5a96d5  ) // BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanus
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuala0aba531248cc7cc61d06551ad5ff9d7  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2249658a617cfcc38ca334756748dcd0  ) // Bulgarian Drug Agency
* validityPeriod.start = 2006-05-09
* product  = Reference(DiphtheriaTetanusProducta0aba531248cc7cc61d06551ad5ff9d7  ) 

// Source Record Row //: 38
//  Date of Prequalification: (09/05/2006)
//  Vaccine Type: (Diphtheria-Tetanus)
//  Commercial Name: (Diftet)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.))
//  Responsible NRA: (Bulgarian Drug Agency)
//  md5(ROW): a5dce7e8e00b2b288510772a7a75649c  
//

Instance: PreQualDBa5dce7e8e00b2b288510772a7a75649c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2006-05-09
* vaccineType.coding.code = #DiphtheriaTetanus
* vaccineType.coding.display = "Diphtheria-Tetanus"
* commercialName = "Diftet"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)"
* responsibleNRA.text = "Bulgarian Drug Agency"
* index.value = "a5dce7e8e00b2b288510772a7a75649c  "
* manufacturerReference = Reference(Manufacturer7e1075439f93207b76e283af4e5a96d5  ) 
* responsibleNRAReference = Reference(Holder2249658a617cfcc38ca334756748dcd0  ) // Bulgarian Drug Agency
* productReference = Reference(DiphtheriaTetanusProducta5dce7e8e00b2b288510772a7a75649c  ) 

Instance: DiphtheriaTetanusProducta5dce7e8e00b2b288510772a7a75649c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diftet"
* manufacturer = Reference(Manufacturer7e1075439f93207b76e283af4e5a96d5  ) // BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)
* doseQuantity =  20 'doses'
* classification = #DiphtheriaTetanus
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuala5dce7e8e00b2b288510772a7a75649c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2249658a617cfcc38ca334756748dcd0  ) // Bulgarian Drug Agency
* validityPeriod.start = 2006-05-09
* product  = Reference(DiphtheriaTetanusProducta5dce7e8e00b2b288510772a7a75649c  ) 

// Source Record Row //: 39
//  Date of Prequalification: (04/04/1995)
//  Vaccine Type: (Diphtheria-Tetanus)
//  Commercial Name: (Diphtheria and Tetanus Vaccine Adsorbed (Paediatric))
//  Presentation: (Ampoule)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 4ceaeaed5cbda00d6675bc8593b37b9f  
//

Instance: PreQualDB4ceaeaed5cbda00d6675bc8593b37b9f  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1995-04-04
* vaccineType.coding.code = #DiphtheriaTetanus
* vaccineType.coding.display = "Diphtheria-Tetanus"
* commercialName = "Diphtheria and Tetanus Vaccine Adsorbed (Paediatric)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "4ceaeaed5cbda00d6675bc8593b37b9f  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusProduct4ceaeaed5cbda00d6675bc8593b37b9f  ) 

Instance: DiphtheriaTetanusProduct4ceaeaed5cbda00d6675bc8593b37b9f  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria and Tetanus Vaccine Adsorbed (Paediatric)"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #DiphtheriaTetanus
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule

Instance: PreQual4ceaeaed5cbda00d6675bc8593b37b9f  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 1995-04-04
* product  = Reference(DiphtheriaTetanusProduct4ceaeaed5cbda00d6675bc8593b37b9f  ) 

// Source Record Row //: 40
//  Date of Prequalification: (04/04/1995)
//  Vaccine Type: (Diphtheria-Tetanus)
//  Commercial Name: (Diphtheria and Tetanus Vaccine Adsorbed (Pediatric))
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 6fe64111c79a32586a23ac01403442ba  
//

Instance: PreQualDB6fe64111c79a32586a23ac01403442ba  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1995-04-04
* vaccineType.coding.code = #DiphtheriaTetanus
* vaccineType.coding.display = "Diphtheria-Tetanus"
* commercialName = "Diphtheria and Tetanus Vaccine Adsorbed (Pediatric)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "6fe64111c79a32586a23ac01403442ba  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusProduct6fe64111c79a32586a23ac01403442ba  ) 

Instance: DiphtheriaTetanusProduct6fe64111c79a32586a23ac01403442ba  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria and Tetanus Vaccine Adsorbed (Pediatric)"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanus
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual6fe64111c79a32586a23ac01403442ba  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 1995-04-04
* product  = Reference(DiphtheriaTetanusProduct6fe64111c79a32586a23ac01403442ba  ) 

// Source Record Row //: 41
//  Date of Prequalification: (04/04/1995)
//  Vaccine Type: (Diphtheria-Tetanus)
//  Commercial Name: (Diphtheria and Tetanus Vaccine Adsorbed (Pediatric))
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 6049297c180d7c6e46f6a9a817dcabb3  
//

Instance: PreQualDB6049297c180d7c6e46f6a9a817dcabb3  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1995-04-04
* vaccineType.coding.code = #DiphtheriaTetanus
* vaccineType.coding.display = "Diphtheria-Tetanus"
* commercialName = "Diphtheria and Tetanus Vaccine Adsorbed (Pediatric)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "6049297c180d7c6e46f6a9a817dcabb3  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusProduct6049297c180d7c6e46f6a9a817dcabb3  ) 

Instance: DiphtheriaTetanusProduct6049297c180d7c6e46f6a9a817dcabb3  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria and Tetanus Vaccine Adsorbed (Pediatric)"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  20 'doses'
* classification = #DiphtheriaTetanus
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual6049297c180d7c6e46f6a9a817dcabb3  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 1995-04-04
* product  = Reference(DiphtheriaTetanusProduct6049297c180d7c6e46f6a9a817dcabb3  ) 

// Source Record Row //: 42
//  Date of Prequalification: (04/04/1995)
//  Vaccine Type: (Diphtheria-Tetanus (reduced antigen content))
//  Commercial Name: (Diphtheria and Tetanus Vaccine Adsorbed for Adults and Adolescents)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 5fd73b2ccd79a39acb5eb336e53f8315  
//

Instance: PreQualDB5fd73b2ccd79a39acb5eb336e53f8315  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1995-04-04
* vaccineType.coding.code = #DiphtheriaTetanusreduced
* vaccineType.coding.display = "Diphtheria-Tetanus (reduced antigen content)"
* commercialName = "Diphtheria and Tetanus Vaccine Adsorbed for Adults and Adolescents"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "5fd73b2ccd79a39acb5eb336e53f8315  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusreducedProduct5fd73b2ccd79a39acb5eb336e53f8315  ) 

Instance: DiphtheriaTetanusreducedProduct5fd73b2ccd79a39acb5eb336e53f8315  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria and Tetanus Vaccine Adsorbed for Adults and Adolescents"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanusreduced
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual5fd73b2ccd79a39acb5eb336e53f8315  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 1995-04-04
* product  = Reference(DiphtheriaTetanusreducedProduct5fd73b2ccd79a39acb5eb336e53f8315  ) 

// Source Record Row //: 43
//  Date of Prequalification: (04/04/1995)
//  Vaccine Type: (Diphtheria-Tetanus (reduced antigen content))
//  Commercial Name: (Diphtheria and Tetanus Vaccine Adsorbed for Adults and Adolescents)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 5b6b854e1885d59887a4eea0f4bd7a0c  
//

Instance: PreQualDB5b6b854e1885d59887a4eea0f4bd7a0c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1995-04-04
* vaccineType.coding.code = #DiphtheriaTetanusreduced
* vaccineType.coding.display = "Diphtheria-Tetanus (reduced antigen content)"
* commercialName = "Diphtheria and Tetanus Vaccine Adsorbed for Adults and Adolescents"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "5b6b854e1885d59887a4eea0f4bd7a0c  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusreducedProduct5b6b854e1885d59887a4eea0f4bd7a0c  ) 

Instance: DiphtheriaTetanusreducedProduct5b6b854e1885d59887a4eea0f4bd7a0c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria and Tetanus Vaccine Adsorbed for Adults and Adolescents"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  20 'doses'
* classification = #DiphtheriaTetanusreduced
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual5b6b854e1885d59887a4eea0f4bd7a0c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 1995-04-04
* product  = Reference(DiphtheriaTetanusreducedProduct5b6b854e1885d59887a4eea0f4bd7a0c  ) 

// Source Record Row //: 44
//  Date of Prequalification: (04/04/1995)
//  Vaccine Type: (Diphtheria-Tetanus (reduced antigen content))
//  Commercial Name: (Diphtheria and Tetanus Vaccine Adsorbed for Adults and Adolescents)
//  Presentation: (Ampoule)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 39c0ef6a00b0846fb19fe4ca8fb376f7  
//

Instance: PreQualDB39c0ef6a00b0846fb19fe4ca8fb376f7  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1995-04-04
* vaccineType.coding.code = #DiphtheriaTetanusreduced
* vaccineType.coding.display = "Diphtheria-Tetanus (reduced antigen content)"
* commercialName = "Diphtheria and Tetanus Vaccine Adsorbed for Adults and Adolescents"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "39c0ef6a00b0846fb19fe4ca8fb376f7  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusreducedProduct39c0ef6a00b0846fb19fe4ca8fb376f7  ) 

Instance: DiphtheriaTetanusreducedProduct39c0ef6a00b0846fb19fe4ca8fb376f7  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria and Tetanus Vaccine Adsorbed for Adults and Adolescents"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #DiphtheriaTetanusreduced
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule

Instance: PreQual39c0ef6a00b0846fb19fe4ca8fb376f7  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 1995-04-04
* product  = Reference(DiphtheriaTetanusreducedProduct39c0ef6a00b0846fb19fe4ca8fb376f7  ) 

// Source Record Row //: 45
//  Date of Prequalification: (04/04/1995)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell))
//  Commercial Name: (Diphtheria-Tetanus-Pertussis Vaccine Adsorbed)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): c63556bc39df77ae14833feb5ac10a35  
//

Instance: PreQualDBc63556bc39df77ae14833feb5ac10a35  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1995-04-04
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)"
* commercialName = "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "c63556bc39df77ae14833feb5ac10a35  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProductc63556bc39df77ae14833feb5ac10a35  ) 

Instance: DiphtheriaTetanusPertussProductc63556bc39df77ae14833feb5ac10a35  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualc63556bc39df77ae14833feb5ac10a35  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 1995-04-04
* product  = Reference(DiphtheriaTetanusPertussProductc63556bc39df77ae14833feb5ac10a35  ) 

// Source Record Row //: 46
//  Date of Prequalification: (04/04/1995)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell))
//  Commercial Name: (Diphtheria-Tetanus-Pertussis Vaccine Adsorbed)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 927cff21ed0a901aa884339b766ee662  
//

Instance: PreQualDB927cff21ed0a901aa884339b766ee662  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1995-04-04
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)"
* commercialName = "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "927cff21ed0a901aa884339b766ee662  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProduct927cff21ed0a901aa884339b766ee662  ) 

Instance: DiphtheriaTetanusPertussProduct927cff21ed0a901aa884339b766ee662  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  20 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual927cff21ed0a901aa884339b766ee662  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 1995-04-04
* product  = Reference(DiphtheriaTetanusPertussProduct927cff21ed0a901aa884339b766ee662  ) 

// Source Record Row //: 47
//  Date of Prequalification: (04/04/1995)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell))
//  Commercial Name: (Diphtheria-Tetanus-Pertussis Vaccine Adsorbed)
//  Presentation: (Ampoule)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 7b8002a4a273e0a9f749c44ac968cf44  
//

Instance: PreQualDB7b8002a4a273e0a9f749c44ac968cf44  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1995-04-04
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)"
* commercialName = "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "7b8002a4a273e0a9f749c44ac968cf44  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProduct7b8002a4a273e0a9f749c44ac968cf44  ) 

Instance: DiphtheriaTetanusPertussProduct7b8002a4a273e0a9f749c44ac968cf44  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria-Tetanus-Pertussis Vaccine Adsorbed"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule

Instance: PreQual7b8002a4a273e0a9f749c44ac968cf44  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 1995-04-04
* product  = Reference(DiphtheriaTetanusPertussProduct7b8002a4a273e0a9f749c44ac968cf44  ) 

// Source Record Row //: 48
//  Date of Prequalification: (23/06/2010)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Haemophilus influenzae type b)
//  Commercial Name: (Diphtheria, Tetanus, Pertussis and Haemophilus influenzae type b Conjugate Vaccine)
//  Presentation: (Vial + Ampoule)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 2029c7c29c39910766a76fc788115bbc  
//

Instance: PreQualDB2029c7c29c39910766a76fc788115bbc  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-06-23
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Haemophilus influenzae type b"
* commercialName = "Diphtheria, Tetanus, Pertussis and Haemophilus influenzae type b Conjugate Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "2029c7c29c39910766a76fc788115bbc  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProduct2029c7c29c39910766a76fc788115bbc  ) 

Instance: DiphtheriaTetanusPertussProduct2029c7c29c39910766a76fc788115bbc  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria, Tetanus, Pertussis and Haemophilus influenzae type b Conjugate Vaccine"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQual2029c7c29c39910766a76fc788115bbc  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2010-06-23
* product  = Reference(DiphtheriaTetanusPertussProduct2029c7c29c39910766a76fc788115bbc  ) 

// Source Record Row //: 49
//  Date of Prequalification: (26/05/2010)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine)
//  Presentation: (Vial + Ampoule)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 60c498d6555dec24de8a8ecc48ab1a02  
//

Instance: PreQualDB60c498d6555dec24de8a8ecc48ab1a02  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-05-26
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "60c498d6555dec24de8a8ecc48ab1a02  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProduct60c498d6555dec24de8a8ecc48ab1a02  ) 

Instance: DiphtheriaTetanusPertussProduct60c498d6555dec24de8a8ecc48ab1a02  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQual60c498d6555dec24de8a8ecc48ab1a02  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2010-05-26
* product  = Reference(DiphtheriaTetanusPertussProduct60c498d6555dec24de8a8ecc48ab1a02  ) 

// Source Record Row //: 50
//  Date of Prequalification: (26/05/2010)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine)
//  Presentation: (Vial + Ampoule)
//  No. of doses: (2)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 828f395532066d11d360768aa0793f54  
//

Instance: PreQualDB828f395532066d11d360768aa0793f54  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-05-26
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 2
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "828f395532066d11d360768aa0793f54  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProduct828f395532066d11d360768aa0793f54  ) 

Instance: DiphtheriaTetanusPertussProduct828f395532066d11d360768aa0793f54  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  2 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQual828f395532066d11d360768aa0793f54  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2010-05-26
* product  = Reference(DiphtheriaTetanusPertussProduct828f395532066d11d360768aa0793f54  ) 

// Source Record Row //: 51
//  Date of Prequalification: (26/05/2010)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine)
//  Presentation: (Vial + Ampoule)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): fdb459366fa4a85d1a7555bcad51264b  
//

Instance: PreQualDBfdb459366fa4a85d1a7555bcad51264b  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-05-26
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "fdb459366fa4a85d1a7555bcad51264b  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProductfdb459366fa4a85d1a7555bcad51264b  ) 

Instance: DiphtheriaTetanusPertussProductfdb459366fa4a85d1a7555bcad51264b  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQualfdb459366fa4a85d1a7555bcad51264b  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2010-05-26
* product  = Reference(DiphtheriaTetanusPertussProductfdb459366fa4a85d1a7555bcad51264b  ) 

// Source Record Row //: 52
//  Date of Prequalification: (22/09/2010)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): a438e46e3587ece79794373e69bafc4d  
//

Instance: PreQualDBa438e46e3587ece79794373e69bafc4d  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-09-22
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "a438e46e3587ece79794373e69bafc4d  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProducta438e46e3587ece79794373e69bafc4d  ) 

Instance: DiphtheriaTetanusPertussProducta438e46e3587ece79794373e69bafc4d  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuala438e46e3587ece79794373e69bafc4d  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2010-09-22
* product  = Reference(DiphtheriaTetanusPertussProducta438e46e3587ece79794373e69bafc4d  ) 

// Source Record Row //: 53
//  Date of Prequalification: (22/09/2010)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed)
//  Presentation: (Vial)
//  No. of doses: (2)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 08be2bd220651dc1c79b4d7f252461ef  
//

Instance: PreQualDB08be2bd220651dc1c79b4d7f252461ef  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-09-22
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "08be2bd220651dc1c79b4d7f252461ef  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProduct08be2bd220651dc1c79b4d7f252461ef  ) 

Instance: DiphtheriaTetanusPertussProduct08be2bd220651dc1c79b4d7f252461ef  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  2 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual08be2bd220651dc1c79b4d7f252461ef  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2010-09-22
* product  = Reference(DiphtheriaTetanusPertussProduct08be2bd220651dc1c79b4d7f252461ef  ) 

// Source Record Row //: 54
//  Date of Prequalification: (22/09/2010)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 344e3ef97d8fe6c7d58c108f82a18dfb  
//

Instance: PreQualDB344e3ef97d8fe6c7d58c108f82a18dfb  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-09-22
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "344e3ef97d8fe6c7d58c108f82a18dfb  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProduct344e3ef97d8fe6c7d58c108f82a18dfb  ) 

Instance: DiphtheriaTetanusPertussProduct344e3ef97d8fe6c7d58c108f82a18dfb  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Diphtheria, Tetanus, Pertussis, Hepatitis B and Haemophilus influenzae type b Conjugate Vaccine Adsorbed"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual344e3ef97d8fe6c7d58c108f82a18dfb  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2010-09-22
* product  = Reference(DiphtheriaTetanusPertussProduct344e3ef97d8fe6c7d58c108f82a18dfb  ) 

// Source Record Row //: 55
//  Date of Prequalification: (06/04/2001)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell))
//  Commercial Name: (DTP Vaccine)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (PT Bio Farma (Persero))
//  Responsible NRA: (National Agency of Drug and Food Control Indonesia)
//  md5(ROW): 456bd99d59edd5a285d7ca2451541021  
//

Instance: PreQualDB456bd99d59edd5a285d7ca2451541021  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2001-04-06
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)"
* commercialName = "DTP Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "PT Bio Farma (Persero)"
* responsibleNRA.text = "National Agency of Drug and Food Control Indonesia"
* index.value = "456bd99d59edd5a285d7ca2451541021  "
* manufacturerReference = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) 
* responsibleNRAReference = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* productReference = Reference(DiphtheriaTetanusPertussProduct456bd99d59edd5a285d7ca2451541021  ) 

Instance: DiphtheriaTetanusPertussProduct456bd99d59edd5a285d7ca2451541021  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "DTP Vaccine"
* manufacturer = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) // PT Bio Farma (Persero)
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual456bd99d59edd5a285d7ca2451541021  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* validityPeriod.start = 2001-04-06
* product  = Reference(DiphtheriaTetanusPertussProduct456bd99d59edd5a285d7ca2451541021  ) 

// Source Record Row //: 56
//  Date of Prequalification: (25/10/2001)
//  Vaccine Type: (cholera: inactivated oral)
//  Commercial Name: (Dukoral)
//  Presentation: (Vial + Buffer Sachet)
//  No. of doses: (1)
//  Manufacturer: (Valneva Sweden AB)
//  Responsible NRA: (Medical Products Agency)
//  md5(ROW): f1c03e02b729d1b9da196f4dbfe675f1  
//

Instance: PreQualDBf1c03e02b729d1b9da196f4dbfe675f1  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2001-10-25
* vaccineType.coding.code = #cholerainactivatedoral
* vaccineType.coding.display = "cholera: inactivated oral"
* commercialName = "Dukoral"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialBufferSachet
* presentation.coding.display = "Vial + Buffer Sachet"
* numDoses = 1
* manufacturer.text = "Valneva Sweden AB"
* responsibleNRA.text = "Medical Products Agency"
* index.value = "f1c03e02b729d1b9da196f4dbfe675f1  "
* manufacturerReference = Reference(Manufacturerf3c43b08073eb6595c2444bf313f5362  ) 
* responsibleNRAReference = Reference(Holderf651f2cc6236f906af0a310308a8de06  ) // Medical Products Agency
* productReference = Reference(cholerainactivatedoralProductf1c03e02b729d1b9da196f4dbfe675f1  ) 

Instance: cholerainactivatedoralProductf1c03e02b729d1b9da196f4dbfe675f1  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Dukoral"
* manufacturer = Reference(Manufacturerf3c43b08073eb6595c2444bf313f5362  ) // Valneva Sweden AB
* doseQuantity =  1 'doses'
* classification = #cholerainactivatedoral
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialBufferSachet

Instance: PreQualf1c03e02b729d1b9da196f4dbfe675f1  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf651f2cc6236f906af0a310308a8de06  ) // Medical Products Agency
* validityPeriod.start = 2001-10-25
* product  = Reference(cholerainactivatedoralProductf1c03e02b729d1b9da196f4dbfe675f1  ) 

// Source Record Row //: 57
//  Date of Prequalification: (02/10/2013)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (Easyfive-TT)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Panacea Biotec Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): b45f38ad231b3faff40a3b3aa2d61cca  
//

Instance: PreQualDBb45f38ad231b3faff40a3b3aa2d61cca  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2013-10-02
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "Easyfive-TT"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Panacea Biotec Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "b45f38ad231b3faff40a3b3aa2d61cca  "
* manufacturerReference = Reference(Manufacturerfea9c0b58ceb56b0d925a05e74377afb  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProductb45f38ad231b3faff40a3b3aa2d61cca  ) 

Instance: DiphtheriaTetanusPertussProductb45f38ad231b3faff40a3b3aa2d61cca  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Easyfive-TT"
* manufacturer = Reference(Manufacturerfea9c0b58ceb56b0d925a05e74377afb  ) // Panacea Biotec Ltd.
* doseQuantity =  1 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualb45f38ad231b3faff40a3b3aa2d61cca  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2013-10-02
* product  = Reference(DiphtheriaTetanusPertussProductb45f38ad231b3faff40a3b3aa2d61cca  ) 

// Source Record Row //: 58
//  Date of Prequalification: (02/10/2013)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (Easyfive-TT)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Panacea Biotec Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 4e2900c73c70158b90a240513998895d  
//

Instance: PreQualDB4e2900c73c70158b90a240513998895d  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2013-10-02
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "Easyfive-TT"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Panacea Biotec Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "4e2900c73c70158b90a240513998895d  "
* manufacturerReference = Reference(Manufacturerfea9c0b58ceb56b0d925a05e74377afb  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProduct4e2900c73c70158b90a240513998895d  ) 

Instance: DiphtheriaTetanusPertussProduct4e2900c73c70158b90a240513998895d  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Easyfive-TT"
* manufacturer = Reference(Manufacturerfea9c0b58ceb56b0d925a05e74377afb  ) // Panacea Biotec Ltd.
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual4e2900c73c70158b90a240513998895d  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2013-10-02
* product  = Reference(DiphtheriaTetanusPertussProduct4e2900c73c70158b90a240513998895d  ) 

// Source Record Row //: 59
//  Date of Prequalification: (01/01/1987)
//  Vaccine Type: (Hepatitis B)
//  Commercial Name: (Engerix)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): 624c420054fd62b8831ca6db7627ac9a  
//

Instance: PreQualDB624c420054fd62b8831ca6db7627ac9a  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1987-01-01
* vaccineType.coding.code = #HepatitisB
* vaccineType.coding.display = "Hepatitis B"
* commercialName = "Engerix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "624c420054fd62b8831ca6db7627ac9a  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(HepatitisBProduct624c420054fd62b8831ca6db7627ac9a  ) 

Instance: HepatitisBProduct624c420054fd62b8831ca6db7627ac9a  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Engerix"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  1 'doses'
* classification = #HepatitisB
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual624c420054fd62b8831ca6db7627ac9a  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 1987-01-01
* product  = Reference(HepatitisBProduct624c420054fd62b8831ca6db7627ac9a  ) 

// Source Record Row //: 60
//  Date of Prequalification: (01/01/1987)
//  Vaccine Type: (Hepatitis B)
//  Commercial Name: (Engerix)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): 6ac3603e086e99d1f9727d94433b276f  
//

Instance: PreQualDB6ac3603e086e99d1f9727d94433b276f  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1987-01-01
* vaccineType.coding.code = #HepatitisB
* vaccineType.coding.display = "Hepatitis B"
* commercialName = "Engerix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "6ac3603e086e99d1f9727d94433b276f  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(HepatitisBProduct6ac3603e086e99d1f9727d94433b276f  ) 

Instance: HepatitisBProduct6ac3603e086e99d1f9727d94433b276f  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Engerix"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  10 'doses'
* classification = #HepatitisB
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual6ac3603e086e99d1f9727d94433b276f  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 1987-01-01
* product  = Reference(HepatitisBProduct6ac3603e086e99d1f9727d94433b276f  ) 

// Source Record Row //: 61
//  Date of Prequalification: (01/01/1987)
//  Vaccine Type: (Hepatitis B)
//  Commercial Name: (Engerix)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): 53bb991260516f314ee605085dd1ba2c  
//

Instance: PreQualDB53bb991260516f314ee605085dd1ba2c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1987-01-01
* vaccineType.coding.code = #HepatitisB
* vaccineType.coding.display = "Hepatitis B"
* commercialName = "Engerix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "53bb991260516f314ee605085dd1ba2c  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(HepatitisBProduct53bb991260516f314ee605085dd1ba2c  ) 

Instance: HepatitisBProduct53bb991260516f314ee605085dd1ba2c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Engerix"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  20 'doses'
* classification = #HepatitisB
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual53bb991260516f314ee605085dd1ba2c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 1987-01-01
* product  = Reference(HepatitisBProduct53bb991260516f314ee605085dd1ba2c  ) 

// Source Record Row //: 62
//  Date of Prequalification: (12/11/2019)
//  Vaccine Type: (Ebola Zaire (rVSV∆G-ZEBOV-GP, live attenuated))
//  Commercial Name: (ERVEBO)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Merck Sharp & Dohme LLC)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): a2f4a9e07cfeebbb99d5ae2e4cc0257f  
//

Instance: PreQualDBa2f4a9e07cfeebbb99d5ae2e4cc0257f  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2019-11-12
* vaccineType.coding.code = #EbolaZairerVSVGZEBOVGPli
* vaccineType.coding.display = "Ebola Zaire (rVSV∆G-ZEBOV-GP, live attenuated)"
* commercialName = "ERVEBO"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Merck Sharp & Dohme LLC"
* responsibleNRA.text = "European Medicines Agency"
* index.value = "a2f4a9e07cfeebbb99d5ae2e4cc0257f  "
* manufacturerReference = Reference(Manufacturer764b91fadf395103d4ce901372cc0882  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(EbolaZairerVSVGZEBOVGPliProducta2f4a9e07cfeebbb99d5ae2e4cc0257f  ) 

Instance: EbolaZairerVSVGZEBOVGPliProducta2f4a9e07cfeebbb99d5ae2e4cc0257f  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "ERVEBO"
* manufacturer = Reference(Manufacturer764b91fadf395103d4ce901372cc0882  ) // Merck Sharp & Dohme LLC
* doseQuantity =  1 'doses'
* classification = #EbolaZairerVSVGZEBOVGPli
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuala2f4a9e07cfeebbb99d5ae2e4cc0257f  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2019-11-12
* product  = Reference(EbolaZairerVSVGZEBOVGPliProducta2f4a9e07cfeebbb99d5ae2e4cc0257f  ) 

// Source Record Row //: 63
//  Date of Prequalification: (10/02/2016)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (Eupenta)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (LG Chem Ltd)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): f949888fce8cdf016cfc06644a16afbb  
//

Instance: PreQualDBf949888fce8cdf016cfc06644a16afbb  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2016-02-10
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "Eupenta"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "LG Chem Ltd"
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "f949888fce8cdf016cfc06644a16afbb  "
* manufacturerReference = Reference(Manufacturer83c80215b20b5251e1c62eac65c9e90a  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(DiphtheriaTetanusPertussProductf949888fce8cdf016cfc06644a16afbb  ) 

Instance: DiphtheriaTetanusPertussProductf949888fce8cdf016cfc06644a16afbb  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Eupenta"
* manufacturer = Reference(Manufacturer83c80215b20b5251e1c62eac65c9e90a  ) // LG Chem Ltd
* doseQuantity =  1 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualf949888fce8cdf016cfc06644a16afbb  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2016-02-10
* product  = Reference(DiphtheriaTetanusPertussProductf949888fce8cdf016cfc06644a16afbb  ) 

// Source Record Row //: 64
//  Date of Prequalification: (10/02/2016)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (Eupenta)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (LG Chem Ltd)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): 9d194caa1c66fb809622f25ec6f79f5c  
//

Instance: PreQualDB9d194caa1c66fb809622f25ec6f79f5c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2016-02-10
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "Eupenta"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "LG Chem Ltd"
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "9d194caa1c66fb809622f25ec6f79f5c  "
* manufacturerReference = Reference(Manufacturer83c80215b20b5251e1c62eac65c9e90a  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(DiphtheriaTetanusPertussProduct9d194caa1c66fb809622f25ec6f79f5c  ) 

Instance: DiphtheriaTetanusPertussProduct9d194caa1c66fb809622f25ec6f79f5c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Eupenta"
* manufacturer = Reference(Manufacturer83c80215b20b5251e1c62eac65c9e90a  ) // LG Chem Ltd
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual9d194caa1c66fb809622f25ec6f79f5c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2016-02-10
* product  = Reference(DiphtheriaTetanusPertussProduct9d194caa1c66fb809622f25ec6f79f5c  ) 

// Source Record Row //: 65
//  Date of Prequalification: (01/06/2021)
//  Vaccine Type: (Polio Vaccine - Inactivated Sabin (sIPV))
//  Commercial Name: (Eupolio Inj.)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (LG Chem Ltd)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): 0854d534a200bbeffa8be0f57dad584a  
//

Instance: PreQualDB0854d534a200bbeffa8be0f57dad584a  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2021-06-01
* vaccineType.coding.code = #PolioVaccineInactivatedS
* vaccineType.coding.display = "Polio Vaccine - Inactivated Sabin (sIPV)"
* commercialName = "Eupolio Inj."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "LG Chem Ltd"
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "0854d534a200bbeffa8be0f57dad584a  "
* manufacturerReference = Reference(Manufacturer83c80215b20b5251e1c62eac65c9e90a  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(PolioVaccineInactivatedSProduct0854d534a200bbeffa8be0f57dad584a  ) 

Instance: PolioVaccineInactivatedSProduct0854d534a200bbeffa8be0f57dad584a  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Eupolio Inj."
* manufacturer = Reference(Manufacturer83c80215b20b5251e1c62eac65c9e90a  ) // LG Chem Ltd
* doseQuantity =  1 'doses'
* classification = #PolioVaccineInactivatedS
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual0854d534a200bbeffa8be0f57dad584a  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2021-06-01
* product  = Reference(PolioVaccineInactivatedSProduct0854d534a200bbeffa8be0f57dad584a  ) 

// Source Record Row //: 66
//  Date of Prequalification: (21/12/2020)
//  Vaccine Type: (Polio Vaccine - Inactivated Sabin (sIPV))
//  Commercial Name: (Eupolio Inj.)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (LG Chem Ltd)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): 031f63df3184acdf0cb82f90f316b6c3  
//

Instance: PreQualDB031f63df3184acdf0cb82f90f316b6c3  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2020-12-21
* vaccineType.coding.code = #PolioVaccineInactivatedS
* vaccineType.coding.display = "Polio Vaccine - Inactivated Sabin (sIPV)"
* commercialName = "Eupolio Inj."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "LG Chem Ltd"
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "031f63df3184acdf0cb82f90f316b6c3  "
* manufacturerReference = Reference(Manufacturer83c80215b20b5251e1c62eac65c9e90a  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(PolioVaccineInactivatedSProduct031f63df3184acdf0cb82f90f316b6c3  ) 

Instance: PolioVaccineInactivatedSProduct031f63df3184acdf0cb82f90f316b6c3  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Eupolio Inj."
* manufacturer = Reference(Manufacturer83c80215b20b5251e1c62eac65c9e90a  ) // LG Chem Ltd
* doseQuantity =  5 'doses'
* classification = #PolioVaccineInactivatedS
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual031f63df3184acdf0cb82f90f316b6c3  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2020-12-21
* product  = Reference(PolioVaccineInactivatedSProduct031f63df3184acdf0cb82f90f316b6c3  ) 

// Source Record Row //: 67
//  Date of Prequalification: (21/01/2020)
//  Vaccine Type: (Hepatitis B (Paediatric))
//  Commercial Name: (Euvax B)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (LG Chem Ltd)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): 7431cfff77d30de2a89868b3bd4a2f9d  
//

Instance: PreQualDB7431cfff77d30de2a89868b3bd4a2f9d  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2020-01-21
* vaccineType.coding.code = #HepatitisBPaediatric
* vaccineType.coding.display = "Hepatitis B (Paediatric)"
* commercialName = "Euvax B"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "LG Chem Ltd"
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "7431cfff77d30de2a89868b3bd4a2f9d  "
* manufacturerReference = Reference(Manufacturer83c80215b20b5251e1c62eac65c9e90a  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(HepatitisBPaediatricProduct7431cfff77d30de2a89868b3bd4a2f9d  ) 

Instance: HepatitisBPaediatricProduct7431cfff77d30de2a89868b3bd4a2f9d  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Euvax B"
* manufacturer = Reference(Manufacturer83c80215b20b5251e1c62eac65c9e90a  ) // LG Chem Ltd
* doseQuantity =  1 'doses'
* classification = #HepatitisBPaediatric
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual7431cfff77d30de2a89868b3bd4a2f9d  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2020-01-21
* product  = Reference(HepatitisBPaediatricProduct7431cfff77d30de2a89868b3bd4a2f9d  ) 

// Source Record Row //: 68
//  Date of Prequalification: (22/11/1996)
//  Vaccine Type: (Hepatitis B)
//  Commercial Name: (Euvax B)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (LG Chem Ltd)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): 2c48b25fdefb970fc85dbb63e04fe744  
//

Instance: PreQualDB2c48b25fdefb970fc85dbb63e04fe744  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1996-11-22
* vaccineType.coding.code = #HepatitisB
* vaccineType.coding.display = "Hepatitis B"
* commercialName = "Euvax B"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "LG Chem Ltd"
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "2c48b25fdefb970fc85dbb63e04fe744  "
* manufacturerReference = Reference(Manufacturer83c80215b20b5251e1c62eac65c9e90a  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(HepatitisBProduct2c48b25fdefb970fc85dbb63e04fe744  ) 

Instance: HepatitisBProduct2c48b25fdefb970fc85dbb63e04fe744  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Euvax B"
* manufacturer = Reference(Manufacturer83c80215b20b5251e1c62eac65c9e90a  ) // LG Chem Ltd
* doseQuantity =  1 'doses'
* classification = #HepatitisB
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual2c48b25fdefb970fc85dbb63e04fe744  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 1996-11-22
* product  = Reference(HepatitisBProduct2c48b25fdefb970fc85dbb63e04fe744  ) 

// Source Record Row //: 69
//  Date of Prequalification: (22/11/1996)
//  Vaccine Type: (Hepatitis B)
//  Commercial Name: (Euvax B)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (LG Chem Ltd)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): 953ab5cac67cbb23eeab9e794501209d  
//

Instance: PreQualDB953ab5cac67cbb23eeab9e794501209d  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1996-11-22
* vaccineType.coding.code = #HepatitisB
* vaccineType.coding.display = "Hepatitis B"
* commercialName = "Euvax B"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "LG Chem Ltd"
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "953ab5cac67cbb23eeab9e794501209d  "
* manufacturerReference = Reference(Manufacturer83c80215b20b5251e1c62eac65c9e90a  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(HepatitisBProduct953ab5cac67cbb23eeab9e794501209d  ) 

Instance: HepatitisBProduct953ab5cac67cbb23eeab9e794501209d  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Euvax B"
* manufacturer = Reference(Manufacturer83c80215b20b5251e1c62eac65c9e90a  ) // LG Chem Ltd
* doseQuantity =  10 'doses'
* classification = #HepatitisB
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual953ab5cac67cbb23eeab9e794501209d  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 1996-11-22
* product  = Reference(HepatitisBProduct953ab5cac67cbb23eeab9e794501209d  ) 

// Source Record Row //: 70
//  Date of Prequalification: (23/12/2015)
//  Vaccine Type: (cholera: inactivated oral)
//  Commercial Name: (Euvichol)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (EuBiologics Co., Ltd.)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): 9e735ce376b3d71987e9c2054ba0590a  
//

Instance: PreQualDB9e735ce376b3d71987e9c2054ba0590a  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2015-12-23
* vaccineType.coding.code = #cholerainactivatedoral
* vaccineType.coding.display = "cholera: inactivated oral"
* commercialName = "Euvichol"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "EuBiologics Co., Ltd."
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "9e735ce376b3d71987e9c2054ba0590a  "
* manufacturerReference = Reference(Manufacturercb2d11a53a6d9504a6a08ab51b9aabe7  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(cholerainactivatedoralProduct9e735ce376b3d71987e9c2054ba0590a  ) 

Instance: cholerainactivatedoralProduct9e735ce376b3d71987e9c2054ba0590a  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Euvichol"
* manufacturer = Reference(Manufacturercb2d11a53a6d9504a6a08ab51b9aabe7  ) // EuBiologics Co., Ltd.
* doseQuantity =  1 'doses'
* classification = #cholerainactivatedoral
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual9e735ce376b3d71987e9c2054ba0590a  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2015-12-23
* product  = Reference(cholerainactivatedoralProduct9e735ce376b3d71987e9c2054ba0590a  ) 

// Source Record Row //: 71
//  Date of Prequalification: (11/08/2017)
//  Vaccine Type: (cholera: inactivated oral)
//  Commercial Name: (Euvichol-Plus)
//  Presentation: (Plastic Tube)
//  No. of doses: (1)
//  Manufacturer: (EuBiologics Co., Ltd.)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): 242d7b0c599da706838dbbdaa4d78d9b  
//

Instance: PreQualDB242d7b0c599da706838dbbdaa4d78d9b  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2017-08-11
* vaccineType.coding.code = #cholerainactivatedoral
* vaccineType.coding.display = "cholera: inactivated oral"
* commercialName = "Euvichol-Plus"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #PlasticTube
* presentation.coding.display = "Plastic Tube"
* numDoses = 1
* manufacturer.text = "EuBiologics Co., Ltd."
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "242d7b0c599da706838dbbdaa4d78d9b  "
* manufacturerReference = Reference(Manufacturercb2d11a53a6d9504a6a08ab51b9aabe7  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(cholerainactivatedoralProduct242d7b0c599da706838dbbdaa4d78d9b  ) 

Instance: cholerainactivatedoralProduct242d7b0c599da706838dbbdaa4d78d9b  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Euvichol-Plus"
* manufacturer = Reference(Manufacturercb2d11a53a6d9504a6a08ab51b9aabe7  ) // EuBiologics Co., Ltd.
* doseQuantity =  1 'doses'
* classification = #cholerainactivatedoral
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #PlasticTube

Instance: PreQual242d7b0c599da706838dbbdaa4d78d9b  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2017-08-11
* product  = Reference(cholerainactivatedoralProduct242d7b0c599da706838dbbdaa4d78d9b  ) 

// Source Record Row //: 72
//  Date of Prequalification: (12/04/2024)
//  Vaccine Type: (cholera: inactivated oral)
//  Commercial Name: (Euvichol®-S)
//  Presentation: (Plastic Tube)
//  No. of doses: (1)
//  Manufacturer: (EuBiologics Co., Ltd.)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): d628c6599248f979f6fdf6145e8606b0  
//

Instance: PreQualDBd628c6599248f979f6fdf6145e8606b0  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-04-12
* vaccineType.coding.code = #cholerainactivatedoral
* vaccineType.coding.display = "cholera: inactivated oral"
* commercialName = "Euvichol®-S"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #PlasticTube
* presentation.coding.display = "Plastic Tube"
* numDoses = 1
* manufacturer.text = "EuBiologics Co., Ltd."
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "d628c6599248f979f6fdf6145e8606b0  "
* manufacturerReference = Reference(Manufacturercb2d11a53a6d9504a6a08ab51b9aabe7  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(cholerainactivatedoralProductd628c6599248f979f6fdf6145e8606b0  ) 

Instance: cholerainactivatedoralProductd628c6599248f979f6fdf6145e8606b0  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Euvichol®-S"
* manufacturer = Reference(Manufacturercb2d11a53a6d9504a6a08ab51b9aabe7  ) // EuBiologics Co., Ltd.
* doseQuantity =  1 'doses'
* classification = #cholerainactivatedoral
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #PlasticTube

Instance: PreQuald628c6599248f979f6fdf6145e8606b0  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2024-04-12
* product  = Reference(cholerainactivatedoralProductd628c6599248f979f6fdf6145e8606b0  ) 

// Source Record Row //: 73
//  Date of Prequalification: (09/01/2025)
//  Vaccine Type: (Influenza, seasonal (Trivalent))
//  Commercial Name: (FLU-M®)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Saint Petersburg Scientific Research Institute of Vaccines and Serums of the FMBA of Russia)
//  Responsible NRA: (Centro para el Control Estatal de la Calidad de los Medicamentos)
//  md5(ROW): 888045063db8e551a4e395130d66cd64  
//

Instance: PreQualDB888045063db8e551a4e395130d66cd64  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2025-01-09
* vaccineType.coding.code = #InfluenzaseasonalTrivale
* vaccineType.coding.display = "Influenza, seasonal (Trivalent)"
* commercialName = "FLU-M®"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Saint Petersburg Scientific Research Institute of Vaccines and Serums of the FMBA of Russia"
* responsibleNRA.text = "Centro para el Control Estatal de la Calidad de los Medicamentos"
* index.value = "888045063db8e551a4e395130d66cd64  "
* manufacturerReference = Reference(Manufacturer0a715f820926b2464f7113168d4f247c  ) 
* responsibleNRAReference = Reference(Holderce0f4cd586d4fa26a21297b87993de9a  ) // Centro para el Control Estatal de la Calidad de los Medicamentos
* productReference = Reference(InfluenzaseasonalTrivaleProduct888045063db8e551a4e395130d66cd64  ) 

Instance: InfluenzaseasonalTrivaleProduct888045063db8e551a4e395130d66cd64  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "FLU-M®"
* manufacturer = Reference(Manufacturer0a715f820926b2464f7113168d4f247c  ) // Saint Petersburg Scientific Research Institute of Vaccines and Serums of the FMBA of Russia
* doseQuantity =  10 'doses'
* classification = #InfluenzaseasonalTrivale
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual888045063db8e551a4e395130d66cd64  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderce0f4cd586d4fa26a21297b87993de9a  ) // Centro para el Control Estatal de la Calidad de los Medicamentos
* validityPeriod.start = 2025-01-09
* product  = Reference(InfluenzaseasonalTrivaleProduct888045063db8e551a4e395130d66cd64  ) 

// Source Record Row //: 74
//  Date of Prequalification: (04/11/2015)
//  Vaccine Type: (Influenza, seasonal (Quadrivalent))
//  Commercial Name: (Fluzone Quadrivalent (labelled as FluQuadri in other markets))
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Sanofi Pasteur Inc.)
//  Responsible NRA: (US Food and Drug Administration- Office of Vaccine Research and Review)
//  md5(ROW): 8b43bd5416101efc433940c20e424971  
//

Instance: PreQualDB8b43bd5416101efc433940c20e424971  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2015-11-04
* vaccineType.coding.code = #InfluenzaseasonalQuadriv
* vaccineType.coding.display = "Influenza, seasonal (Quadrivalent)"
* commercialName = "Fluzone Quadrivalent (labelled as FluQuadri in other markets)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Sanofi Pasteur Inc."
* responsibleNRA.text = "US Food and Drug Administration- Office of Vaccine Research and Review"
* index.value = "8b43bd5416101efc433940c20e424971  "
* manufacturerReference = Reference(Manufacturere22cd18269d4ef7420dadcc919bda6e0  ) 
* responsibleNRAReference = Reference(Holder2df14aa8a419a11f1b47bb8c2a82636c  ) // US Food and Drug Administration- Office of Vaccine Research and Review
* productReference = Reference(InfluenzaseasonalQuadrivProduct8b43bd5416101efc433940c20e424971  ) 

Instance: InfluenzaseasonalQuadrivProduct8b43bd5416101efc433940c20e424971  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Fluzone Quadrivalent (labelled as FluQuadri in other markets)"
* manufacturer = Reference(Manufacturere22cd18269d4ef7420dadcc919bda6e0  ) // Sanofi Pasteur Inc.
* doseQuantity =  1 'doses'
* classification = #InfluenzaseasonalQuadriv
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual8b43bd5416101efc433940c20e424971  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2df14aa8a419a11f1b47bb8c2a82636c  ) // US Food and Drug Administration- Office of Vaccine Research and Review
* validityPeriod.start = 2015-11-04
* product  = Reference(InfluenzaseasonalQuadrivProduct8b43bd5416101efc433940c20e424971  ) 

// Source Record Row //: 75
//  Date of Prequalification: (04/11/2015)
//  Vaccine Type: (Influenza, seasonal (Quadrivalent))
//  Commercial Name: (Fluzone Quadrivalent (labelled as FluQuadri in other markets))
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Sanofi Pasteur Inc.)
//  Responsible NRA: (US Food and Drug Administration- Office of Vaccine Research and Review)
//  md5(ROW): 37f198a748f37e28fa533b43fb8b4ca4  
//

Instance: PreQualDB37f198a748f37e28fa533b43fb8b4ca4  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2015-11-04
* vaccineType.coding.code = #InfluenzaseasonalQuadriv
* vaccineType.coding.display = "Influenza, seasonal (Quadrivalent)"
* commercialName = "Fluzone Quadrivalent (labelled as FluQuadri in other markets)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Sanofi Pasteur Inc."
* responsibleNRA.text = "US Food and Drug Administration- Office of Vaccine Research and Review"
* index.value = "37f198a748f37e28fa533b43fb8b4ca4  "
* manufacturerReference = Reference(Manufacturere22cd18269d4ef7420dadcc919bda6e0  ) 
* responsibleNRAReference = Reference(Holder2df14aa8a419a11f1b47bb8c2a82636c  ) // US Food and Drug Administration- Office of Vaccine Research and Review
* productReference = Reference(InfluenzaseasonalQuadrivProduct37f198a748f37e28fa533b43fb8b4ca4  ) 

Instance: InfluenzaseasonalQuadrivProduct37f198a748f37e28fa533b43fb8b4ca4  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Fluzone Quadrivalent (labelled as FluQuadri in other markets)"
* manufacturer = Reference(Manufacturere22cd18269d4ef7420dadcc919bda6e0  ) // Sanofi Pasteur Inc.
* doseQuantity =  10 'doses'
* classification = #InfluenzaseasonalQuadriv
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual37f198a748f37e28fa533b43fb8b4ca4  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2df14aa8a419a11f1b47bb8c2a82636c  ) // US Food and Drug Administration- Office of Vaccine Research and Review
* validityPeriod.start = 2015-11-04
* product  = Reference(InfluenzaseasonalQuadrivProduct37f198a748f37e28fa533b43fb8b4ca4  ) 

// Source Record Row //: 76
//  Date of Prequalification: (09/07/2024)
//  Vaccine Type: (Influenza, seasonal (Trivalent))
//  Commercial Name: (Fluzone® (Fluprevli™ in other markets))
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Sanofi Pasteur Inc.)
//  Responsible NRA: (US Food and Drug Administration- Office of Vaccine Research and Review)
//  md5(ROW): e6bf7aa0fe6620e314ba0c0c24a45d07  
//

Instance: PreQualDBe6bf7aa0fe6620e314ba0c0c24a45d07  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-07-09
* vaccineType.coding.code = #InfluenzaseasonalTrivale
* vaccineType.coding.display = "Influenza, seasonal (Trivalent)"
* commercialName = "Fluzone® (Fluprevli™ in other markets)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Sanofi Pasteur Inc."
* responsibleNRA.text = "US Food and Drug Administration- Office of Vaccine Research and Review"
* index.value = "e6bf7aa0fe6620e314ba0c0c24a45d07  "
* manufacturerReference = Reference(Manufacturere22cd18269d4ef7420dadcc919bda6e0  ) 
* responsibleNRAReference = Reference(Holder2df14aa8a419a11f1b47bb8c2a82636c  ) // US Food and Drug Administration- Office of Vaccine Research and Review
* productReference = Reference(InfluenzaseasonalTrivaleProducte6bf7aa0fe6620e314ba0c0c24a45d07  ) 

Instance: InfluenzaseasonalTrivaleProducte6bf7aa0fe6620e314ba0c0c24a45d07  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Fluzone® (Fluprevli™ in other markets)"
* manufacturer = Reference(Manufacturere22cd18269d4ef7420dadcc919bda6e0  ) // Sanofi Pasteur Inc.
* doseQuantity =  10 'doses'
* classification = #InfluenzaseasonalTrivale
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuale6bf7aa0fe6620e314ba0c0c24a45d07  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2df14aa8a419a11f1b47bb8c2a82636c  ) // US Food and Drug Administration- Office of Vaccine Research and Review
* validityPeriod.start = 2024-07-09
* product  = Reference(InfluenzaseasonalTrivaleProducte6bf7aa0fe6620e314ba0c0c24a45d07  ) 

// Source Record Row //: 77
//  Date of Prequalification: (16/12/2009)
//  Vaccine Type: (Influenza, Pandemic (H1N1))
//  Commercial Name: (Focetria)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Seqirus Vaccines Limited)
//  Responsible NRA: (CBER/FDA)
//  md5(ROW): c76596a60cfa755021c2efe65100805b  
//

Instance: PreQualDBc76596a60cfa755021c2efe65100805b  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-12-16
* vaccineType.coding.code = #InfluenzaPandemicH1N1
* vaccineType.coding.display = "Influenza, Pandemic (H1N1)"
* commercialName = "Focetria"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Seqirus Vaccines Limited"
* responsibleNRA.text = "CBER/FDA"
* index.value = "c76596a60cfa755021c2efe65100805b  "
* manufacturerReference = Reference(Manufacturer44bef811989f0f1c17f76defa1978713  ) 
* responsibleNRAReference = Reference(Holder9d7db6151eea8bf9048690e4b4504c90  ) // CBER/FDA
* productReference = Reference(InfluenzaPandemicH1N1Productc76596a60cfa755021c2efe65100805b  ) 

Instance: InfluenzaPandemicH1N1Productc76596a60cfa755021c2efe65100805b  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Focetria"
* manufacturer = Reference(Manufacturer44bef811989f0f1c17f76defa1978713  ) // Seqirus Vaccines Limited
* doseQuantity =  10 'doses'
* classification = #InfluenzaPandemicH1N1
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualc76596a60cfa755021c2efe65100805b  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9d7db6151eea8bf9048690e4b4504c90  ) // CBER/FDA
* validityPeriod.start = 2009-12-16
* product  = Reference(InfluenzaPandemicH1N1Productc76596a60cfa755021c2efe65100805b  ) 

// Source Record Row //: 78
//  Date of Prequalification: (09/02/2018)
//  Vaccine Type: (Human Papillomavirus (Ninevalent))
//  Commercial Name: (Gardasil 9)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Merck Sharp & Dohme LLC)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): 6d6849ce69076acc0842734b9a0d375c  
//

Instance: PreQualDB6d6849ce69076acc0842734b9a0d375c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2018-02-09
* vaccineType.coding.code = #HumanPapillomavirusNinev
* vaccineType.coding.display = "Human Papillomavirus (Ninevalent)"
* commercialName = "Gardasil 9"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Merck Sharp & Dohme LLC"
* responsibleNRA.text = "European Medicines Agency"
* index.value = "6d6849ce69076acc0842734b9a0d375c  "
* manufacturerReference = Reference(Manufacturer764b91fadf395103d4ce901372cc0882  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(HumanPapillomavirusNinevProduct6d6849ce69076acc0842734b9a0d375c  ) 

Instance: HumanPapillomavirusNinevProduct6d6849ce69076acc0842734b9a0d375c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Gardasil 9"
* manufacturer = Reference(Manufacturer764b91fadf395103d4ce901372cc0882  ) // Merck Sharp & Dohme LLC
* doseQuantity =  1 'doses'
* classification = #HumanPapillomavirusNinev
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual6d6849ce69076acc0842734b9a0d375c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2018-02-09
* product  = Reference(HumanPapillomavirusNinevProduct6d6849ce69076acc0842734b9a0d375c  ) 

// Source Record Row //: 79
//  Date of Prequalification: (20/05/2009)
//  Vaccine Type: (Human Papillomavirus (Quadrivalent))
//  Commercial Name: (Gardasil)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Merck Sharp & Dohme LLC)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): 551b21b1ec1a67bbb0009f875faf7823  
//

Instance: PreQualDB551b21b1ec1a67bbb0009f875faf7823  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-05-20
* vaccineType.coding.code = #HumanPapillomavirusQuadr
* vaccineType.coding.display = "Human Papillomavirus (Quadrivalent)"
* commercialName = "Gardasil"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Merck Sharp & Dohme LLC"
* responsibleNRA.text = "European Medicines Agency"
* index.value = "551b21b1ec1a67bbb0009f875faf7823  "
* manufacturerReference = Reference(Manufacturer764b91fadf395103d4ce901372cc0882  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(HumanPapillomavirusQuadrProduct551b21b1ec1a67bbb0009f875faf7823  ) 

Instance: HumanPapillomavirusQuadrProduct551b21b1ec1a67bbb0009f875faf7823  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Gardasil"
* manufacturer = Reference(Manufacturer764b91fadf395103d4ce901372cc0882  ) // Merck Sharp & Dohme LLC
* doseQuantity =  1 'doses'
* classification = #HumanPapillomavirusQuadr
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual551b21b1ec1a67bbb0009f875faf7823  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2009-05-20
* product  = Reference(HumanPapillomavirusQuadrProduct551b21b1ec1a67bbb0009f875faf7823  ) 

// Source Record Row //: 80
//  Date of Prequalification: (12/04/2011)
//  Vaccine Type: (Influenza, seasonal (Trivalent))
//  Commercial Name: (GC FLU  inj)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (GC Biopharma Corp.)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): f45d14eded02944191a947ce6ede1a69  
//

Instance: PreQualDBf45d14eded02944191a947ce6ede1a69  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2011-04-12
* vaccineType.coding.code = #InfluenzaseasonalTrivale
* vaccineType.coding.display = "Influenza, seasonal (Trivalent)"
* commercialName = "GC FLU  inj"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "GC Biopharma Corp."
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "f45d14eded02944191a947ce6ede1a69  "
* manufacturerReference = Reference(Manufacturer0ac2fc7e2f3857eea1bd0d6fe3e1e432  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(InfluenzaseasonalTrivaleProductf45d14eded02944191a947ce6ede1a69  ) 

Instance: InfluenzaseasonalTrivaleProductf45d14eded02944191a947ce6ede1a69  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "GC FLU  inj"
* manufacturer = Reference(Manufacturer0ac2fc7e2f3857eea1bd0d6fe3e1e432  ) // GC Biopharma Corp.
* doseQuantity =  1 'doses'
* classification = #InfluenzaseasonalTrivale
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualf45d14eded02944191a947ce6ede1a69  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2011-04-12
* product  = Reference(InfluenzaseasonalTrivaleProductf45d14eded02944191a947ce6ede1a69  ) 

// Source Record Row //: 81
//  Date of Prequalification: (07/11/2012)
//  Vaccine Type: (Influenza, seasonal (Trivalent))
//  Commercial Name: (GC FLU Multi inj.)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (GC Biopharma Corp.)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): e9f09e6a7002d6c130969c9ee5076b1d  
//

Instance: PreQualDBe9f09e6a7002d6c130969c9ee5076b1d  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2012-11-07
* vaccineType.coding.code = #InfluenzaseasonalTrivale
* vaccineType.coding.display = "Influenza, seasonal (Trivalent)"
* commercialName = "GC FLU Multi inj."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "GC Biopharma Corp."
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "e9f09e6a7002d6c130969c9ee5076b1d  "
* manufacturerReference = Reference(Manufacturer0ac2fc7e2f3857eea1bd0d6fe3e1e432  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(InfluenzaseasonalTrivaleProducte9f09e6a7002d6c130969c9ee5076b1d  ) 

Instance: InfluenzaseasonalTrivaleProducte9f09e6a7002d6c130969c9ee5076b1d  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "GC FLU Multi inj."
* manufacturer = Reference(Manufacturer0ac2fc7e2f3857eea1bd0d6fe3e1e432  ) // GC Biopharma Corp.
* doseQuantity =  10 'doses'
* classification = #InfluenzaseasonalTrivale
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuale9f09e6a7002d6c130969c9ee5076b1d  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2012-11-07
* product  = Reference(InfluenzaseasonalTrivaleProducte9f09e6a7002d6c130969c9ee5076b1d  ) 

// Source Record Row //: 82
//  Date of Prequalification: (21/12/2016)
//  Vaccine Type: (Influenza, seasonal (Quadrivalent))
//  Commercial Name: (GC FLU Quadrivalent inj.)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (GC Biopharma Corp.)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): b9a1bcee5471105a80864fdc3ca80945  
//

Instance: PreQualDBb9a1bcee5471105a80864fdc3ca80945  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2016-12-21
* vaccineType.coding.code = #InfluenzaseasonalQuadriv
* vaccineType.coding.display = "Influenza, seasonal (Quadrivalent)"
* commercialName = "GC FLU Quadrivalent inj."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "GC Biopharma Corp."
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "b9a1bcee5471105a80864fdc3ca80945  "
* manufacturerReference = Reference(Manufacturer0ac2fc7e2f3857eea1bd0d6fe3e1e432  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(InfluenzaseasonalQuadrivProductb9a1bcee5471105a80864fdc3ca80945  ) 

Instance: InfluenzaseasonalQuadrivProductb9a1bcee5471105a80864fdc3ca80945  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "GC FLU Quadrivalent inj."
* manufacturer = Reference(Manufacturer0ac2fc7e2f3857eea1bd0d6fe3e1e432  ) // GC Biopharma Corp.
* doseQuantity =  1 'doses'
* classification = #InfluenzaseasonalQuadriv
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualb9a1bcee5471105a80864fdc3ca80945  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2016-12-21
* product  = Reference(InfluenzaseasonalQuadrivProductb9a1bcee5471105a80864fdc3ca80945  ) 

// Source Record Row //: 83
//  Date of Prequalification: (03/04/2017)
//  Vaccine Type: (Influenza, seasonal (Quadrivalent))
//  Commercial Name: (GC FLU Quadrivalent Multi inj.)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (GC Biopharma Corp.)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): 183176ddf9c8c8d8a60d3fa2d8ce467f  
//

Instance: PreQualDB183176ddf9c8c8d8a60d3fa2d8ce467f  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2017-04-03
* vaccineType.coding.code = #InfluenzaseasonalQuadriv
* vaccineType.coding.display = "Influenza, seasonal (Quadrivalent)"
* commercialName = "GC FLU Quadrivalent Multi inj."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "GC Biopharma Corp."
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "183176ddf9c8c8d8a60d3fa2d8ce467f  "
* manufacturerReference = Reference(Manufacturer0ac2fc7e2f3857eea1bd0d6fe3e1e432  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(InfluenzaseasonalQuadrivProduct183176ddf9c8c8d8a60d3fa2d8ce467f  ) 

Instance: InfluenzaseasonalQuadrivProduct183176ddf9c8c8d8a60d3fa2d8ce467f  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "GC FLU Quadrivalent Multi inj."
* manufacturer = Reference(Manufacturer0ac2fc7e2f3857eea1bd0d6fe3e1e432  ) // GC Biopharma Corp.
* doseQuantity =  10 'doses'
* classification = #InfluenzaseasonalQuadriv
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual183176ddf9c8c8d8a60d3fa2d8ce467f  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2017-04-03
* product  = Reference(InfluenzaseasonalQuadrivProduct183176ddf9c8c8d8a60d3fa2d8ce467f  ) 

// Source Record Row //: 84
//  Date of Prequalification: (11/05/2010)
//  Vaccine Type: (Influenza, Pandemic (H1N1))
//  Commercial Name: (Green Flu-S)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (GC Biopharma Corp.)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): 6a7cb8b1df3d2ff48b3e61cf5924c482  
//

Instance: PreQualDB6a7cb8b1df3d2ff48b3e61cf5924c482  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-05-11
* vaccineType.coding.code = #InfluenzaPandemicH1N1
* vaccineType.coding.display = "Influenza, Pandemic (H1N1)"
* commercialName = "Green Flu-S"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "GC Biopharma Corp."
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "6a7cb8b1df3d2ff48b3e61cf5924c482  "
* manufacturerReference = Reference(Manufacturer0ac2fc7e2f3857eea1bd0d6fe3e1e432  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(InfluenzaPandemicH1N1Product6a7cb8b1df3d2ff48b3e61cf5924c482  ) 

Instance: InfluenzaPandemicH1N1Product6a7cb8b1df3d2ff48b3e61cf5924c482  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Green Flu-S"
* manufacturer = Reference(Manufacturer0ac2fc7e2f3857eea1bd0d6fe3e1e432  ) // GC Biopharma Corp.
* doseQuantity =  1 'doses'
* classification = #InfluenzaPandemicH1N1
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual6a7cb8b1df3d2ff48b3e61cf5924c482  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2010-05-11
* product  = Reference(InfluenzaPandemicH1N1Product6a7cb8b1df3d2ff48b3e61cf5924c482  ) 

// Source Record Row //: 85
//  Date of Prequalification: (17/11/2008)
//  Vaccine Type: (Haemophilus influenzae type b)
//  Commercial Name: (Haemophilus influenzae type b Conjugate Vaccine)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 8c2914a22ad193c8db2d3ef514ff2d77  
//

Instance: PreQualDB8c2914a22ad193c8db2d3ef514ff2d77  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2008-11-17
* vaccineType.coding.code = #Haemophilusinfluenzaetyp
* vaccineType.coding.display = "Haemophilus influenzae type b"
* commercialName = "Haemophilus influenzae type b Conjugate Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "8c2914a22ad193c8db2d3ef514ff2d77  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(HaemophilusinfluenzaetypProduct8c2914a22ad193c8db2d3ef514ff2d77  ) 

Instance: HaemophilusinfluenzaetypProduct8c2914a22ad193c8db2d3ef514ff2d77  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Haemophilus influenzae type b Conjugate Vaccine"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #Haemophilusinfluenzaetyp
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual8c2914a22ad193c8db2d3ef514ff2d77  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2008-11-17
* product  = Reference(HaemophilusinfluenzaetypProduct8c2914a22ad193c8db2d3ef514ff2d77  ) 

// Source Record Row //: 86
//  Date of Prequalification: (19/07/2013)
//  Vaccine Type: (Hepatitis A (Human Diploid Cell), Inactivated (Adult))
//  Commercial Name: (Havrix 1440 Adult)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): a1708bd501df3103f85e2df44bcf0003  
//

Instance: PreQualDBa1708bd501df3103f85e2df44bcf0003  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2013-07-19
* vaccineType.coding.code = #HepatitisAHumanDiploidCe
* vaccineType.coding.display = "Hepatitis A (Human Diploid Cell), Inactivated (Adult)"
* commercialName = "Havrix 1440 Adult"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "a1708bd501df3103f85e2df44bcf0003  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(HepatitisAHumanDiploidCeProducta1708bd501df3103f85e2df44bcf0003  ) 

Instance: HepatitisAHumanDiploidCeProducta1708bd501df3103f85e2df44bcf0003  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Havrix 1440 Adult"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  1 'doses'
* classification = #HepatitisAHumanDiploidCe
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuala1708bd501df3103f85e2df44bcf0003  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2013-07-19
* product  = Reference(HepatitisAHumanDiploidCeProducta1708bd501df3103f85e2df44bcf0003  ) 

// Source Record Row //: 87
//  Date of Prequalification: (19/07/2013)
//  Vaccine Type: (Hepatitis A (Human Diploid Cell), Inactivated (Paediatric))
//  Commercial Name: (Havrix 720 Junior)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): bfeb5b5e99ae6a86b27432faa78da48c  
//

Instance: PreQualDBbfeb5b5e99ae6a86b27432faa78da48c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2013-07-19
* vaccineType.coding.code = #HepatitisAHumanDiploidCe
* vaccineType.coding.display = "Hepatitis A (Human Diploid Cell), Inactivated (Paediatric)"
* commercialName = "Havrix 720 Junior"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "bfeb5b5e99ae6a86b27432faa78da48c  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(HepatitisAHumanDiploidCeProductbfeb5b5e99ae6a86b27432faa78da48c  ) 

Instance: HepatitisAHumanDiploidCeProductbfeb5b5e99ae6a86b27432faa78da48c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Havrix 720 Junior"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  1 'doses'
* classification = #HepatitisAHumanDiploidCe
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualbfeb5b5e99ae6a86b27432faa78da48c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2013-07-19
* product  = Reference(HepatitisAHumanDiploidCeProductbfeb5b5e99ae6a86b27432faa78da48c  ) 

// Source Record Row //: 88
//  Date of Prequalification: (22/12/2017)
//  Vaccine Type: (Hepatitis A (Human Diploid Cell), Inactivated (Paediatric))
//  Commercial Name: (HEALIVE)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Sinovac Biotech Co. Ltd)
//  Responsible NRA: (National Medical Products Administration)
//  md5(ROW): b1b534f4defa78597b059a190a77b357  
//

Instance: PreQualDBb1b534f4defa78597b059a190a77b357  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2017-12-22
* vaccineType.coding.code = #HepatitisAHumanDiploidCe
* vaccineType.coding.display = "Hepatitis A (Human Diploid Cell), Inactivated (Paediatric)"
* commercialName = "HEALIVE"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Sinovac Biotech Co. Ltd"
* responsibleNRA.text = "National Medical Products Administration"
* index.value = "b1b534f4defa78597b059a190a77b357  "
* manufacturerReference = Reference(Manufacturer56d509b36258f1c3e037132496afb0cb  ) 
* responsibleNRAReference = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* productReference = Reference(HepatitisAHumanDiploidCeProductb1b534f4defa78597b059a190a77b357  ) 

Instance: HepatitisAHumanDiploidCeProductb1b534f4defa78597b059a190a77b357  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "HEALIVE"
* manufacturer = Reference(Manufacturer56d509b36258f1c3e037132496afb0cb  ) // Sinovac Biotech Co. Ltd
* doseQuantity =  1 'doses'
* classification = #HepatitisAHumanDiploidCe
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualb1b534f4defa78597b059a190a77b357  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* validityPeriod.start = 2017-12-22
* product  = Reference(HepatitisAHumanDiploidCeProductb1b534f4defa78597b059a190a77b357  ) 

// Source Record Row //: 89
//  Date of Prequalification: (22/12/2017)
//  Vaccine Type: (Hepatitis A (Human Diploid Cell), Inactivated (Adult))
//  Commercial Name: (HEALIVE)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Sinovac Biotech Co. Ltd)
//  Responsible NRA: (National Medical Products Administration)
//  md5(ROW): c760d423dd3f53b4b1d83226d36a8f40  
//

Instance: PreQualDBc760d423dd3f53b4b1d83226d36a8f40  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2017-12-22
* vaccineType.coding.code = #HepatitisAHumanDiploidCe
* vaccineType.coding.display = "Hepatitis A (Human Diploid Cell), Inactivated (Adult)"
* commercialName = "HEALIVE"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Sinovac Biotech Co. Ltd"
* responsibleNRA.text = "National Medical Products Administration"
* index.value = "c760d423dd3f53b4b1d83226d36a8f40  "
* manufacturerReference = Reference(Manufacturer56d509b36258f1c3e037132496afb0cb  ) 
* responsibleNRAReference = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* productReference = Reference(HepatitisAHumanDiploidCeProductc760d423dd3f53b4b1d83226d36a8f40  ) 

Instance: HepatitisAHumanDiploidCeProductc760d423dd3f53b4b1d83226d36a8f40  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "HEALIVE"
* manufacturer = Reference(Manufacturer56d509b36258f1c3e037132496afb0cb  ) // Sinovac Biotech Co. Ltd
* doseQuantity =  1 'doses'
* classification = #HepatitisAHumanDiploidCe
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualc760d423dd3f53b4b1d83226d36a8f40  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* validityPeriod.start = 2017-12-22
* product  = Reference(HepatitisAHumanDiploidCeProductc760d423dd3f53b4b1d83226d36a8f40  ) 

// Source Record Row //: 90
//  Date of Prequalification: (11/12/2001)
//  Vaccine Type: (Hepatitis B)
//  Commercial Name: (Heberbiovac HB)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Centro de Ingenieria Genetica y Biotecnologia)
//  Responsible NRA: (Centro para el Control Estatal de la Calidad de los Medicamentos)
//  md5(ROW): 7402fe6f607aee04fc3800e7258809a9  
//

Instance: PreQualDB7402fe6f607aee04fc3800e7258809a9  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2001-12-11
* vaccineType.coding.code = #HepatitisB
* vaccineType.coding.display = "Hepatitis B"
* commercialName = "Heberbiovac HB"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Centro de Ingenieria Genetica y Biotecnologia"
* responsibleNRA.text = "Centro para el Control Estatal de la Calidad de los Medicamentos"
* index.value = "7402fe6f607aee04fc3800e7258809a9  "
* manufacturerReference = Reference(Manufacturer82c7442fbfbfbbeb896a735055627e6d  ) 
* responsibleNRAReference = Reference(Holderce0f4cd586d4fa26a21297b87993de9a  ) // Centro para el Control Estatal de la Calidad de los Medicamentos
* productReference = Reference(HepatitisBProduct7402fe6f607aee04fc3800e7258809a9  ) 

Instance: HepatitisBProduct7402fe6f607aee04fc3800e7258809a9  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Heberbiovac HB"
* manufacturer = Reference(Manufacturer82c7442fbfbfbbeb896a735055627e6d  ) // Centro de Ingenieria Genetica y Biotecnologia
* doseQuantity =  1 'doses'
* classification = #HepatitisB
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual7402fe6f607aee04fc3800e7258809a9  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderce0f4cd586d4fa26a21297b87993de9a  ) // Centro para el Control Estatal de la Calidad de los Medicamentos
* validityPeriod.start = 2001-12-11
* product  = Reference(HepatitisBProduct7402fe6f607aee04fc3800e7258809a9  ) 

// Source Record Row //: 91
//  Date of Prequalification: (11/12/2001)
//  Vaccine Type: (Hepatitis B)
//  Commercial Name: (Heberbiovac HB)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Centro de Ingenieria Genetica y Biotecnologia)
//  Responsible NRA: (Centro para el Control Estatal de la Calidad de los Medicamentos)
//  md5(ROW): a2e0420d94f1d5dcf054685ca8d84336  
//

Instance: PreQualDBa2e0420d94f1d5dcf054685ca8d84336  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2001-12-11
* vaccineType.coding.code = #HepatitisB
* vaccineType.coding.display = "Hepatitis B"
* commercialName = "Heberbiovac HB"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Centro de Ingenieria Genetica y Biotecnologia"
* responsibleNRA.text = "Centro para el Control Estatal de la Calidad de los Medicamentos"
* index.value = "a2e0420d94f1d5dcf054685ca8d84336  "
* manufacturerReference = Reference(Manufacturer82c7442fbfbfbbeb896a735055627e6d  ) 
* responsibleNRAReference = Reference(Holderce0f4cd586d4fa26a21297b87993de9a  ) // Centro para el Control Estatal de la Calidad de los Medicamentos
* productReference = Reference(HepatitisBProducta2e0420d94f1d5dcf054685ca8d84336  ) 

Instance: HepatitisBProducta2e0420d94f1d5dcf054685ca8d84336  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Heberbiovac HB"
* manufacturer = Reference(Manufacturer82c7442fbfbfbbeb896a735055627e6d  ) // Centro de Ingenieria Genetica y Biotecnologia
* doseQuantity =  10 'doses'
* classification = #HepatitisB
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuala2e0420d94f1d5dcf054685ca8d84336  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderce0f4cd586d4fa26a21297b87993de9a  ) // Centro para el Control Estatal de la Calidad de los Medicamentos
* validityPeriod.start = 2001-12-11
* product  = Reference(HepatitisBProducta2e0420d94f1d5dcf054685ca8d84336  ) 

// Source Record Row //: 92
//  Date of Prequalification: (12/11/2004)
//  Vaccine Type: (Hepatitis B)
//  Commercial Name: (Hepatitis B Vaccine (rDNA) (Adult))
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): c63592587d84458436293a1b52964f2d  
//

Instance: PreQualDBc63592587d84458436293a1b52964f2d  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2004-11-12
* vaccineType.coding.code = #HepatitisB
* vaccineType.coding.display = "Hepatitis B"
* commercialName = "Hepatitis B Vaccine (rDNA) (Adult)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "c63592587d84458436293a1b52964f2d  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(HepatitisBProductc63592587d84458436293a1b52964f2d  ) 

Instance: HepatitisBProductc63592587d84458436293a1b52964f2d  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Hepatitis B Vaccine (rDNA) (Adult)"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #HepatitisB
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualc63592587d84458436293a1b52964f2d  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2004-11-12
* product  = Reference(HepatitisBProductc63592587d84458436293a1b52964f2d  ) 

// Source Record Row //: 93
//  Date of Prequalification: (12/11/2004)
//  Vaccine Type: (Hepatitis B)
//  Commercial Name: (Hepatitis B Vaccine (rDNA) (Adult))
//  Presentation: (Ampoule or Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 5d90a5f85cfbcea91790d1d66c17c8ed  
//

Instance: PreQualDB5d90a5f85cfbcea91790d1d66c17c8ed  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2004-11-12
* vaccineType.coding.code = #HepatitisB
* vaccineType.coding.display = "Hepatitis B"
* commercialName = "Hepatitis B Vaccine (rDNA) (Adult)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #AmpouleorVial
* presentation.coding.display = "Ampoule or Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "5d90a5f85cfbcea91790d1d66c17c8ed  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(HepatitisBProduct5d90a5f85cfbcea91790d1d66c17c8ed  ) 

Instance: HepatitisBProduct5d90a5f85cfbcea91790d1d66c17c8ed  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Hepatitis B Vaccine (rDNA) (Adult)"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #HepatitisB
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #AmpouleorVial

Instance: PreQual5d90a5f85cfbcea91790d1d66c17c8ed  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2004-11-12
* product  = Reference(HepatitisBProduct5d90a5f85cfbcea91790d1d66c17c8ed  ) 

// Source Record Row //: 94
//  Date of Prequalification: (12/11/2004)
//  Vaccine Type: (Hepatitis B)
//  Commercial Name: (Hepatitis B Vaccine (rDNA) (Paediatric))
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 2c7bb1d3d1f6b656f2b91e6399ac8935  
//

Instance: PreQualDB2c7bb1d3d1f6b656f2b91e6399ac8935  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2004-11-12
* vaccineType.coding.code = #HepatitisB
* vaccineType.coding.display = "Hepatitis B"
* commercialName = "Hepatitis B Vaccine (rDNA) (Paediatric)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "2c7bb1d3d1f6b656f2b91e6399ac8935  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(HepatitisBProduct2c7bb1d3d1f6b656f2b91e6399ac8935  ) 

Instance: HepatitisBProduct2c7bb1d3d1f6b656f2b91e6399ac8935  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Hepatitis B Vaccine (rDNA) (Paediatric)"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #HepatitisB
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual2c7bb1d3d1f6b656f2b91e6399ac8935  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2004-11-12
* product  = Reference(HepatitisBProduct2c7bb1d3d1f6b656f2b91e6399ac8935  ) 

// Source Record Row //: 95
//  Date of Prequalification: (12/11/2004)
//  Vaccine Type: (Hepatitis B)
//  Commercial Name: (Hepatitis B Vaccine (rDNA) (Paedriatic))
//  Presentation: (Ampoule or Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): b2a3129f600781cc753b011290b09acb  
//

Instance: PreQualDBb2a3129f600781cc753b011290b09acb  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2004-11-12
* vaccineType.coding.code = #HepatitisB
* vaccineType.coding.display = "Hepatitis B"
* commercialName = "Hepatitis B Vaccine (rDNA) (Paedriatic)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #AmpouleorVial
* presentation.coding.display = "Ampoule or Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "b2a3129f600781cc753b011290b09acb  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(HepatitisBProductb2a3129f600781cc753b011290b09acb  ) 

Instance: HepatitisBProductb2a3129f600781cc753b011290b09acb  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Hepatitis B Vaccine (rDNA) (Paedriatic)"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #HepatitisB
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #AmpouleorVial

Instance: PreQualb2a3129f600781cc753b011290b09acb  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2004-11-12
* product  = Reference(HepatitisBProductb2a3129f600781cc753b011290b09acb  ) 

// Source Record Row //: 96
//  Date of Prequalification: (21/03/2024)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b-Polio (Inactivated))
//  Commercial Name: (HEXASIIL)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): f4177b409d09d83e48630717437c5aea  
//

Instance: PreQualDBf4177b409d09d83e48630717437c5aea  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-03-21
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b-Polio (Inactivated)"
* commercialName = "HEXASIIL"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "f4177b409d09d83e48630717437c5aea  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProductf4177b409d09d83e48630717437c5aea  ) 

Instance: DiphtheriaTetanusPertussProductf4177b409d09d83e48630717437c5aea  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "HEXASIIL"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualf4177b409d09d83e48630717437c5aea  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2024-03-21
* product  = Reference(DiphtheriaTetanusPertussProductf4177b409d09d83e48630717437c5aea  ) 

// Source Record Row //: 97
//  Date of Prequalification: (21/03/2024)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b-Polio (Inactivated))
//  Commercial Name: (HEXASIIL)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 0e63b58e2976f385b77a9b5a356b68b5  
//

Instance: PreQualDB0e63b58e2976f385b77a9b5a356b68b5  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-03-21
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b-Polio (Inactivated)"
* commercialName = "HEXASIIL"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "0e63b58e2976f385b77a9b5a356b68b5  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProduct0e63b58e2976f385b77a9b5a356b68b5  ) 

Instance: DiphtheriaTetanusPertussProduct0e63b58e2976f385b77a9b5a356b68b5  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "HEXASIIL"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual0e63b58e2976f385b77a9b5a356b68b5  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2024-03-21
* product  = Reference(DiphtheriaTetanusPertussProduct0e63b58e2976f385b77a9b5a356b68b5  ) 

// Source Record Row //: 98
//  Date of Prequalification: (19/12/2014)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (acellular)-Hepatitis B-Haemophilus influenzae type b-Polio (Inactivated))
//  Commercial Name: (Hexaxim)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Sanofi Pasteur)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): d54558e2851d29311ee7f90975827dc7  
//

Instance: PreQualDBd54558e2851d29311ee7f90975827dc7  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2014-12-19
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (acellular)-Hepatitis B-Haemophilus influenzae type b-Polio (Inactivated)"
* commercialName = "Hexaxim"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Sanofi Pasteur"
* responsibleNRA.text = "European Medicines Agency"
* index.value = "d54558e2851d29311ee7f90975827dc7  "
* manufacturerReference = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(DiphtheriaTetanusPertussProductd54558e2851d29311ee7f90975827dc7  ) 

Instance: DiphtheriaTetanusPertussProductd54558e2851d29311ee7f90975827dc7  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Hexaxim"
* manufacturer = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) // Sanofi Pasteur
* doseQuantity =  1 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuald54558e2851d29311ee7f90975827dc7  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2014-12-19
* product  = Reference(DiphtheriaTetanusPertussProductd54558e2851d29311ee7f90975827dc7  ) 

// Source Record Row //: 99
//  Date of Prequalification: (25/05/2018)
//  Vaccine Type: (Influenza, seasonal (Trivalent))
//  Commercial Name: (IL-YANG FLU Vaccine INJ.)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (IL-YANG PHARMACEUTICAL CO., LTD.)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): 30b66eeb49e7056ae34bdeae70658f8b  
//

Instance: PreQualDB30b66eeb49e7056ae34bdeae70658f8b  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2018-05-25
* vaccineType.coding.code = #InfluenzaseasonalTrivale
* vaccineType.coding.display = "Influenza, seasonal (Trivalent)"
* commercialName = "IL-YANG FLU Vaccine INJ."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "IL-YANG PHARMACEUTICAL CO., LTD."
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "30b66eeb49e7056ae34bdeae70658f8b  "
* manufacturerReference = Reference(Manufacturer0d032e80ab9a533ed8120bd60488bb9d  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(InfluenzaseasonalTrivaleProduct30b66eeb49e7056ae34bdeae70658f8b  ) 

Instance: InfluenzaseasonalTrivaleProduct30b66eeb49e7056ae34bdeae70658f8b  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "IL-YANG FLU Vaccine INJ."
* manufacturer = Reference(Manufacturer0d032e80ab9a533ed8120bd60488bb9d  ) // IL-YANG PHARMACEUTICAL CO., LTD.
* doseQuantity =  1 'doses'
* classification = #InfluenzaseasonalTrivale
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual30b66eeb49e7056ae34bdeae70658f8b  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2018-05-25
* product  = Reference(InfluenzaseasonalTrivaleProduct30b66eeb49e7056ae34bdeae70658f8b  ) 

// Source Record Row //: 100
//  Date of Prequalification: (18/09/2014)
//  Vaccine Type: (Japanese Encephalitis Vaccine (live, attenuated))
//  Commercial Name: (IMOJEV MD)
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (4)
//  Manufacturer: (Global Biotech Products Co., Ltd)
//  Responsible NRA: (Thai Food and Drug Administration)
//  md5(ROW): 25fc0fcf4e56d016e349a170104a5840  
//

Instance: PreQualDB25fc0fcf4e56d016e349a170104a5840  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2014-09-18
* vaccineType.coding.code = #JapaneseEncephalitisVacc
* vaccineType.coding.display = "Japanese Encephalitis Vaccine (live, attenuated)"
* commercialName = "IMOJEV MD"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 4
* manufacturer.text = "Global Biotech Products Co., Ltd"
* responsibleNRA.text = "Thai Food and Drug Administration"
* index.value = "25fc0fcf4e56d016e349a170104a5840  "
* manufacturerReference = Reference(Manufacturerda09c528947d845f1825eb19e76df745  ) 
* responsibleNRAReference = Reference(Holderff846f1753a67d1fcaa62a05358b9ff4  ) // Thai Food and Drug Administration
* productReference = Reference(JapaneseEncephalitisVaccProduct25fc0fcf4e56d016e349a170104a5840  ) 

Instance: JapaneseEncephalitisVaccProduct25fc0fcf4e56d016e349a170104a5840  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "IMOJEV MD"
* manufacturer = Reference(Manufacturerda09c528947d845f1825eb19e76df745  ) // Global Biotech Products Co., Ltd
* doseQuantity =  4 'doses'
* classification = #JapaneseEncephalitisVacc
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient

Instance: PreQual25fc0fcf4e56d016e349a170104a5840  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderff846f1753a67d1fcaa62a05358b9ff4  ) // Thai Food and Drug Administration
* validityPeriod.start = 2014-09-18
* product  = Reference(JapaneseEncephalitisVaccProduct25fc0fcf4e56d016e349a170104a5840  ) 

// Source Record Row //: 101
//  Date of Prequalification: (22/07/1997)
//  Vaccine Type: (Diphtheria-Tetanus (reduced antigen content))
//  Commercial Name: (IMOVAX dT adult)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Sanofi Pasteur)
//  Responsible NRA: (Agence nationale de sécurité du médicament et des produits de santé)
//  md5(ROW): 01c42855480e72f00caf639ab9157baf  
//

Instance: PreQualDB01c42855480e72f00caf639ab9157baf  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1997-07-22
* vaccineType.coding.code = #DiphtheriaTetanusreduced
* vaccineType.coding.display = "Diphtheria-Tetanus (reduced antigen content)"
* commercialName = "IMOVAX dT adult"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Sanofi Pasteur"
* responsibleNRA.text = "Agence nationale de sécurité du médicament et des produits de santé"
* index.value = "01c42855480e72f00caf639ab9157baf  "
* manufacturerReference = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) 
* responsibleNRAReference = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* productReference = Reference(DiphtheriaTetanusreducedProduct01c42855480e72f00caf639ab9157baf  ) 

Instance: DiphtheriaTetanusreducedProduct01c42855480e72f00caf639ab9157baf  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "IMOVAX dT adult"
* manufacturer = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) // Sanofi Pasteur
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanusreduced
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual01c42855480e72f00caf639ab9157baf  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* validityPeriod.start = 1997-07-22
* product  = Reference(DiphtheriaTetanusreducedProduct01c42855480e72f00caf639ab9157baf  ) 

// Source Record Row //: 102
//  Date of Prequalification: (09/12/2005)
//  Vaccine Type: (Polio Vaccine - Inactivated (IPV))
//  Commercial Name: (IMOVAX POLIO)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Sanofi Pasteur)
//  Responsible NRA: (Agence nationale de sécurité du médicament et des produits de santé)
//  md5(ROW): 532ef986c8042bbb15fee24056fdc4ed  
//

Instance: PreQualDB532ef986c8042bbb15fee24056fdc4ed  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2005-12-09
* vaccineType.coding.code = #PolioVaccineInactivatedI
* vaccineType.coding.display = "Polio Vaccine - Inactivated (IPV)"
* commercialName = "IMOVAX POLIO"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Sanofi Pasteur"
* responsibleNRA.text = "Agence nationale de sécurité du médicament et des produits de santé"
* index.value = "532ef986c8042bbb15fee24056fdc4ed  "
* manufacturerReference = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) 
* responsibleNRAReference = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* productReference = Reference(PolioVaccineInactivatedIProduct532ef986c8042bbb15fee24056fdc4ed  ) 

Instance: PolioVaccineInactivatedIProduct532ef986c8042bbb15fee24056fdc4ed  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "IMOVAX POLIO"
* manufacturer = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) // Sanofi Pasteur
* doseQuantity =  10 'doses'
* classification = #PolioVaccineInactivatedI
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual532ef986c8042bbb15fee24056fdc4ed  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* validityPeriod.start = 2005-12-09
* product  = Reference(PolioVaccineInactivatedIProduct532ef986c8042bbb15fee24056fdc4ed  ) 

// Source Record Row //: 103
//  Date of Prequalification: (13/09/2024)
//  Vaccine Type: (Smallpox and Mpox vaccine (Live Modified Vaccinia Virus Ankara))
//  Commercial Name: (Imvanex® (also approved under the name of JYNNEOS by the USFDA and IMVAMUNE by Health Canada))
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Bavarian Nordic A/S)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): 1b03f110ef15d36c9664465098d3adec  
//

Instance: PreQualDB1b03f110ef15d36c9664465098d3adec  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-09-13
* vaccineType.coding.code = #SmallpoxandMpoxvaccineLi
* vaccineType.coding.display = "Smallpox and Mpox vaccine (Live Modified Vaccinia Virus Ankara)"
* commercialName = "Imvanex® (also approved under the name of JYNNEOS by the USFDA and IMVAMUNE by Health Canada)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Bavarian Nordic A/S"
* responsibleNRA.text = "European Medicines Agency"
* index.value = "1b03f110ef15d36c9664465098d3adec  "
* manufacturerReference = Reference(Manufacturer49ba2034b576b9b30559303e880f9bc7  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(SmallpoxandMpoxvaccineLiProduct1b03f110ef15d36c9664465098d3adec  ) 

Instance: SmallpoxandMpoxvaccineLiProduct1b03f110ef15d36c9664465098d3adec  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Imvanex® (also approved under the name of JYNNEOS by the USFDA and IMVAMUNE by Health Canada)"
* manufacturer = Reference(Manufacturer49ba2034b576b9b30559303e880f9bc7  ) // Bavarian Nordic A/S
* doseQuantity =  1 'doses'
* classification = #SmallpoxandMpoxvaccineLi
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual1b03f110ef15d36c9664465098d3adec  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2024-09-13
* product  = Reference(SmallpoxandMpoxvaccineLiProduct1b03f110ef15d36c9664465098d3adec  ) 

// Source Record Row //: 104
//  Date of Prequalification: (28/01/2010)
//  Vaccine Type: (Influenza, Pandemic (H1N1))
//  Commercial Name: (Influenza A (H1N1) 2009 monovalent vaccine)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Sanofi Pasteur Inc.)
//  Responsible NRA: (CBER/FDA)
//  md5(ROW): 13ecad42baa7d2234f337b12f32b52de  
//

Instance: PreQualDB13ecad42baa7d2234f337b12f32b52de  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-01-28
* vaccineType.coding.code = #InfluenzaPandemicH1N1
* vaccineType.coding.display = "Influenza, Pandemic (H1N1)"
* commercialName = "Influenza A (H1N1) 2009 monovalent vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Sanofi Pasteur Inc."
* responsibleNRA.text = "CBER/FDA"
* index.value = "13ecad42baa7d2234f337b12f32b52de  "
* manufacturerReference = Reference(Manufacturere22cd18269d4ef7420dadcc919bda6e0  ) 
* responsibleNRAReference = Reference(Holder9d7db6151eea8bf9048690e4b4504c90  ) // CBER/FDA
* productReference = Reference(InfluenzaPandemicH1N1Product13ecad42baa7d2234f337b12f32b52de  ) 

Instance: InfluenzaPandemicH1N1Product13ecad42baa7d2234f337b12f32b52de  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Influenza A (H1N1) 2009 monovalent vaccine"
* manufacturer = Reference(Manufacturere22cd18269d4ef7420dadcc919bda6e0  ) // Sanofi Pasteur Inc.
* doseQuantity =  1 'doses'
* classification = #InfluenzaPandemicH1N1
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual13ecad42baa7d2234f337b12f32b52de  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9d7db6151eea8bf9048690e4b4504c90  ) // CBER/FDA
* validityPeriod.start = 2010-01-28
* product  = Reference(InfluenzaPandemicH1N1Product13ecad42baa7d2234f337b12f32b52de  ) 

// Source Record Row //: 105
//  Date of Prequalification: (28/01/2010)
//  Vaccine Type: (Influenza, Pandemic (H1N1))
//  Commercial Name: (Influenza A (H1N1) 2009 monovalent vaccine)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Sanofi Pasteur Inc.)
//  Responsible NRA: (CBER/FDA)
//  md5(ROW): 967a1c59b6590047a341c18013831c4b  
//

Instance: PreQualDB967a1c59b6590047a341c18013831c4b  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-01-28
* vaccineType.coding.code = #InfluenzaPandemicH1N1
* vaccineType.coding.display = "Influenza, Pandemic (H1N1)"
* commercialName = "Influenza A (H1N1) 2009 monovalent vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Sanofi Pasteur Inc."
* responsibleNRA.text = "CBER/FDA"
* index.value = "967a1c59b6590047a341c18013831c4b  "
* manufacturerReference = Reference(Manufacturere22cd18269d4ef7420dadcc919bda6e0  ) 
* responsibleNRAReference = Reference(Holder9d7db6151eea8bf9048690e4b4504c90  ) // CBER/FDA
* productReference = Reference(InfluenzaPandemicH1N1Product967a1c59b6590047a341c18013831c4b  ) 

Instance: InfluenzaPandemicH1N1Product967a1c59b6590047a341c18013831c4b  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Influenza A (H1N1) 2009 monovalent vaccine"
* manufacturer = Reference(Manufacturere22cd18269d4ef7420dadcc919bda6e0  ) // Sanofi Pasteur Inc.
* doseQuantity =  10 'doses'
* classification = #InfluenzaPandemicH1N1
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual967a1c59b6590047a341c18013831c4b  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9d7db6151eea8bf9048690e4b4504c90  ) // CBER/FDA
* validityPeriod.start = 2010-01-28
* product  = Reference(InfluenzaPandemicH1N1Product967a1c59b6590047a341c18013831c4b  ) 

// Source Record Row //: 106
//  Date of Prequalification: (25/02/2010)
//  Vaccine Type: (Influenza, Pandemic (H1N1))
//  Commercial Name: (Influenza A (H1N1) 2009 monovalent vaccine)
//  Presentation: (Sprayer)
//  No. of doses: (1)
//  Manufacturer: (MedImmune)
//  Responsible NRA: (CBER/FDA)
//  md5(ROW): 4326726a809bbcd312e4f29a90082bb6  
//

Instance: PreQualDB4326726a809bbcd312e4f29a90082bb6  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-02-25
* vaccineType.coding.code = #InfluenzaPandemicH1N1
* vaccineType.coding.display = "Influenza, Pandemic (H1N1)"
* commercialName = "Influenza A (H1N1) 2009 monovalent vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Sprayer
* presentation.coding.display = "Sprayer"
* numDoses = 1
* manufacturer.text = "MedImmune"
* responsibleNRA.text = "CBER/FDA"
* index.value = "4326726a809bbcd312e4f29a90082bb6  "
* manufacturerReference = Reference(Manufacturer1de7214fcf73be7aeabd3d60abbd51bf  ) 
* responsibleNRAReference = Reference(Holder9d7db6151eea8bf9048690e4b4504c90  ) // CBER/FDA
* productReference = Reference(InfluenzaPandemicH1N1Product4326726a809bbcd312e4f29a90082bb6  ) 

Instance: InfluenzaPandemicH1N1Product4326726a809bbcd312e4f29a90082bb6  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Influenza A (H1N1) 2009 monovalent vaccine"
* manufacturer = Reference(Manufacturer1de7214fcf73be7aeabd3d60abbd51bf  ) // MedImmune
* doseQuantity =  1 'doses'
* classification = #InfluenzaPandemicH1N1
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Sprayer

Instance: PreQual4326726a809bbcd312e4f29a90082bb6  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9d7db6151eea8bf9048690e4b4504c90  ) // CBER/FDA
* validityPeriod.start = 2010-02-25
* product  = Reference(InfluenzaPandemicH1N1Product4326726a809bbcd312e4f29a90082bb6  ) 

// Source Record Row //: 107
//  Date of Prequalification: (26/04/2021)
//  Vaccine Type: (Influenza, seasonal (Trivalent))
//  Commercial Name: (influenza trivalent vaccine (split virion, inactivated))
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Instituto Butantan)
//  Responsible NRA: (Agencia Nacional da Vigilancia Sanitaria)
//  md5(ROW): 5268d009fa44e51462fcdcbcbc80ebf3  
//

Instance: PreQualDB5268d009fa44e51462fcdcbcbc80ebf3  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2021-04-26
* vaccineType.coding.code = #InfluenzaseasonalTrivale
* vaccineType.coding.display = "Influenza, seasonal (Trivalent)"
* commercialName = "influenza trivalent vaccine (split virion, inactivated)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Instituto Butantan"
* responsibleNRA.text = "Agencia Nacional da Vigilancia Sanitaria"
* index.value = "5268d009fa44e51462fcdcbcbc80ebf3  "
* manufacturerReference = Reference(Manufacturerd90d3c2e85175f2d2bde5bd3ff4f83e3  ) 
* responsibleNRAReference = Reference(Holder18181d26c8e4df1d6fc819c02c55b8e6  ) // Agencia Nacional da Vigilancia Sanitaria
* productReference = Reference(InfluenzaseasonalTrivaleProduct5268d009fa44e51462fcdcbcbc80ebf3  ) 

Instance: InfluenzaseasonalTrivaleProduct5268d009fa44e51462fcdcbcbc80ebf3  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "influenza trivalent vaccine (split virion, inactivated)"
* manufacturer = Reference(Manufacturerd90d3c2e85175f2d2bde5bd3ff4f83e3  ) // Instituto Butantan
* doseQuantity =  10 'doses'
* classification = #InfluenzaseasonalTrivale
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual5268d009fa44e51462fcdcbcbc80ebf3  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder18181d26c8e4df1d6fc819c02c55b8e6  ) // Agencia Nacional da Vigilancia Sanitaria
* validityPeriod.start = 2021-04-26
* product  = Reference(InfluenzaseasonalTrivaleProduct5268d009fa44e51462fcdcbcbc80ebf3  ) 

// Source Record Row //: 108
//  Date of Prequalification: (09/06/2015)
//  Vaccine Type: (Influenza, seasonal (Trivalent))
//  Commercial Name: (Influenza Vaccine (Split virion, inactivated))
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Hualan Biological Bacterin Inc.)
//  Responsible NRA: (National Medical Products Administration)
//  md5(ROW): 3ec4a63eb2160bf9a65d9fd69f5de160  
//

Instance: PreQualDB3ec4a63eb2160bf9a65d9fd69f5de160  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2015-06-09
* vaccineType.coding.code = #InfluenzaseasonalTrivale
* vaccineType.coding.display = "Influenza, seasonal (Trivalent)"
* commercialName = "Influenza Vaccine (Split virion, inactivated)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Hualan Biological Bacterin Inc."
* responsibleNRA.text = "National Medical Products Administration"
* index.value = "3ec4a63eb2160bf9a65d9fd69f5de160  "
* manufacturerReference = Reference(Manufacturer63659ae1ce5592ff2ebd6cd35241e1f4  ) 
* responsibleNRAReference = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* productReference = Reference(InfluenzaseasonalTrivaleProduct3ec4a63eb2160bf9a65d9fd69f5de160  ) 

Instance: InfluenzaseasonalTrivaleProduct3ec4a63eb2160bf9a65d9fd69f5de160  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Influenza Vaccine (Split virion, inactivated)"
* manufacturer = Reference(Manufacturer63659ae1ce5592ff2ebd6cd35241e1f4  ) // Hualan Biological Bacterin Inc.
* doseQuantity =  1 'doses'
* classification = #InfluenzaseasonalTrivale
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual3ec4a63eb2160bf9a65d9fd69f5de160  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* validityPeriod.start = 2015-06-09
* product  = Reference(InfluenzaseasonalTrivaleProduct3ec4a63eb2160bf9a65d9fd69f5de160  ) 

// Source Record Row //: 109
//  Date of Prequalification: (20/10/2023)
//  Vaccine Type: (Influenza, seasonal (Trivalent))
//  Commercial Name: (Influenza Vaccine (Split Virion), Inactivated)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Changchun Institute of Biological Products Co., Ltd)
//  Responsible NRA: (National Medical Products Administration)
//  md5(ROW): 096666bb5a86521c6c6046227092334d  
//

Instance: PreQualDB096666bb5a86521c6c6046227092334d  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2023-10-20
* vaccineType.coding.code = #InfluenzaseasonalTrivale
* vaccineType.coding.display = "Influenza, seasonal (Trivalent)"
* commercialName = "Influenza Vaccine (Split Virion), Inactivated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Changchun Institute of Biological Products Co., Ltd"
* responsibleNRA.text = "National Medical Products Administration"
* index.value = "096666bb5a86521c6c6046227092334d  "
* manufacturerReference = Reference(Manufacturer12d56c4b3ef5d1e2309e872e111b62f5  ) 
* responsibleNRAReference = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* productReference = Reference(InfluenzaseasonalTrivaleProduct096666bb5a86521c6c6046227092334d  ) 

Instance: InfluenzaseasonalTrivaleProduct096666bb5a86521c6c6046227092334d  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Influenza Vaccine (Split Virion), Inactivated"
* manufacturer = Reference(Manufacturer12d56c4b3ef5d1e2309e872e111b62f5  ) // Changchun Institute of Biological Products Co., Ltd
* doseQuantity =  1 'doses'
* classification = #InfluenzaseasonalTrivale
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual096666bb5a86521c6c6046227092334d  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* validityPeriod.start = 2023-10-20
* product  = Reference(InfluenzaseasonalTrivaleProduct096666bb5a86521c6c6046227092334d  ) 

// Source Record Row //: 110
//  Date of Prequalification: (19/02/2024)
//  Vaccine Type: (Influenza, seasonal (Quadrivalent))
//  Commercial Name: (Influvac® Tetra)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Abbott Biologicals BV)
//  Responsible NRA: (Medicines Evaluation Board (MEB))
//  md5(ROW): 30fd25d892863f955ec6f9b57c328dbb  
//

Instance: PreQualDB30fd25d892863f955ec6f9b57c328dbb  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-02-19
* vaccineType.coding.code = #InfluenzaseasonalQuadriv
* vaccineType.coding.display = "Influenza, seasonal (Quadrivalent)"
* commercialName = "Influvac® Tetra"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Abbott Biologicals BV"
* responsibleNRA.text = "Medicines Evaluation Board (MEB)"
* index.value = "30fd25d892863f955ec6f9b57c328dbb  "
* manufacturerReference = Reference(Manufactureraaca2980acaa19a41085d36efc6a5a84  ) 
* responsibleNRAReference = Reference(Holderba27f505e9f51f464d1a574696de85c5  ) // Medicines Evaluation Board (MEB)
* productReference = Reference(InfluenzaseasonalQuadrivProduct30fd25d892863f955ec6f9b57c328dbb  ) 

Instance: InfluenzaseasonalQuadrivProduct30fd25d892863f955ec6f9b57c328dbb  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Influvac® Tetra"
* manufacturer = Reference(Manufactureraaca2980acaa19a41085d36efc6a5a84  ) // Abbott Biologicals BV
* doseQuantity =  1 'doses'
* classification = #InfluenzaseasonalQuadriv
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual30fd25d892863f955ec6f9b57c328dbb  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderba27f505e9f51f464d1a574696de85c5  ) // Medicines Evaluation Board (MEB)
* validityPeriod.start = 2024-02-19
* product  = Reference(InfluenzaseasonalQuadrivProduct30fd25d892863f955ec6f9b57c328dbb  ) 

// Source Record Row //: 111
//  Date of Prequalification: (23/12/2010)
//  Vaccine Type: (Polio Vaccine - Inactivated (IPV))
//  Commercial Name: (IPV Vaccine AJV)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (AJ Vaccines A/S)
//  Responsible NRA: (Danish Medicines Agency)
//  md5(ROW): 087ff26057e89c006517428347dfbc3c  
//

Instance: PreQualDB087ff26057e89c006517428347dfbc3c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-12-23
* vaccineType.coding.code = #PolioVaccineInactivatedI
* vaccineType.coding.display = "Polio Vaccine - Inactivated (IPV)"
* commercialName = "IPV Vaccine AJV"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "AJ Vaccines A/S"
* responsibleNRA.text = "Danish Medicines Agency"
* index.value = "087ff26057e89c006517428347dfbc3c  "
* manufacturerReference = Reference(Manufacturer5dc54242e07048dc1f0433b45d61957c  ) 
* responsibleNRAReference = Reference(Holdera5a3d2d85f2b1e0fcd688a9dbd32e328  ) // Danish Medicines Agency
* productReference = Reference(PolioVaccineInactivatedIProduct087ff26057e89c006517428347dfbc3c  ) 

Instance: PolioVaccineInactivatedIProduct087ff26057e89c006517428347dfbc3c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "IPV Vaccine AJV"
* manufacturer = Reference(Manufacturer5dc54242e07048dc1f0433b45d61957c  ) // AJ Vaccines A/S
* doseQuantity =  1 'doses'
* classification = #PolioVaccineInactivatedI
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual087ff26057e89c006517428347dfbc3c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdera5a3d2d85f2b1e0fcd688a9dbd32e328  ) // Danish Medicines Agency
* validityPeriod.start = 2010-12-23
* product  = Reference(PolioVaccineInactivatedIProduct087ff26057e89c006517428347dfbc3c  ) 

// Source Record Row //: 112
//  Date of Prequalification: (08/10/2013)
//  Vaccine Type: (Japanese Encephalitis Vaccine (live, attenuated))
//  Commercial Name: (Japanese Encephalitis Vaccine Live (SA14-14-2))
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (1)
//  Manufacturer: (Chengdu Institute of Biological Products Co.,Ltd)
//  Responsible NRA: (National Medical Products Administration)
//  md5(ROW): 88482ae2796337d6f7832238bdf003fb  
//

Instance: PreQualDB88482ae2796337d6f7832238bdf003fb  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2013-10-08
* vaccineType.coding.code = #JapaneseEncephalitisVacc
* vaccineType.coding.display = "Japanese Encephalitis Vaccine (live, attenuated)"
* commercialName = "Japanese Encephalitis Vaccine Live (SA14-14-2)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 1
* manufacturer.text = "Chengdu Institute of Biological Products Co.,Ltd"
* responsibleNRA.text = "National Medical Products Administration"
* index.value = "88482ae2796337d6f7832238bdf003fb  "
* manufacturerReference = Reference(Manufacturer8b73ac0f00c49a2623f9e9aee2c60cad  ) 
* responsibleNRAReference = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* productReference = Reference(JapaneseEncephalitisVaccProduct88482ae2796337d6f7832238bdf003fb  ) 

Instance: JapaneseEncephalitisVaccProduct88482ae2796337d6f7832238bdf003fb  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Japanese Encephalitis Vaccine Live (SA14-14-2)"
* manufacturer = Reference(Manufacturer8b73ac0f00c49a2623f9e9aee2c60cad  ) // Chengdu Institute of Biological Products Co.,Ltd
* doseQuantity =  1 'doses'
* classification = #JapaneseEncephalitisVacc
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient

Instance: PreQual88482ae2796337d6f7832238bdf003fb  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* validityPeriod.start = 2013-10-08
* product  = Reference(JapaneseEncephalitisVaccProduct88482ae2796337d6f7832238bdf003fb  ) 

// Source Record Row //: 113
//  Date of Prequalification: (08/10/2013)
//  Vaccine Type: (Japanese Encephalitis Vaccine (live, attenuated))
//  Commercial Name: (Japanese Encephalitis Vaccine Live (SA14-14-2))
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (5)
//  Manufacturer: (Chengdu Institute of Biological Products Co.,Ltd)
//  Responsible NRA: (National Medical Products Administration)
//  md5(ROW): c6a1b72f22ca5f875ca681973d42742c  
//

Instance: PreQualDBc6a1b72f22ca5f875ca681973d42742c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2013-10-08
* vaccineType.coding.code = #JapaneseEncephalitisVacc
* vaccineType.coding.display = "Japanese Encephalitis Vaccine (live, attenuated)"
* commercialName = "Japanese Encephalitis Vaccine Live (SA14-14-2)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 5
* manufacturer.text = "Chengdu Institute of Biological Products Co.,Ltd"
* responsibleNRA.text = "National Medical Products Administration"
* index.value = "c6a1b72f22ca5f875ca681973d42742c  "
* manufacturerReference = Reference(Manufacturer8b73ac0f00c49a2623f9e9aee2c60cad  ) 
* responsibleNRAReference = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* productReference = Reference(JapaneseEncephalitisVaccProductc6a1b72f22ca5f875ca681973d42742c  ) 

Instance: JapaneseEncephalitisVaccProductc6a1b72f22ca5f875ca681973d42742c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Japanese Encephalitis Vaccine Live (SA14-14-2)"
* manufacturer = Reference(Manufacturer8b73ac0f00c49a2623f9e9aee2c60cad  ) // Chengdu Institute of Biological Products Co.,Ltd
* doseQuantity =  5 'doses'
* classification = #JapaneseEncephalitisVacc
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient

Instance: PreQualc6a1b72f22ca5f875ca681973d42742c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* validityPeriod.start = 2013-10-08
* product  = Reference(JapaneseEncephalitisVaccProductc6a1b72f22ca5f875ca681973d42742c  ) 

// Source Record Row //: 114
//  Date of Prequalification: (03/08/2016)
//  Vaccine Type: (Japanese Encephalitis Vaccine (Inactivated) (3µg Pediatric))
//  Commercial Name: (JEEV® (3µg))
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 030f186c51ac8780d767bcba8f2762b2  
//

Instance: PreQualDB030f186c51ac8780d767bcba8f2762b2  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2016-08-03
* vaccineType.coding.code = #JapaneseEncephalitisVacc
* vaccineType.coding.display = "Japanese Encephalitis Vaccine (Inactivated) (3µg Pediatric)"
* commercialName = "JEEV® (3µg)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "030f186c51ac8780d767bcba8f2762b2  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(JapaneseEncephalitisVaccProduct030f186c51ac8780d767bcba8f2762b2  ) 

Instance: JapaneseEncephalitisVaccProduct030f186c51ac8780d767bcba8f2762b2  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "JEEV® (3µg)"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  1 'doses'
* classification = #JapaneseEncephalitisVacc
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual030f186c51ac8780d767bcba8f2762b2  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2016-08-03
* product  = Reference(JapaneseEncephalitisVaccProduct030f186c51ac8780d767bcba8f2762b2  ) 

// Source Record Row //: 115
//  Date of Prequalification: (02/10/2018)
//  Vaccine Type: (Japanese Encephalitis Vaccine (Inactivated) (3µg Pediatric))
//  Commercial Name: (JEEV® (3µg))
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 436f9ace27daebdccddb8279b66a3e98  
//

Instance: PreQualDB436f9ace27daebdccddb8279b66a3e98  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2018-10-02
* vaccineType.coding.code = #JapaneseEncephalitisVacc
* vaccineType.coding.display = "Japanese Encephalitis Vaccine (Inactivated) (3µg Pediatric)"
* commercialName = "JEEV® (3µg)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "436f9ace27daebdccddb8279b66a3e98  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(JapaneseEncephalitisVaccProduct436f9ace27daebdccddb8279b66a3e98  ) 

Instance: JapaneseEncephalitisVaccProduct436f9ace27daebdccddb8279b66a3e98  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "JEEV® (3µg)"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  5 'doses'
* classification = #JapaneseEncephalitisVacc
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual436f9ace27daebdccddb8279b66a3e98  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2018-10-02
* product  = Reference(JapaneseEncephalitisVaccProduct436f9ace27daebdccddb8279b66a3e98  ) 

// Source Record Row //: 116
//  Date of Prequalification: (12/07/2013)
//  Vaccine Type: (Japanese Encephalitis Vaccine (Inactivated) 6µg)
//  Commercial Name: (JEEV® (6µg))
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 7d5507cd0733a44eaa4072b888176783  
//

Instance: PreQualDB7d5507cd0733a44eaa4072b888176783  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2013-07-12
* vaccineType.coding.code = #JapaneseEncephalitisVacc
* vaccineType.coding.display = "Japanese Encephalitis Vaccine (Inactivated) 6µg"
* commercialName = "JEEV® (6µg)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "7d5507cd0733a44eaa4072b888176783  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(JapaneseEncephalitisVaccProduct7d5507cd0733a44eaa4072b888176783  ) 

Instance: JapaneseEncephalitisVaccProduct7d5507cd0733a44eaa4072b888176783  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "JEEV® (6µg)"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  1 'doses'
* classification = #JapaneseEncephalitisVacc
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual7d5507cd0733a44eaa4072b888176783  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2013-07-12
* product  = Reference(JapaneseEncephalitisVaccProduct7d5507cd0733a44eaa4072b888176783  ) 

// Source Record Row //: 117
//  Date of Prequalification: (02/10/2018)
//  Vaccine Type: (Japanese Encephalitis Vaccine (Inactivated) 6µg)
//  Commercial Name: (JEEV® (6µg))
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 94b97202e37b591c7b7da316ff2bca00  
//

Instance: PreQualDB94b97202e37b591c7b7da316ff2bca00  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2018-10-02
* vaccineType.coding.code = #JapaneseEncephalitisVacc
* vaccineType.coding.display = "Japanese Encephalitis Vaccine (Inactivated) 6µg"
* commercialName = "JEEV® (6µg)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "94b97202e37b591c7b7da316ff2bca00  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(JapaneseEncephalitisVaccProduct94b97202e37b591c7b7da316ff2bca00  ) 

Instance: JapaneseEncephalitisVaccProduct94b97202e37b591c7b7da316ff2bca00  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "JEEV® (6µg)"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  5 'doses'
* classification = #JapaneseEncephalitisVacc
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual94b97202e37b591c7b7da316ff2bca00  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2018-10-02
* product  = Reference(JapaneseEncephalitisVaccProduct94b97202e37b591c7b7da316ff2bca00  ) 

// Source Record Row //: 118
//  Date of Prequalification: (24/09/2019)
//  Vaccine Type: (Measles and Rubella)
//  Commercial Name: (Measles and Rubella Vaccine (Live) (Attenuated, Freeze Dried))
//  Presentation: (Vial + Ampoule)
//  No. of doses: (1)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): a64cf480e98d911934cc1e33dd1d99dd  
//

Instance: PreQualDBa64cf480e98d911934cc1e33dd1d99dd  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2019-09-24
* vaccineType.coding.code = #MeaslesandRubella
* vaccineType.coding.display = "Measles and Rubella"
* commercialName = "Measles and Rubella Vaccine (Live) (Attenuated, Freeze Dried)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 1
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "a64cf480e98d911934cc1e33dd1d99dd  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeaslesandRubellaProducta64cf480e98d911934cc1e33dd1d99dd  ) 

Instance: MeaslesandRubellaProducta64cf480e98d911934cc1e33dd1d99dd  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles and Rubella Vaccine (Live) (Attenuated, Freeze Dried)"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  1 'doses'
* classification = #MeaslesandRubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQuala64cf480e98d911934cc1e33dd1d99dd  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2019-09-24
* product  = Reference(MeaslesandRubellaProducta64cf480e98d911934cc1e33dd1d99dd  ) 

// Source Record Row //: 119
//  Date of Prequalification: (24/09/2019)
//  Vaccine Type: (Measles and Rubella)
//  Commercial Name: (Measles and Rubella Vaccine (Live) (Attenuated, Freeze Dried))
//  Presentation: (Vial + Ampoule)
//  No. of doses: (5)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): d3425606d671107b4265df9a9b33c318  
//

Instance: PreQualDBd3425606d671107b4265df9a9b33c318  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2019-09-24
* vaccineType.coding.code = #MeaslesandRubella
* vaccineType.coding.display = "Measles and Rubella"
* commercialName = "Measles and Rubella Vaccine (Live) (Attenuated, Freeze Dried)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 5
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "d3425606d671107b4265df9a9b33c318  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeaslesandRubellaProductd3425606d671107b4265df9a9b33c318  ) 

Instance: MeaslesandRubellaProductd3425606d671107b4265df9a9b33c318  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles and Rubella Vaccine (Live) (Attenuated, Freeze Dried)"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  5 'doses'
* classification = #MeaslesandRubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQuald3425606d671107b4265df9a9b33c318  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2019-09-24
* product  = Reference(MeaslesandRubellaProductd3425606d671107b4265df9a9b33c318  ) 

// Source Record Row //: 120
//  Date of Prequalification: (24/09/2019)
//  Vaccine Type: (Measles and Rubella)
//  Commercial Name: (Measles and Rubella Vaccine (Live) (Attenuated, Freeze Dried))
//  Presentation: (Vial + Ampoule)
//  No. of doses: (10)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 77c8d21c6e4f7faaa12d93564b5c97bc  
//

Instance: PreQualDB77c8d21c6e4f7faaa12d93564b5c97bc  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2019-09-24
* vaccineType.coding.code = #MeaslesandRubella
* vaccineType.coding.display = "Measles and Rubella"
* commercialName = "Measles and Rubella Vaccine (Live) (Attenuated, Freeze Dried)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 10
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "77c8d21c6e4f7faaa12d93564b5c97bc  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeaslesandRubellaProduct77c8d21c6e4f7faaa12d93564b5c97bc  ) 

Instance: MeaslesandRubellaProduct77c8d21c6e4f7faaa12d93564b5c97bc  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles and Rubella Vaccine (Live) (Attenuated, Freeze Dried)"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  10 'doses'
* classification = #MeaslesandRubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQual77c8d21c6e4f7faaa12d93564b5c97bc  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2019-09-24
* product  = Reference(MeaslesandRubellaProduct77c8d21c6e4f7faaa12d93564b5c97bc  ) 

// Source Record Row //: 121
//  Date of Prequalification: (18/07/2000)
//  Vaccine Type: (Measles and Rubella)
//  Commercial Name: (Measles and Rubella Vaccine, Live, Attenuated)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): b59a78efc3a033a13b483b20d386fca5  
//

Instance: PreQualDBb59a78efc3a033a13b483b20d386fca5  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2000-07-18
* vaccineType.coding.code = #MeaslesandRubella
* vaccineType.coding.display = "Measles and Rubella"
* commercialName = "Measles and Rubella Vaccine, Live, Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "b59a78efc3a033a13b483b20d386fca5  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeaslesandRubellaProductb59a78efc3a033a13b483b20d386fca5  ) 

Instance: MeaslesandRubellaProductb59a78efc3a033a13b483b20d386fca5  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles and Rubella Vaccine, Live, Attenuated"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #MeaslesandRubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualb59a78efc3a033a13b483b20d386fca5  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2000-07-18
* product  = Reference(MeaslesandRubellaProductb59a78efc3a033a13b483b20d386fca5  ) 

// Source Record Row //: 122
//  Date of Prequalification: (18/07/2000)
//  Vaccine Type: (Measles and Rubella)
//  Commercial Name: (Measles and Rubella Vaccine, Live, Attenuated)
//  Presentation: (Vial)
//  No. of doses: (2)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 635f19b7add7fab78d60262e086e4543  
//

Instance: PreQualDB635f19b7add7fab78d60262e086e4543  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2000-07-18
* vaccineType.coding.code = #MeaslesandRubella
* vaccineType.coding.display = "Measles and Rubella"
* commercialName = "Measles and Rubella Vaccine, Live, Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "635f19b7add7fab78d60262e086e4543  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeaslesandRubellaProduct635f19b7add7fab78d60262e086e4543  ) 

Instance: MeaslesandRubellaProduct635f19b7add7fab78d60262e086e4543  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles and Rubella Vaccine, Live, Attenuated"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  2 'doses'
* classification = #MeaslesandRubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual635f19b7add7fab78d60262e086e4543  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2000-07-18
* product  = Reference(MeaslesandRubellaProduct635f19b7add7fab78d60262e086e4543  ) 

// Source Record Row //: 123
//  Date of Prequalification: (18/07/2000)
//  Vaccine Type: (Measles and Rubella)
//  Commercial Name: (Measles and Rubella Vaccine, Live, Attenuated)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 65d4761f7dd7345dd02cd11109a1cf8c  
//

Instance: PreQualDB65d4761f7dd7345dd02cd11109a1cf8c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2000-07-18
* vaccineType.coding.code = #MeaslesandRubella
* vaccineType.coding.display = "Measles and Rubella"
* commercialName = "Measles and Rubella Vaccine, Live, Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "65d4761f7dd7345dd02cd11109a1cf8c  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeaslesandRubellaProduct65d4761f7dd7345dd02cd11109a1cf8c  ) 

Instance: MeaslesandRubellaProduct65d4761f7dd7345dd02cd11109a1cf8c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles and Rubella Vaccine, Live, Attenuated"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  5 'doses'
* classification = #MeaslesandRubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual65d4761f7dd7345dd02cd11109a1cf8c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2000-07-18
* product  = Reference(MeaslesandRubellaProduct65d4761f7dd7345dd02cd11109a1cf8c  ) 

// Source Record Row //: 124
//  Date of Prequalification: (18/07/2000)
//  Vaccine Type: (Measles and Rubella)
//  Commercial Name: (Measles and Rubella Vaccine, Live, Attenuated)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 9fa0f8f3b99bdc45a172ae498f3f0105  
//

Instance: PreQualDB9fa0f8f3b99bdc45a172ae498f3f0105  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2000-07-18
* vaccineType.coding.code = #MeaslesandRubella
* vaccineType.coding.display = "Measles and Rubella"
* commercialName = "Measles and Rubella Vaccine, Live, Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "9fa0f8f3b99bdc45a172ae498f3f0105  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeaslesandRubellaProduct9fa0f8f3b99bdc45a172ae498f3f0105  ) 

Instance: MeaslesandRubellaProduct9fa0f8f3b99bdc45a172ae498f3f0105  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles and Rubella Vaccine, Live, Attenuated"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #MeaslesandRubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual9fa0f8f3b99bdc45a172ae498f3f0105  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2000-07-18
* product  = Reference(MeaslesandRubellaProduct9fa0f8f3b99bdc45a172ae498f3f0105  ) 

// Source Record Row //: 125
//  Date of Prequalification: (04/09/2006)
//  Vaccine Type: (Measles)
//  Commercial Name: (Measles vaccine)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (PT Bio Farma (Persero))
//  Responsible NRA: (National Agency of Drug and Food Control Indonesia)
//  md5(ROW): f1e33f21c2c353e67218f267dd73ea38  
//

Instance: PreQualDBf1e33f21c2c353e67218f267dd73ea38  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2006-09-04
* vaccineType.coding.code = #Measles
* vaccineType.coding.display = "Measles"
* commercialName = "Measles vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "PT Bio Farma (Persero)"
* responsibleNRA.text = "National Agency of Drug and Food Control Indonesia"
* index.value = "f1e33f21c2c353e67218f267dd73ea38  "
* manufacturerReference = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) 
* responsibleNRAReference = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* productReference = Reference(MeaslesProductf1e33f21c2c353e67218f267dd73ea38  ) 

Instance: MeaslesProductf1e33f21c2c353e67218f267dd73ea38  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles vaccine"
* manufacturer = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) // PT Bio Farma (Persero)
* doseQuantity =  20 'doses'
* classification = #Measles
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualf1e33f21c2c353e67218f267dd73ea38  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* validityPeriod.start = 2006-09-04
* product  = Reference(MeaslesProductf1e33f21c2c353e67218f267dd73ea38  ) 

// Source Record Row //: 126
//  Date of Prequalification: (09/04/1997)
//  Vaccine Type: (Measles)
//  Commercial Name: (Measles vaccine)
//  Presentation: (Vial + Ampoule)
//  No. of doses: (10)
//  Manufacturer: (PT Bio Farma (Persero))
//  Responsible NRA: (National Agency of Drug and Food Control Indonesia)
//  md5(ROW): f4749d5c7dc03738b6fad169dd71fa00  
//

Instance: PreQualDBf4749d5c7dc03738b6fad169dd71fa00  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1997-04-09
* vaccineType.coding.code = #Measles
* vaccineType.coding.display = "Measles"
* commercialName = "Measles vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 10
* manufacturer.text = "PT Bio Farma (Persero)"
* responsibleNRA.text = "National Agency of Drug and Food Control Indonesia"
* index.value = "f4749d5c7dc03738b6fad169dd71fa00  "
* manufacturerReference = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) 
* responsibleNRAReference = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* productReference = Reference(MeaslesProductf4749d5c7dc03738b6fad169dd71fa00  ) 

Instance: MeaslesProductf4749d5c7dc03738b6fad169dd71fa00  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles vaccine"
* manufacturer = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) // PT Bio Farma (Persero)
* doseQuantity =  10 'doses'
* classification = #Measles
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQualf4749d5c7dc03738b6fad169dd71fa00  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* validityPeriod.start = 1997-04-09
* product  = Reference(MeaslesProductf4749d5c7dc03738b6fad169dd71fa00  ) 

// Source Record Row //: 127
//  Date of Prequalification: (15/02/1993)
//  Vaccine Type: (Measles)
//  Commercial Name: (Measles Vaccine, Live, Attenuated)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): aa790a232317076de88d43837608f860  
//

Instance: PreQualDBaa790a232317076de88d43837608f860  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1993-02-15
* vaccineType.coding.code = #Measles
* vaccineType.coding.display = "Measles"
* commercialName = "Measles Vaccine, Live, Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "aa790a232317076de88d43837608f860  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeaslesProductaa790a232317076de88d43837608f860  ) 

Instance: MeaslesProductaa790a232317076de88d43837608f860  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles Vaccine, Live, Attenuated"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #Measles
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualaa790a232317076de88d43837608f860  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 1993-02-15
* product  = Reference(MeaslesProductaa790a232317076de88d43837608f860  ) 

// Source Record Row //: 128
//  Date of Prequalification: (15/02/1993)
//  Vaccine Type: (Measles)
//  Commercial Name: (Measles Vaccine, Live, Attenuated)
//  Presentation: (Vial)
//  No. of doses: (2)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 0269fa56eaf4988d90c519518ec6282e  
//

Instance: PreQualDB0269fa56eaf4988d90c519518ec6282e  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1993-02-15
* vaccineType.coding.code = #Measles
* vaccineType.coding.display = "Measles"
* commercialName = "Measles Vaccine, Live, Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "0269fa56eaf4988d90c519518ec6282e  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeaslesProduct0269fa56eaf4988d90c519518ec6282e  ) 

Instance: MeaslesProduct0269fa56eaf4988d90c519518ec6282e  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles Vaccine, Live, Attenuated"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  2 'doses'
* classification = #Measles
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual0269fa56eaf4988d90c519518ec6282e  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 1993-02-15
* product  = Reference(MeaslesProduct0269fa56eaf4988d90c519518ec6282e  ) 

// Source Record Row //: 129
//  Date of Prequalification: (15/02/1993)
//  Vaccine Type: (Measles)
//  Commercial Name: (Measles Vaccine, Live, Attenuated)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 8f5df4935259a7c2d8a2dc97918336fc  
//

Instance: PreQualDB8f5df4935259a7c2d8a2dc97918336fc  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1993-02-15
* vaccineType.coding.code = #Measles
* vaccineType.coding.display = "Measles"
* commercialName = "Measles Vaccine, Live, Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "8f5df4935259a7c2d8a2dc97918336fc  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeaslesProduct8f5df4935259a7c2d8a2dc97918336fc  ) 

Instance: MeaslesProduct8f5df4935259a7c2d8a2dc97918336fc  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles Vaccine, Live, Attenuated"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  5 'doses'
* classification = #Measles
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual8f5df4935259a7c2d8a2dc97918336fc  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 1993-02-15
* product  = Reference(MeaslesProduct8f5df4935259a7c2d8a2dc97918336fc  ) 

// Source Record Row //: 130
//  Date of Prequalification: (15/02/1993)
//  Vaccine Type: (Measles)
//  Commercial Name: (Measles Vaccine, Live, Attenuated)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 22043a8ed978f482a283310ca4b73aa0  
//

Instance: PreQualDB22043a8ed978f482a283310ca4b73aa0  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1993-02-15
* vaccineType.coding.code = #Measles
* vaccineType.coding.display = "Measles"
* commercialName = "Measles Vaccine, Live, Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "22043a8ed978f482a283310ca4b73aa0  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeaslesProduct22043a8ed978f482a283310ca4b73aa0  ) 

Instance: MeaslesProduct22043a8ed978f482a283310ca4b73aa0  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles Vaccine, Live, Attenuated"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #Measles
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual22043a8ed978f482a283310ca4b73aa0  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 1993-02-15
* product  = Reference(MeaslesProduct22043a8ed978f482a283310ca4b73aa0  ) 

// Source Record Row //: 131
//  Date of Prequalification: (08/08/2003)
//  Vaccine Type: (Measles, Mumps and Rubella)
//  Commercial Name: (Measles, Mumps and Rubella Vaccine, Live, Attenuated)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): be9b0af328a5e3832c8004f7ec7d7657  
//

Instance: PreQualDBbe9b0af328a5e3832c8004f7ec7d7657  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2003-08-08
* vaccineType.coding.code = #MeaslesMumpsandRubella
* vaccineType.coding.display = "Measles, Mumps and Rubella"
* commercialName = "Measles, Mumps and Rubella Vaccine, Live, Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "be9b0af328a5e3832c8004f7ec7d7657  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeaslesMumpsandRubellaProductbe9b0af328a5e3832c8004f7ec7d7657  ) 

Instance: MeaslesMumpsandRubellaProductbe9b0af328a5e3832c8004f7ec7d7657  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles, Mumps and Rubella Vaccine, Live, Attenuated"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #MeaslesMumpsandRubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualbe9b0af328a5e3832c8004f7ec7d7657  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2003-08-08
* product  = Reference(MeaslesMumpsandRubellaProductbe9b0af328a5e3832c8004f7ec7d7657  ) 

// Source Record Row //: 132
//  Date of Prequalification: (08/08/2003)
//  Vaccine Type: (Measles, Mumps and Rubella)
//  Commercial Name: (Measles, Mumps and Rubella Vaccine, Live, Attenuated)
//  Presentation: (Vial)
//  No. of doses: (2)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 3e4662a10c91ed08c81f3163d43da4eb  
//

Instance: PreQualDB3e4662a10c91ed08c81f3163d43da4eb  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2003-08-08
* vaccineType.coding.code = #MeaslesMumpsandRubella
* vaccineType.coding.display = "Measles, Mumps and Rubella"
* commercialName = "Measles, Mumps and Rubella Vaccine, Live, Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "3e4662a10c91ed08c81f3163d43da4eb  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeaslesMumpsandRubellaProduct3e4662a10c91ed08c81f3163d43da4eb  ) 

Instance: MeaslesMumpsandRubellaProduct3e4662a10c91ed08c81f3163d43da4eb  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles, Mumps and Rubella Vaccine, Live, Attenuated"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  2 'doses'
* classification = #MeaslesMumpsandRubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual3e4662a10c91ed08c81f3163d43da4eb  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2003-08-08
* product  = Reference(MeaslesMumpsandRubellaProduct3e4662a10c91ed08c81f3163d43da4eb  ) 

// Source Record Row //: 133
//  Date of Prequalification: (08/08/2003)
//  Vaccine Type: (Measles, Mumps and Rubella)
//  Commercial Name: (Measles, Mumps and Rubella Vaccine, Live, Attenuated)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): a1b8577c56035c4ad388e6a93986a21e  
//

Instance: PreQualDBa1b8577c56035c4ad388e6a93986a21e  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2003-08-08
* vaccineType.coding.code = #MeaslesMumpsandRubella
* vaccineType.coding.display = "Measles, Mumps and Rubella"
* commercialName = "Measles, Mumps and Rubella Vaccine, Live, Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "a1b8577c56035c4ad388e6a93986a21e  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeaslesMumpsandRubellaProducta1b8577c56035c4ad388e6a93986a21e  ) 

Instance: MeaslesMumpsandRubellaProducta1b8577c56035c4ad388e6a93986a21e  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles, Mumps and Rubella Vaccine, Live, Attenuated"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  5 'doses'
* classification = #MeaslesMumpsandRubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuala1b8577c56035c4ad388e6a93986a21e  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2003-08-08
* product  = Reference(MeaslesMumpsandRubellaProducta1b8577c56035c4ad388e6a93986a21e  ) 

// Source Record Row //: 134
//  Date of Prequalification: (08/08/2003)
//  Vaccine Type: (Measles, Mumps and Rubella)
//  Commercial Name: (Measles, Mumps and Rubella Vaccine, Live, Attenuated)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 83ee5151e18552493e5441543f6cc8cb  
//

Instance: PreQualDB83ee5151e18552493e5441543f6cc8cb  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2003-08-08
* vaccineType.coding.code = #MeaslesMumpsandRubella
* vaccineType.coding.display = "Measles, Mumps and Rubella"
* commercialName = "Measles, Mumps and Rubella Vaccine, Live, Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "83ee5151e18552493e5441543f6cc8cb  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeaslesMumpsandRubellaProduct83ee5151e18552493e5441543f6cc8cb  ) 

Instance: MeaslesMumpsandRubellaProduct83ee5151e18552493e5441543f6cc8cb  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Measles, Mumps and Rubella Vaccine, Live, Attenuated"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #MeaslesMumpsandRubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual83ee5151e18552493e5441543f6cc8cb  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2003-08-08
* product  = Reference(MeaslesMumpsandRubellaProduct83ee5151e18552493e5441543f6cc8cb  ) 

// Source Record Row //: 135
//  Date of Prequalification: (21/03/2014)
//  Vaccine Type: (Meningococcal ACYW-135 (conjugate vaccine))
//  Commercial Name: (Menactra)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Sanofi Pasteur Inc.)
//  Responsible NRA: (CBER/FDA)
//  md5(ROW): 4caa75a5785775ab99aa60248da4fc29  
//

Instance: PreQualDB4caa75a5785775ab99aa60248da4fc29  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2014-03-21
* vaccineType.coding.code = #MeningococcalACYW135conj
* vaccineType.coding.display = "Meningococcal ACYW-135 (conjugate vaccine)"
* commercialName = "Menactra"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Sanofi Pasteur Inc."
* responsibleNRA.text = "CBER/FDA"
* index.value = "4caa75a5785775ab99aa60248da4fc29  "
* manufacturerReference = Reference(Manufacturere22cd18269d4ef7420dadcc919bda6e0  ) 
* responsibleNRAReference = Reference(Holder9d7db6151eea8bf9048690e4b4504c90  ) // CBER/FDA
* productReference = Reference(MeningococcalACYW135conjProduct4caa75a5785775ab99aa60248da4fc29  ) 

Instance: MeningococcalACYW135conjProduct4caa75a5785775ab99aa60248da4fc29  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Menactra"
* manufacturer = Reference(Manufacturere22cd18269d4ef7420dadcc919bda6e0  ) // Sanofi Pasteur Inc.
* doseQuantity =  1 'doses'
* classification = #MeningococcalACYW135conj
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual4caa75a5785775ab99aa60248da4fc29  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9d7db6151eea8bf9048690e4b4504c90  ) // CBER/FDA
* validityPeriod.start = 2014-03-21
* product  = Reference(MeningococcalACYW135conjProduct4caa75a5785775ab99aa60248da4fc29  ) 

// Source Record Row //: 136
//  Date of Prequalification: (06/07/2023)
//  Vaccine Type: (Menigococcal ACYWX (Polysaccharide conjugate))
//  Commercial Name: (MenFive™)
//  Presentation: (Vial + Ampoule)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 62f4ead3da74f2f31a51006339af12fe  
//

Instance: PreQualDB62f4ead3da74f2f31a51006339af12fe  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2023-07-06
* vaccineType.coding.code = #MenigococcalACYWXPolysac
* vaccineType.coding.display = "Menigococcal ACYWX (Polysaccharide conjugate)"
* commercialName = "MenFive™"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "62f4ead3da74f2f31a51006339af12fe  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MenigococcalACYWXPolysacProduct62f4ead3da74f2f31a51006339af12fe  ) 

Instance: MenigococcalACYWXPolysacProduct62f4ead3da74f2f31a51006339af12fe  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "MenFive™"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #MenigococcalACYWXPolysac
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQual62f4ead3da74f2f31a51006339af12fe  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2023-07-06
* product  = Reference(MenigococcalACYWXPolysacProduct62f4ead3da74f2f31a51006339af12fe  ) 

// Source Record Row //: 137
//  Date of Prequalification: (06/07/2023)
//  Vaccine Type: (Menigococcal ACYWX (Polysaccharide conjugate))
//  Commercial Name: (MenFive™)
//  Presentation: (Vial + Ampoule)
//  No. of doses: (5)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 6e9e4e4a66528692b80623cf9b12d209  
//

Instance: PreQualDB6e9e4e4a66528692b80623cf9b12d209  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2023-07-06
* vaccineType.coding.code = #MenigococcalACYWXPolysac
* vaccineType.coding.display = "Menigococcal ACYWX (Polysaccharide conjugate)"
* commercialName = "MenFive™"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 5
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "6e9e4e4a66528692b80623cf9b12d209  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MenigococcalACYWXPolysacProduct6e9e4e4a66528692b80623cf9b12d209  ) 

Instance: MenigococcalACYWXPolysacProduct6e9e4e4a66528692b80623cf9b12d209  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "MenFive™"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  5 'doses'
* classification = #MenigococcalACYWXPolysac
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQual6e9e4e4a66528692b80623cf9b12d209  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2023-07-06
* product  = Reference(MenigococcalACYWXPolysacProduct6e9e4e4a66528692b80623cf9b12d209  ) 

// Source Record Row //: 138
//  Date of Prequalification: (30/12/2014)
//  Vaccine Type: (Meningococcal A Conjugate 5 µg)
//  Commercial Name: (Meningococcal A Conjugate 5 micrograms MenAfriVac 5µg)
//  Presentation: (Vial + Ampoule)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 59a4a8dd61e6115a46849c83d7b6fd2c  
//

Instance: PreQualDB59a4a8dd61e6115a46849c83d7b6fd2c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2014-12-30
* vaccineType.coding.code = #MeningococcalAConjugate5
* vaccineType.coding.display = "Meningococcal A Conjugate 5 µg"
* commercialName = "Meningococcal A Conjugate 5 micrograms MenAfriVac 5µg"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "59a4a8dd61e6115a46849c83d7b6fd2c  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeningococcalAConjugate5Product59a4a8dd61e6115a46849c83d7b6fd2c  ) 

Instance: MeningococcalAConjugate5Product59a4a8dd61e6115a46849c83d7b6fd2c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Meningococcal A Conjugate 5 micrograms MenAfriVac 5µg"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #MeningococcalAConjugate5
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQual59a4a8dd61e6115a46849c83d7b6fd2c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2014-12-30
* product  = Reference(MeningococcalAConjugate5Product59a4a8dd61e6115a46849c83d7b6fd2c  ) 

// Source Record Row //: 139
//  Date of Prequalification: (23/06/2010)
//  Vaccine Type: (Meningococcal A Conjugate 10 µg)
//  Commercial Name: (Meningococcal A Conjugate MenAfriVac)
//  Presentation: (Vial + Ampoule)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 41addf46a75c0e97534853e5745f15d0  
//

Instance: PreQualDB41addf46a75c0e97534853e5745f15d0  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-06-23
* vaccineType.coding.code = #MeningococcalAConjugate1
* vaccineType.coding.display = "Meningococcal A Conjugate 10 µg"
* commercialName = "Meningococcal A Conjugate MenAfriVac"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "41addf46a75c0e97534853e5745f15d0  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MeningococcalAConjugate1Product41addf46a75c0e97534853e5745f15d0  ) 

Instance: MeningococcalAConjugate1Product41addf46a75c0e97534853e5745f15d0  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Meningococcal A Conjugate MenAfriVac"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #MeningococcalAConjugate1
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQual41addf46a75c0e97534853e5745f15d0  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2010-06-23
* product  = Reference(MeningococcalAConjugate1Product41addf46a75c0e97534853e5745f15d0  ) 

// Source Record Row //: 140
//  Date of Prequalification: (28/01/2022)
//  Vaccine Type: (Meningococcal ACYW-135 Tetanus Toxoid (conjugate vaccine))
//  Commercial Name: (MenQuadfi)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Sanofi Pasteur Inc.)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): 85e37fdf8b368c828f1e3bf048f6ca6d  
//

Instance: PreQualDB85e37fdf8b368c828f1e3bf048f6ca6d  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2022-01-28
* vaccineType.coding.code = #MeningococcalACYW135Teta
* vaccineType.coding.display = "Meningococcal ACYW-135 Tetanus Toxoid (conjugate vaccine)"
* commercialName = "MenQuadfi"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Sanofi Pasteur Inc."
* responsibleNRA.text = "European Medicines Agency"
* index.value = "85e37fdf8b368c828f1e3bf048f6ca6d  "
* manufacturerReference = Reference(Manufacturere22cd18269d4ef7420dadcc919bda6e0  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(MeningococcalACYW135TetaProduct85e37fdf8b368c828f1e3bf048f6ca6d  ) 

Instance: MeningococcalACYW135TetaProduct85e37fdf8b368c828f1e3bf048f6ca6d  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "MenQuadfi"
* manufacturer = Reference(Manufacturere22cd18269d4ef7420dadcc919bda6e0  ) // Sanofi Pasteur Inc.
* doseQuantity =  1 'doses'
* classification = #MeningococcalACYW135Teta
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual85e37fdf8b368c828f1e3bf048f6ca6d  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2022-01-28
* product  = Reference(MeningococcalACYW135TetaProduct85e37fdf8b368c828f1e3bf048f6ca6d  ) 

// Source Record Row //: 141
//  Date of Prequalification: (31/07/2013)
//  Vaccine Type: (Meningococcal ACYW-135 (conjugate vaccine))
//  Commercial Name: (Menveo)
//  Presentation: (Two vial set (active + active))
//  No. of doses: (1)
//  Manufacturer: (GlaxoSmithKline Vaccines S.r.l.)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): 95cae3b1768b8647e3f971137397d84f  
//

Instance: PreQualDB95cae3b1768b8647e3f971137397d84f  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2013-07-31
* vaccineType.coding.code = #MeningococcalACYW135conj
* vaccineType.coding.display = "Meningococcal ACYW-135 (conjugate vaccine)"
* commercialName = "Menveo"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveactive
* presentation.coding.display = "Two vial set (active + active)"
* numDoses = 1
* manufacturer.text = "GlaxoSmithKline Vaccines S.r.l."
* responsibleNRA.text = "European Medicines Agency"
* index.value = "95cae3b1768b8647e3f971137397d84f  "
* manufacturerReference = Reference(Manufacturer9dc14eaedd939584bb18ed5514df50e4  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(MeningococcalACYW135conjProduct95cae3b1768b8647e3f971137397d84f  ) 

Instance: MeningococcalACYW135conjProduct95cae3b1768b8647e3f971137397d84f  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Menveo"
* manufacturer = Reference(Manufacturer9dc14eaedd939584bb18ed5514df50e4  ) // GlaxoSmithKline Vaccines S.r.l.
* doseQuantity =  1 'doses'
* classification = #MeningococcalACYW135conj
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveactive

Instance: PreQual95cae3b1768b8647e3f971137397d84f  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2013-07-31
* product  = Reference(MeningococcalACYW135conjProduct95cae3b1768b8647e3f971137397d84f  ) 

// Source Record Row //: 142
//  Date of Prequalification: (03/11/2009)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Monovalent Type 1)
//  Commercial Name: (Monovalent Oral Poliomyelitis Vaccine Type 1 (mOPV1))
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (PT Bio Farma (Persero))
//  Responsible NRA: (National Agency of Drug and Food Control Indonesia)
//  md5(ROW): cea74be2c728329aad7b9b33ae16a0b1  
//

Instance: PreQualDBcea74be2c728329aad7b9b33ae16a0b1  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-11-03
* vaccineType.coding.code = #PolioVaccineOralOPVMonov
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Monovalent Type 1"
* commercialName = "Monovalent Oral Poliomyelitis Vaccine Type 1 (mOPV1)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "PT Bio Farma (Persero)"
* responsibleNRA.text = "National Agency of Drug and Food Control Indonesia"
* index.value = "cea74be2c728329aad7b9b33ae16a0b1  "
* manufacturerReference = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) 
* responsibleNRAReference = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* productReference = Reference(PolioVaccineOralOPVMonovProductcea74be2c728329aad7b9b33ae16a0b1  ) 

Instance: PolioVaccineOralOPVMonovProductcea74be2c728329aad7b9b33ae16a0b1  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Monovalent Oral Poliomyelitis Vaccine Type 1 (mOPV1)"
* manufacturer = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) // PT Bio Farma (Persero)
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVMonov
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualcea74be2c728329aad7b9b33ae16a0b1  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* validityPeriod.start = 2009-11-03
* product  = Reference(PolioVaccineOralOPVMonovProductcea74be2c728329aad7b9b33ae16a0b1  ) 

// Source Record Row //: 143
//  Date of Prequalification: (21/06/2019)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Monovalent Type 2)
//  Commercial Name: (Monovalent Oral Poliomyelitis Vaccine Type 2)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (PT Bio Farma (Persero))
//  Responsible NRA: (National Agency of Drug and Food Control Indonesia)
//  md5(ROW): ef716e2b9567223ce6c95b090480ecfe  
//

Instance: PreQualDBef716e2b9567223ce6c95b090480ecfe  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2019-06-21
* vaccineType.coding.code = #PolioVaccineOralOPVMonov
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Monovalent Type 2"
* commercialName = "Monovalent Oral Poliomyelitis Vaccine Type 2"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "PT Bio Farma (Persero)"
* responsibleNRA.text = "National Agency of Drug and Food Control Indonesia"
* index.value = "ef716e2b9567223ce6c95b090480ecfe  "
* manufacturerReference = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) 
* responsibleNRAReference = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* productReference = Reference(PolioVaccineOralOPVMonovProductef716e2b9567223ce6c95b090480ecfe  ) 

Instance: PolioVaccineOralOPVMonovProductef716e2b9567223ce6c95b090480ecfe  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Monovalent Oral Poliomyelitis Vaccine Type 2"
* manufacturer = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) // PT Bio Farma (Persero)
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVMonov
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualef716e2b9567223ce6c95b090480ecfe  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* validityPeriod.start = 2019-06-21
* product  = Reference(PolioVaccineOralOPVMonovProductef716e2b9567223ce6c95b090480ecfe  ) 

// Source Record Row //: 144
//  Date of Prequalification: (03/11/2009)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Monovalent Type 1)
//  Commercial Name: (Monovalent type 1 Oral Poliomyelitis vaccine, IP (mOPV1))
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Haffkine Bio Pharmaceutical Corporation Ltd)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): ae7e506ca48a3aa605b188cd11eaceab  
//

Instance: PreQualDBae7e506ca48a3aa605b188cd11eaceab  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-11-03
* vaccineType.coding.code = #PolioVaccineOralOPVMonov
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Monovalent Type 1"
* commercialName = "Monovalent type 1 Oral Poliomyelitis vaccine, IP (mOPV1)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Haffkine Bio Pharmaceutical Corporation Ltd"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "ae7e506ca48a3aa605b188cd11eaceab  "
* manufacturerReference = Reference(Manufacturer42565af3e1da9c8e2b48128dd0b2b292  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineOralOPVMonovProductae7e506ca48a3aa605b188cd11eaceab  ) 

Instance: PolioVaccineOralOPVMonovProductae7e506ca48a3aa605b188cd11eaceab  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Monovalent type 1 Oral Poliomyelitis vaccine, IP (mOPV1)"
* manufacturer = Reference(Manufacturer42565af3e1da9c8e2b48128dd0b2b292  ) // Haffkine Bio Pharmaceutical Corporation Ltd
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVMonov
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualae7e506ca48a3aa605b188cd11eaceab  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2009-11-03
* product  = Reference(PolioVaccineOralOPVMonovProductae7e506ca48a3aa605b188cd11eaceab  ) 

// Source Record Row //: 145
//  Date of Prequalification: (15/07/2022)
//  Vaccine Type: (Malaria)
//  Commercial Name: (Mosquirix)
//  Presentation: (Two vial set (active + active))
//  No. of doses: (2)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): 483f7a671c76d38fef929bed60c3934f  
//

Instance: PreQualDB483f7a671c76d38fef929bed60c3934f  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2022-07-15
* vaccineType.coding.code = #Malaria
* vaccineType.coding.display = "Malaria"
* commercialName = "Mosquirix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveactive
* presentation.coding.display = "Two vial set (active + active)"
* numDoses = 2
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "European Medicines Agency"
* index.value = "483f7a671c76d38fef929bed60c3934f  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(MalariaProduct483f7a671c76d38fef929bed60c3934f  ) 

Instance: MalariaProduct483f7a671c76d38fef929bed60c3934f  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Mosquirix"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  2 'doses'
* classification = #Malaria
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveactive

Instance: PreQual483f7a671c76d38fef929bed60c3934f  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2022-07-15
* product  = Reference(MalariaProduct483f7a671c76d38fef929bed60c3934f  ) 

// Source Record Row //: 146
//  Date of Prequalification: (27/04/2021)
//  Vaccine Type: (Ebola vaccine (MVA-BN-Filo [recombinant]))
//  Commercial Name: (Mvabea)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Janssen Cilag International N.V.)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): e447fe0b4d8469dedecdf17870fdae80  
//

Instance: PreQualDBe447fe0b4d8469dedecdf17870fdae80  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2021-04-27
* vaccineType.coding.code = #EbolavaccineMVABNFilorec
* vaccineType.coding.display = "Ebola vaccine (MVA-BN-Filo [recombinant])"
* commercialName = "Mvabea"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Janssen Cilag International N.V."
* responsibleNRA.text = "European Medicines Agency"
* index.value = "e447fe0b4d8469dedecdf17870fdae80  "
* manufacturerReference = Reference(Manufactureraca8ee84737803adc7e1b19a498b8fb9  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(EbolavaccineMVABNFilorecProducte447fe0b4d8469dedecdf17870fdae80  ) 

Instance: EbolavaccineMVABNFilorecProducte447fe0b4d8469dedecdf17870fdae80  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Mvabea"
* manufacturer = Reference(Manufactureraca8ee84737803adc7e1b19a498b8fb9  ) // Janssen Cilag International N.V.
* doseQuantity =  1 'doses'
* classification = #EbolavaccineMVABNFilorec
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuale447fe0b4d8469dedecdf17870fdae80  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2021-04-27
* product  = Reference(EbolavaccineMVABNFilorecProducte447fe0b4d8469dedecdf17870fdae80  ) 

// Source Record Row //: 147
//  Date of Prequalification: (26/03/2009)
//  Vaccine Type: (Yellow Fever)
//  Commercial Name: (n/a)
//  Presentation: (Ampoule)
//  No. of doses: (2)
//  Manufacturer: (Federal State Autonomous Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products», Russian Academy of Sciences)
//  Responsible NRA: (Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation)
//  md5(ROW): d2c75a15ed309658b3968519ddb31690  
//

Instance: PreQualDBd2c75a15ed309658b3968519ddb31690  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-03-26
* vaccineType.coding.code = #YellowFever
* vaccineType.coding.display = "Yellow Fever"
* commercialName = "n/a"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 2
* manufacturer.text = "Federal State Autonomous Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products», Russian Academy of Sciences"
* responsibleNRA.text = "Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation"
* index.value = "d2c75a15ed309658b3968519ddb31690  "
* manufacturerReference = Reference(Manufacturer862ceefb75480e8caff5b111610aceb0  ) 
* responsibleNRAReference = Reference(Holder8327c2d0eaf7c8d58e6036f3a9aee92d  ) // Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation
* productReference = Reference(YellowFeverProductd2c75a15ed309658b3968519ddb31690  ) 

Instance: YellowFeverProductd2c75a15ed309658b3968519ddb31690  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "n/a"
* manufacturer = Reference(Manufacturer862ceefb75480e8caff5b111610aceb0  ) // Federal State Autonomous Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products», Russian Academy of Sciences
* doseQuantity =  2 'doses'
* classification = #YellowFever
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule

Instance: PreQuald2c75a15ed309658b3968519ddb31690  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder8327c2d0eaf7c8d58e6036f3a9aee92d  ) // Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation
* validityPeriod.start = 2009-03-26
* product  = Reference(YellowFeverProductd2c75a15ed309658b3968519ddb31690  ) 

// Source Record Row //: 148
//  Date of Prequalification: (26/03/2009)
//  Vaccine Type: (Yellow Fever)
//  Commercial Name: (n/a)
//  Presentation: (Ampoule)
//  No. of doses: (5)
//  Manufacturer: (Federal State Autonomous Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products», Russian Academy of Sciences)
//  Responsible NRA: (Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation)
//  md5(ROW): 771d1a5c0acaee3e2dc9d56af1aba49d  
//

Instance: PreQualDB771d1a5c0acaee3e2dc9d56af1aba49d  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-03-26
* vaccineType.coding.code = #YellowFever
* vaccineType.coding.display = "Yellow Fever"
* commercialName = "n/a"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 5
* manufacturer.text = "Federal State Autonomous Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products», Russian Academy of Sciences"
* responsibleNRA.text = "Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation"
* index.value = "771d1a5c0acaee3e2dc9d56af1aba49d  "
* manufacturerReference = Reference(Manufacturer862ceefb75480e8caff5b111610aceb0  ) 
* responsibleNRAReference = Reference(Holder8327c2d0eaf7c8d58e6036f3a9aee92d  ) // Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation
* productReference = Reference(YellowFeverProduct771d1a5c0acaee3e2dc9d56af1aba49d  ) 

Instance: YellowFeverProduct771d1a5c0acaee3e2dc9d56af1aba49d  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "n/a"
* manufacturer = Reference(Manufacturer862ceefb75480e8caff5b111610aceb0  ) // Federal State Autonomous Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products», Russian Academy of Sciences
* doseQuantity =  5 'doses'
* classification = #YellowFever
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule

Instance: PreQual771d1a5c0acaee3e2dc9d56af1aba49d  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder8327c2d0eaf7c8d58e6036f3a9aee92d  ) // Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation
* validityPeriod.start = 2009-03-26
* product  = Reference(YellowFeverProduct771d1a5c0acaee3e2dc9d56af1aba49d  ) 

// Source Record Row //: 149
//  Date of Prequalification: (26/03/2009)
//  Vaccine Type: (Yellow Fever)
//  Commercial Name: (n/a)
//  Presentation: (Ampoule)
//  No. of doses: (10)
//  Manufacturer: (Federal State Autonomous Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products», Russian Academy of Sciences)
//  Responsible NRA: (Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation)
//  md5(ROW): e929626497bdbb71adbe925f0c09c79f  
//

Instance: PreQualDBe929626497bdbb71adbe925f0c09c79f  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-03-26
* vaccineType.coding.code = #YellowFever
* vaccineType.coding.display = "Yellow Fever"
* commercialName = "n/a"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 10
* manufacturer.text = "Federal State Autonomous Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products», Russian Academy of Sciences"
* responsibleNRA.text = "Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation"
* index.value = "e929626497bdbb71adbe925f0c09c79f  "
* manufacturerReference = Reference(Manufacturer862ceefb75480e8caff5b111610aceb0  ) 
* responsibleNRAReference = Reference(Holder8327c2d0eaf7c8d58e6036f3a9aee92d  ) // Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation
* productReference = Reference(YellowFeverProducte929626497bdbb71adbe925f0c09c79f  ) 

Instance: YellowFeverProducte929626497bdbb71adbe925f0c09c79f  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "n/a"
* manufacturer = Reference(Manufacturer862ceefb75480e8caff5b111610aceb0  ) // Federal State Autonomous Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products», Russian Academy of Sciences
* doseQuantity =  10 'doses'
* classification = #YellowFever
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule

Instance: PreQuale929626497bdbb71adbe925f0c09c79f  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder8327c2d0eaf7c8d58e6036f3a9aee92d  ) // Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation
* validityPeriod.start = 2009-03-26
* product  = Reference(YellowFeverProducte929626497bdbb71adbe925f0c09c79f  ) 

// Source Record Row //: 150
//  Date of Prequalification: (26/11/2012)
//  Vaccine Type: (Influenza, Pandemic (H1N1))
//  Commercial Name: (NASOVAC Influenza Vaccine, Live Attenuated (Human) Freeze-Dried)
//  Presentation: (Vial + Ampoule)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 48693eb423ca747a21dc8951d0c84948  
//

Instance: PreQualDB48693eb423ca747a21dc8951d0c84948  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2012-11-26
* vaccineType.coding.code = #InfluenzaPandemicH1N1
* vaccineType.coding.display = "Influenza, Pandemic (H1N1)"
* commercialName = "NASOVAC Influenza Vaccine, Live Attenuated (Human) Freeze-Dried"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "48693eb423ca747a21dc8951d0c84948  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(InfluenzaPandemicH1N1Product48693eb423ca747a21dc8951d0c84948  ) 

Instance: InfluenzaPandemicH1N1Product48693eb423ca747a21dc8951d0c84948  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "NASOVAC Influenza Vaccine, Live Attenuated (Human) Freeze-Dried"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #InfluenzaPandemicH1N1
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQual48693eb423ca747a21dc8951d0c84948  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2012-11-26
* product  = Reference(InfluenzaPandemicH1N1Product48693eb423ca747a21dc8951d0c84948  ) 

// Source Record Row //: 151
//  Date of Prequalification: (26/11/2012)
//  Vaccine Type: (Influenza, Pandemic (H1N1))
//  Commercial Name: (NASOVAC Influenza Vaccine, Live Attenuated (Human) Freeze-Dried)
//  Presentation: (Vial + Ampoule)
//  No. of doses: (5)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 7168c312db80310f2cd6012ffa5e2f8f  
//

Instance: PreQualDB7168c312db80310f2cd6012ffa5e2f8f  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2012-11-26
* vaccineType.coding.code = #InfluenzaPandemicH1N1
* vaccineType.coding.display = "Influenza, Pandemic (H1N1)"
* commercialName = "NASOVAC Influenza Vaccine, Live Attenuated (Human) Freeze-Dried"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 5
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "7168c312db80310f2cd6012ffa5e2f8f  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(InfluenzaPandemicH1N1Product7168c312db80310f2cd6012ffa5e2f8f  ) 

Instance: InfluenzaPandemicH1N1Product7168c312db80310f2cd6012ffa5e2f8f  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "NASOVAC Influenza Vaccine, Live Attenuated (Human) Freeze-Dried"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  5 'doses'
* classification = #InfluenzaPandemicH1N1
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQual7168c312db80310f2cd6012ffa5e2f8f  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2012-11-26
* product  = Reference(InfluenzaPandemicH1N1Product7168c312db80310f2cd6012ffa5e2f8f  ) 

// Source Record Row //: 152
//  Date of Prequalification: (30/09/2015)
//  Vaccine Type: (Influenza, seasonal (Trivalent))
//  Commercial Name: (Nasovac-S Influenza Vaccine, Live, Attenuated (Human))
//  Presentation: (Vial + Ampoule)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): eb55e6f37bc19bec445ee030c5bce405  
//

Instance: PreQualDBeb55e6f37bc19bec445ee030c5bce405  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2015-09-30
* vaccineType.coding.code = #InfluenzaseasonalTrivale
* vaccineType.coding.display = "Influenza, seasonal (Trivalent)"
* commercialName = "Nasovac-S Influenza Vaccine, Live, Attenuated (Human)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "eb55e6f37bc19bec445ee030c5bce405  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(InfluenzaseasonalTrivaleProducteb55e6f37bc19bec445ee030c5bce405  ) 

Instance: InfluenzaseasonalTrivaleProducteb55e6f37bc19bec445ee030c5bce405  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Nasovac-S Influenza Vaccine, Live, Attenuated (Human)"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #InfluenzaseasonalTrivale
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQualeb55e6f37bc19bec445ee030c5bce405  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2015-09-30
* product  = Reference(InfluenzaseasonalTrivaleProducteb55e6f37bc19bec445ee030c5bce405  ) 

// Source Record Row //: 153
//  Date of Prequalification: (31/08/2016)
//  Vaccine Type: (Meningococcal ACYW-135 (conjugate vaccine))
//  Commercial Name: (Nimenrix)
//  Presentation: (Vial + Ampoule)
//  No. of doses: (1)
//  Manufacturer: (Pfizer Europe MA EEIG)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): b59403bf43f59483bc3d5811fbbe99ae  
//

Instance: PreQualDBb59403bf43f59483bc3d5811fbbe99ae  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2016-08-31
* vaccineType.coding.code = #MeningococcalACYW135conj
* vaccineType.coding.display = "Meningococcal ACYW-135 (conjugate vaccine)"
* commercialName = "Nimenrix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 1
* manufacturer.text = "Pfizer Europe MA EEIG"
* responsibleNRA.text = "European Medicines Agency"
* index.value = "b59403bf43f59483bc3d5811fbbe99ae  "
* manufacturerReference = Reference(Manufacturer0f92a4144844f2cd6ed7fe33dc8d7b1c  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(MeningococcalACYW135conjProductb59403bf43f59483bc3d5811fbbe99ae  ) 

Instance: MeningococcalACYW135conjProductb59403bf43f59483bc3d5811fbbe99ae  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Nimenrix"
* manufacturer = Reference(Manufacturer0f92a4144844f2cd6ed7fe33dc8d7b1c  ) // Pfizer Europe MA EEIG
* doseQuantity =  1 'doses'
* classification = #MeningococcalACYW135conj
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQualb59403bf43f59483bc3d5811fbbe99ae  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2016-08-31
* product  = Reference(MeningococcalACYW135conjProductb59403bf43f59483bc3d5811fbbe99ae  ) 

// Source Record Row //: 154
//  Date of Prequalification: (06/07/2011)
//  Vaccine Type: (Diphtheria-Tetanus (reduced antigen content))
//  Commercial Name: (none)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (PT Bio Farma (Persero))
//  Responsible NRA: (National Agency of Drug and Food Control Indonesia)
//  md5(ROW): 844b4cd71587aa7b05205985fadc54bf  
//

Instance: PreQualDB844b4cd71587aa7b05205985fadc54bf  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2011-07-06
* vaccineType.coding.code = #DiphtheriaTetanusreduced
* vaccineType.coding.display = "Diphtheria-Tetanus (reduced antigen content)"
* commercialName = "none"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "PT Bio Farma (Persero)"
* responsibleNRA.text = "National Agency of Drug and Food Control Indonesia"
* index.value = "844b4cd71587aa7b05205985fadc54bf  "
* manufacturerReference = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) 
* responsibleNRAReference = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* productReference = Reference(DiphtheriaTetanusreducedProduct844b4cd71587aa7b05205985fadc54bf  ) 

Instance: DiphtheriaTetanusreducedProduct844b4cd71587aa7b05205985fadc54bf  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "none"
* manufacturer = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) // PT Bio Farma (Persero)
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanusreduced
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual844b4cd71587aa7b05205985fadc54bf  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* validityPeriod.start = 2011-07-06
* product  = Reference(DiphtheriaTetanusreducedProduct844b4cd71587aa7b05205985fadc54bf  ) 

// Source Record Row //: 155
//  Date of Prequalification: (17/09/2014)
//  Vaccine Type: (Diphtheria-Tetanus (reduced antigen content))
//  Commercial Name: (None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BE Td)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 2d90fb090e2c500ab939d14b59fe7b4c  
//

Instance: PreQualDB2d90fb090e2c500ab939d14b59fe7b4c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2014-09-17
* vaccineType.coding.code = #DiphtheriaTetanusreduced
* vaccineType.coding.display = "Diphtheria-Tetanus (reduced antigen content)"
* commercialName = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BE Td"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "2d90fb090e2c500ab939d14b59fe7b4c  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusreducedProduct2d90fb090e2c500ab939d14b59fe7b4c  ) 

Instance: DiphtheriaTetanusreducedProduct2d90fb090e2c500ab939d14b59fe7b4c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BE Td"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  1 'doses'
* classification = #DiphtheriaTetanusreduced
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual2d90fb090e2c500ab939d14b59fe7b4c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2014-09-17
* product  = Reference(DiphtheriaTetanusreducedProduct2d90fb090e2c500ab939d14b59fe7b4c  ) 

// Source Record Row //: 156
//  Date of Prequalification: (17/09/2014)
//  Vaccine Type: (Diphtheria-Tetanus (reduced antigen content))
//  Commercial Name: (None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BE Td)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 765d85d2d2e92fc0aa155a4189f60843  
//

Instance: PreQualDB765d85d2d2e92fc0aa155a4189f60843  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2014-09-17
* vaccineType.coding.code = #DiphtheriaTetanusreduced
* vaccineType.coding.display = "Diphtheria-Tetanus (reduced antigen content)"
* commercialName = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BE Td"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "765d85d2d2e92fc0aa155a4189f60843  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusreducedProduct765d85d2d2e92fc0aa155a4189f60843  ) 

Instance: DiphtheriaTetanusreducedProduct765d85d2d2e92fc0aa155a4189f60843  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BE Td"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanusreduced
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual765d85d2d2e92fc0aa155a4189f60843  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2014-09-17
* product  = Reference(DiphtheriaTetanusreducedProduct765d85d2d2e92fc0aa155a4189f60843  ) 

// Source Record Row //: 157
//  Date of Prequalification: (09/03/2020)
//  Vaccine Type: (Diphtheria-Tetanus (reduced antigen content))
//  Commercial Name: (None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BE Td)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 93f61c0e63644a7adbd43720ad096a6b  
//

Instance: PreQualDB93f61c0e63644a7adbd43720ad096a6b  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2020-03-09
* vaccineType.coding.code = #DiphtheriaTetanusreduced
* vaccineType.coding.display = "Diphtheria-Tetanus (reduced antigen content)"
* commercialName = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BE Td"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "93f61c0e63644a7adbd43720ad096a6b  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusreducedProduct93f61c0e63644a7adbd43720ad096a6b  ) 

Instance: DiphtheriaTetanusreducedProduct93f61c0e63644a7adbd43720ad096a6b  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BE Td"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  20 'doses'
* classification = #DiphtheriaTetanusreduced
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual93f61c0e63644a7adbd43720ad096a6b  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2020-03-09
* product  = Reference(DiphtheriaTetanusreducedProduct93f61c0e63644a7adbd43720ad096a6b  ) 

// Source Record Row //: 158
//  Date of Prequalification: (12/07/2012)
//  Vaccine Type: (Tetanus Toxoid)
//  Commercial Name: (None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BEtt.)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): f9fde2170e347e77162f463b9c3a2753  
//

Instance: PreQualDBf9fde2170e347e77162f463b9c3a2753  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2012-07-12
* vaccineType.coding.code = #TetanusToxoid
* vaccineType.coding.display = "Tetanus Toxoid"
* commercialName = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BEtt."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "f9fde2170e347e77162f463b9c3a2753  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(TetanusToxoidProductf9fde2170e347e77162f463b9c3a2753  ) 

Instance: TetanusToxoidProductf9fde2170e347e77162f463b9c3a2753  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BEtt."
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  1 'doses'
* classification = #TetanusToxoid
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualf9fde2170e347e77162f463b9c3a2753  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2012-07-12
* product  = Reference(TetanusToxoidProductf9fde2170e347e77162f463b9c3a2753  ) 

// Source Record Row //: 159
//  Date of Prequalification: (12/07/2012)
//  Vaccine Type: (Tetanus Toxoid)
//  Commercial Name: (None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BEtt.)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 5d2f3b492c9af0f21b268c22a11400c0  
//

Instance: PreQualDB5d2f3b492c9af0f21b268c22a11400c0  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2012-07-12
* vaccineType.coding.code = #TetanusToxoid
* vaccineType.coding.display = "Tetanus Toxoid"
* commercialName = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BEtt."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "5d2f3b492c9af0f21b268c22a11400c0  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(TetanusToxoidProduct5d2f3b492c9af0f21b268c22a11400c0  ) 

Instance: TetanusToxoidProduct5d2f3b492c9af0f21b268c22a11400c0  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BEtt."
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  10 'doses'
* classification = #TetanusToxoid
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual5d2f3b492c9af0f21b268c22a11400c0  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2012-07-12
* product  = Reference(TetanusToxoidProduct5d2f3b492c9af0f21b268c22a11400c0  ) 

// Source Record Row //: 160
//  Date of Prequalification: (21/12/2009)
//  Vaccine Type: (Tetanus Toxoid)
//  Commercial Name: (None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BEtt.)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 28645bb5f0babbccee86ce69b98ec9d6  
//

Instance: PreQualDB28645bb5f0babbccee86ce69b98ec9d6  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-12-21
* vaccineType.coding.code = #TetanusToxoid
* vaccineType.coding.display = "Tetanus Toxoid"
* commercialName = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BEtt."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "28645bb5f0babbccee86ce69b98ec9d6  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(TetanusToxoidProduct28645bb5f0babbccee86ce69b98ec9d6  ) 

Instance: TetanusToxoidProduct28645bb5f0babbccee86ce69b98ec9d6  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  BEtt."
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  20 'doses'
* classification = #TetanusToxoid
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual28645bb5f0babbccee86ce69b98ec9d6  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2009-12-21
* product  = Reference(TetanusToxoidProduct28645bb5f0babbccee86ce69b98ec9d6  ) 

// Source Record Row //: 161
//  Date of Prequalification: (18/05/2012)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid).)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 493bac374b484cee83f218d75bca265e  
//

Instance: PreQualDB493bac374b484cee83f218d75bca265e  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2012-05-18
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid)."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "493bac374b484cee83f218d75bca265e  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProduct493bac374b484cee83f218d75bca265e  ) 

Instance: DiphtheriaTetanusPertussProduct493bac374b484cee83f218d75bca265e  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid)."
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  1 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual493bac374b484cee83f218d75bca265e  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2012-05-18
* product  = Reference(DiphtheriaTetanusPertussProduct493bac374b484cee83f218d75bca265e  ) 

// Source Record Row //: 162
//  Date of Prequalification: (27/11/2014)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid).)
//  Presentation: (Vial)
//  No. of doses: (2)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 588074b4bc22a6afb41276d6e3a1bc57  
//

Instance: PreQualDB588074b4bc22a6afb41276d6e3a1bc57  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2014-11-27
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid)."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "588074b4bc22a6afb41276d6e3a1bc57  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProduct588074b4bc22a6afb41276d6e3a1bc57  ) 

Instance: DiphtheriaTetanusPertussProduct588074b4bc22a6afb41276d6e3a1bc57  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid)."
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  2 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual588074b4bc22a6afb41276d6e3a1bc57  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2014-11-27
* product  = Reference(DiphtheriaTetanusPertussProduct588074b4bc22a6afb41276d6e3a1bc57  ) 

// Source Record Row //: 163
//  Date of Prequalification: (27/11/2014)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid).)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 32779e6bf47670e22e3b351cfc5530c4  
//

Instance: PreQualDB32779e6bf47670e22e3b351cfc5530c4  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2014-11-27
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid)."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "32779e6bf47670e22e3b351cfc5530c4  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProduct32779e6bf47670e22e3b351cfc5530c4  ) 

Instance: DiphtheriaTetanusPertussProduct32779e6bf47670e22e3b351cfc5530c4  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid)."
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  5 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual32779e6bf47670e22e3b351cfc5530c4  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2014-11-27
* product  = Reference(DiphtheriaTetanusPertussProduct32779e6bf47670e22e3b351cfc5530c4  ) 

// Source Record Row //: 164
//  Date of Prequalification: (18/05/2012)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid).)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): e3b135252953c7f29f4a82b3cdfded35  
//

Instance: PreQualDBe3b135252953c7f29f4a82b3cdfded35  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2012-05-18
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid)."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "e3b135252953c7f29f4a82b3cdfded35  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProducte3b135252953c7f29f4a82b3cdfded35  ) 

Instance: DiphtheriaTetanusPertussProducte3b135252953c7f29f4a82b3cdfded35  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Liquid)."
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuale3b135252953c7f29f4a82b3cdfded35  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2012-05-18
* product  = Reference(DiphtheriaTetanusPertussProducte3b135252953c7f29f4a82b3cdfded35  ) 

// Source Record Row //: 165
//  Date of Prequalification: (01/09/2011)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Reconstituted).)
//  Presentation: (Two vial set (active + active))
//  No. of doses: (1)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 120c366956f5490de6fe5fa85ba7e9ae  
//

Instance: PreQualDB120c366956f5490de6fe5fa85ba7e9ae  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2011-09-01
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Reconstituted)."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveactive
* presentation.coding.display = "Two vial set (active + active)"
* numDoses = 1
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "120c366956f5490de6fe5fa85ba7e9ae  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProduct120c366956f5490de6fe5fa85ba7e9ae  ) 

Instance: DiphtheriaTetanusPertussProduct120c366956f5490de6fe5fa85ba7e9ae  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Reconstituted)."
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  1 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveactive

Instance: PreQual120c366956f5490de6fe5fa85ba7e9ae  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2011-09-01
* product  = Reference(DiphtheriaTetanusPertussProduct120c366956f5490de6fe5fa85ba7e9ae  ) 

// Source Record Row //: 166
//  Date of Prequalification: (01/09/2011)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Reconstituted).)
//  Presentation: (Two vial set (active + active))
//  No. of doses: (10)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 520f511adb804a1ca5d7fa29d15799b3  
//

Instance: PreQualDB520f511adb804a1ca5d7fa29d15799b3  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2011-09-01
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Reconstituted)."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveactive
* presentation.coding.display = "Two vial set (active + active)"
* numDoses = 10
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "520f511adb804a1ca5d7fa29d15799b3  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProduct520f511adb804a1ca5d7fa29d15799b3  ) 

Instance: DiphtheriaTetanusPertussProduct520f511adb804a1ca5d7fa29d15799b3  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  ComBE Five (Reconstituted)."
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveactive

Instance: PreQual520f511adb804a1ca5d7fa29d15799b3  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2011-09-01
* product  = Reference(DiphtheriaTetanusPertussProduct520f511adb804a1ca5d7fa29d15799b3  ) 

// Source Record Row //: 167
//  Date of Prequalification: (31/07/2014)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell))
//  Commercial Name: (None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  TRIPVAC)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): a0ac41f8d8a64a093a5e07f7c9bbc8e4  
//

Instance: PreQualDBa0ac41f8d8a64a093a5e07f7c9bbc8e4  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2014-07-31
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)"
* commercialName = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  TRIPVAC"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "a0ac41f8d8a64a093a5e07f7c9bbc8e4  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProducta0ac41f8d8a64a093a5e07f7c9bbc8e4  ) 

Instance: DiphtheriaTetanusPertussProducta0ac41f8d8a64a093a5e07f7c9bbc8e4  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  TRIPVAC"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  1 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuala0ac41f8d8a64a093a5e07f7c9bbc8e4  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2014-07-31
* product  = Reference(DiphtheriaTetanusPertussProducta0ac41f8d8a64a093a5e07f7c9bbc8e4  ) 

// Source Record Row //: 168
//  Date of Prequalification: (31/07/2014)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell))
//  Commercial Name: (None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  TRIPVAC)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 76f7fbefcf37814d2dbf2af5d784ad74  
//

Instance: PreQualDB76f7fbefcf37814d2dbf2af5d784ad74  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2014-07-31
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)"
* commercialName = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  TRIPVAC"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "76f7fbefcf37814d2dbf2af5d784ad74  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(DiphtheriaTetanusPertussProduct76f7fbefcf37814d2dbf2af5d784ad74  ) 

Instance: DiphtheriaTetanusPertussProduct76f7fbefcf37814d2dbf2af5d784ad74  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "None used on labelling for supply through UN agencies.     Also marketed with labelled commercial name  TRIPVAC"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual76f7fbefcf37814d2dbf2af5d784ad74  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2014-07-31
* product  = Reference(DiphtheriaTetanusPertussProduct76f7fbefcf37814d2dbf2af5d784ad74  ) 

// Source Record Row //: 169
//  Date of Prequalification: (14/01/2016)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Monovalent Type 2)
//  Commercial Name: (ORAL MONOVALENT TYPE 2 POLIOMYELITIS VACCINE (mOPV2))
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Sanofi Pasteur)
//  Responsible NRA: (Agence nationale de sécurité du médicament et des produits de santé)
//  md5(ROW): f6d840e9cf722a80b38d0be001f47caf  
//

Instance: PreQualDBf6d840e9cf722a80b38d0be001f47caf  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2016-01-14
* vaccineType.coding.code = #PolioVaccineOralOPVMonov
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Monovalent Type 2"
* commercialName = "ORAL MONOVALENT TYPE 2 POLIOMYELITIS VACCINE (mOPV2)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Sanofi Pasteur"
* responsibleNRA.text = "Agence nationale de sécurité du médicament et des produits de santé"
* index.value = "f6d840e9cf722a80b38d0be001f47caf  "
* manufacturerReference = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) 
* responsibleNRAReference = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* productReference = Reference(PolioVaccineOralOPVMonovProductf6d840e9cf722a80b38d0be001f47caf  ) 

Instance: PolioVaccineOralOPVMonovProductf6d840e9cf722a80b38d0be001f47caf  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "ORAL MONOVALENT TYPE 2 POLIOMYELITIS VACCINE (mOPV2)"
* manufacturer = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) // Sanofi Pasteur
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVMonov
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualf6d840e9cf722a80b38d0be001f47caf  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* validityPeriod.start = 2016-01-14
* product  = Reference(PolioVaccineOralOPVMonovProductf6d840e9cf722a80b38d0be001f47caf  ) 

// Source Record Row //: 170
//  Date of Prequalification: (31/08/2020)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Trivalent)
//  Commercial Name: (Oral Poliomyelitis Vaccines (Oral Drops))
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (PT Bio Farma (Persero))
//  Responsible NRA: (National Agency of Drug and Food Control Indonesia)
//  md5(ROW): e0bcdc085107751b3df34ad04620ac21  
//

Instance: PreQualDBe0bcdc085107751b3df34ad04620ac21  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2020-08-31
* vaccineType.coding.code = #PolioVaccineOralOPVTriva
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Trivalent"
* commercialName = "Oral Poliomyelitis Vaccines (Oral Drops)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "PT Bio Farma (Persero)"
* responsibleNRA.text = "National Agency of Drug and Food Control Indonesia"
* index.value = "e0bcdc085107751b3df34ad04620ac21  "
* manufacturerReference = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) 
* responsibleNRAReference = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* productReference = Reference(PolioVaccineOralOPVTrivaProducte0bcdc085107751b3df34ad04620ac21  ) 

Instance: PolioVaccineOralOPVTrivaProducte0bcdc085107751b3df34ad04620ac21  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Oral Poliomyelitis Vaccines (Oral Drops)"
* manufacturer = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) // PT Bio Farma (Persero)
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVTriva
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuale0bcdc085107751b3df34ad04620ac21  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* validityPeriod.start = 2020-08-31
* product  = Reference(PolioVaccineOralOPVTrivaProducte0bcdc085107751b3df34ad04620ac21  ) 

// Source Record Row //: 171
//  Date of Prequalification: (18/12/2020)
//  Vaccine Type: (Influenza, Pandemic (H5N1))
//  Commercial Name: (Pandemic Live Attenuated Vaccine)
//  Presentation: (Sprayer)
//  No. of doses: (1)
//  Manufacturer: (AstraZeneca Pharmaceuticals LP.)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): 98147a8d5841bb5826a0742c93febdb7  
//

Instance: PreQualDB98147a8d5841bb5826a0742c93febdb7  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2020-12-18
* vaccineType.coding.code = #InfluenzaPandemicH5N1
* vaccineType.coding.display = "Influenza, Pandemic (H5N1)"
* commercialName = "Pandemic Live Attenuated Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Sprayer
* presentation.coding.display = "Sprayer"
* numDoses = 1
* manufacturer.text = "AstraZeneca Pharmaceuticals LP."
* responsibleNRA.text = "European Medicines Agency"
* index.value = "98147a8d5841bb5826a0742c93febdb7  "
* manufacturerReference = Reference(Manufacturer888ff5801a2f43bd6f2123419e61cb87  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(InfluenzaPandemicH5N1Product98147a8d5841bb5826a0742c93febdb7  ) 

Instance: InfluenzaPandemicH5N1Product98147a8d5841bb5826a0742c93febdb7  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Pandemic Live Attenuated Vaccine"
* manufacturer = Reference(Manufacturer888ff5801a2f43bd6f2123419e61cb87  ) // AstraZeneca Pharmaceuticals LP.
* doseQuantity =  1 'doses'
* classification = #InfluenzaPandemicH5N1
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Sprayer

Instance: PreQual98147a8d5841bb5826a0742c93febdb7  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2020-12-18
* product  = Reference(InfluenzaPandemicH5N1Product98147a8d5841bb5826a0742c93febdb7  ) 

// Source Record Row //: 172
//  Date of Prequalification: (22/01/2010)
//  Vaccine Type: (Influenza, Pandemic (H1N1))
//  Commercial Name: (Panenza)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Sanofi Pasteur)
//  Responsible NRA: (Agence nationale de sécurité du médicament et des produits de santé)
//  md5(ROW): 088d100de56d00ac49ab0a216ffd4424  
//

Instance: PreQualDB088d100de56d00ac49ab0a216ffd4424  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-01-22
* vaccineType.coding.code = #InfluenzaPandemicH1N1
* vaccineType.coding.display = "Influenza, Pandemic (H1N1)"
* commercialName = "Panenza"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Sanofi Pasteur"
* responsibleNRA.text = "Agence nationale de sécurité du médicament et des produits de santé"
* index.value = "088d100de56d00ac49ab0a216ffd4424  "
* manufacturerReference = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) 
* responsibleNRAReference = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* productReference = Reference(InfluenzaPandemicH1N1Product088d100de56d00ac49ab0a216ffd4424  ) 

Instance: InfluenzaPandemicH1N1Product088d100de56d00ac49ab0a216ffd4424  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Panenza"
* manufacturer = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) // Sanofi Pasteur
* doseQuantity =  10 'doses'
* classification = #InfluenzaPandemicH1N1
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual088d100de56d00ac49ab0a216ffd4424  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* validityPeriod.start = 2010-01-22
* product  = Reference(InfluenzaPandemicH1N1Product088d100de56d00ac49ab0a216ffd4424  ) 

// Source Record Row //: 173
//  Date of Prequalification: (01/12/2009)
//  Vaccine Type: (Influenza, Pandemic (H1N1))
//  Commercial Name: (Panvax)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Seqirus Limited)
//  Responsible NRA: (Therapeutic Goods Administration)
//  md5(ROW): 526f1bed643beeed056c10f07a683f71  
//

Instance: PreQualDB526f1bed643beeed056c10f07a683f71  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-12-01
* vaccineType.coding.code = #InfluenzaPandemicH1N1
* vaccineType.coding.display = "Influenza, Pandemic (H1N1)"
* commercialName = "Panvax"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Seqirus Limited"
* responsibleNRA.text = "Therapeutic Goods Administration"
* index.value = "526f1bed643beeed056c10f07a683f71  "
* manufacturerReference = Reference(Manufacturer41f97525c1b4c5c2ec18ee0e4e641a04  ) 
* responsibleNRAReference = Reference(Holderfc05b3d6a15f33e5f2a764fcfbc0ec16  ) // Therapeutic Goods Administration
* productReference = Reference(InfluenzaPandemicH1N1Product526f1bed643beeed056c10f07a683f71  ) 

Instance: InfluenzaPandemicH1N1Product526f1bed643beeed056c10f07a683f71  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Panvax"
* manufacturer = Reference(Manufacturer41f97525c1b4c5c2ec18ee0e4e641a04  ) // Seqirus Limited
* doseQuantity =  10 'doses'
* classification = #InfluenzaPandemicH1N1
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual526f1bed643beeed056c10f07a683f71  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderfc05b3d6a15f33e5f2a764fcfbc0ec16  ) // Therapeutic Goods Administration
* validityPeriod.start = 2009-12-01
* product  = Reference(InfluenzaPandemicH1N1Product526f1bed643beeed056c10f07a683f71  ) 

// Source Record Row //: 174
//  Date of Prequalification: (19/12/2014)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (Pentabio)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (PT Bio Farma (Persero))
//  Responsible NRA: (National Agency of Drug and Food Control Indonesia)
//  md5(ROW): 4aadc8e795e664423aad5161f0118f34  
//

Instance: PreQualDB4aadc8e795e664423aad5161f0118f34  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2014-12-19
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "Pentabio"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "PT Bio Farma (Persero)"
* responsibleNRA.text = "National Agency of Drug and Food Control Indonesia"
* index.value = "4aadc8e795e664423aad5161f0118f34  "
* manufacturerReference = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) 
* responsibleNRAReference = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* productReference = Reference(DiphtheriaTetanusPertussProduct4aadc8e795e664423aad5161f0118f34  ) 

Instance: DiphtheriaTetanusPertussProduct4aadc8e795e664423aad5161f0118f34  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Pentabio"
* manufacturer = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) // PT Bio Farma (Persero)
* doseQuantity =  5 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual4aadc8e795e664423aad5161f0118f34  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* validityPeriod.start = 2014-12-19
* product  = Reference(DiphtheriaTetanusPertussProduct4aadc8e795e664423aad5161f0118f34  ) 

// Source Record Row //: 175
//  Date of Prequalification: (19/12/2014)
//  Vaccine Type: (Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b)
//  Commercial Name: (Pentabio)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (PT Bio Farma (Persero))
//  Responsible NRA: (National Agency of Drug and Food Control Indonesia)
//  md5(ROW): 54d8790e5e5db152340b4fd96e6f2f11  
//

Instance: PreQualDB54d8790e5e5db152340b4fd96e6f2f11  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2014-12-19
* vaccineType.coding.code = #DiphtheriaTetanusPertuss
* vaccineType.coding.display = "Diphtheria-Tetanus-Pertussis (whole cell)-Hepatitis B-Haemophilus influenzae type b"
* commercialName = "Pentabio"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "PT Bio Farma (Persero)"
* responsibleNRA.text = "National Agency of Drug and Food Control Indonesia"
* index.value = "54d8790e5e5db152340b4fd96e6f2f11  "
* manufacturerReference = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) 
* responsibleNRAReference = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* productReference = Reference(DiphtheriaTetanusPertussProduct54d8790e5e5db152340b4fd96e6f2f11  ) 

Instance: DiphtheriaTetanusPertussProduct54d8790e5e5db152340b4fd96e6f2f11  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Pentabio"
* manufacturer = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) // PT Bio Farma (Persero)
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanusPertuss
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual54d8790e5e5db152340b4fd96e6f2f11  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* validityPeriod.start = 2014-12-19
* product  = Reference(DiphtheriaTetanusPertussProduct54d8790e5e5db152340b4fd96e6f2f11  ) 

// Source Record Row //: 176
//  Date of Prequalification: (21/04/2020)
//  Vaccine Type: (Polio Vaccine - Inactivated (IPV))
//  Commercial Name: (Picovax)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (AJ Vaccines A/S)
//  Responsible NRA: (Danish Medicines Agency)
//  md5(ROW): 096d9e8c31e30cc1148311ee66359a50  
//

Instance: PreQualDB096d9e8c31e30cc1148311ee66359a50  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2020-04-21
* vaccineType.coding.code = #PolioVaccineInactivatedI
* vaccineType.coding.display = "Polio Vaccine - Inactivated (IPV)"
* commercialName = "Picovax"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "AJ Vaccines A/S"
* responsibleNRA.text = "Danish Medicines Agency"
* index.value = "096d9e8c31e30cc1148311ee66359a50  "
* manufacturerReference = Reference(Manufacturer5dc54242e07048dc1f0433b45d61957c  ) 
* responsibleNRAReference = Reference(Holdera5a3d2d85f2b1e0fcd688a9dbd32e328  ) // Danish Medicines Agency
* productReference = Reference(PolioVaccineInactivatedIProduct096d9e8c31e30cc1148311ee66359a50  ) 

Instance: PolioVaccineInactivatedIProduct096d9e8c31e30cc1148311ee66359a50  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Picovax"
* manufacturer = Reference(Manufacturer5dc54242e07048dc1f0433b45d61957c  ) // AJ Vaccines A/S
* doseQuantity =  5 'doses'
* classification = #PolioVaccineInactivatedI
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual096d9e8c31e30cc1148311ee66359a50  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdera5a3d2d85f2b1e0fcd688a9dbd32e328  ) // Danish Medicines Agency
* validityPeriod.start = 2020-04-21
* product  = Reference(PolioVaccineInactivatedIProduct096d9e8c31e30cc1148311ee66359a50  ) 

// Source Record Row //: 177
//  Date of Prequalification: (18/12/2019)
//  Vaccine Type: (Pneumococcal (conjugate))
//  Commercial Name: (PNEUMOSIL®)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 81604632fc612703d280e60af24938ea  
//

Instance: PreQualDB81604632fc612703d280e60af24938ea  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2019-12-18
* vaccineType.coding.code = #Pneumococcalconjugate
* vaccineType.coding.display = "Pneumococcal (conjugate)"
* commercialName = "PNEUMOSIL®"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "81604632fc612703d280e60af24938ea  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PneumococcalconjugateProduct81604632fc612703d280e60af24938ea  ) 

Instance: PneumococcalconjugateProduct81604632fc612703d280e60af24938ea  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "PNEUMOSIL®"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #Pneumococcalconjugate
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual81604632fc612703d280e60af24938ea  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2019-12-18
* product  = Reference(PneumococcalconjugateProduct81604632fc612703d280e60af24938ea  ) 

// Source Record Row //: 178
//  Date of Prequalification: (18/12/2019)
//  Vaccine Type: (Pneumococcal (conjugate))
//  Commercial Name: (PNEUMOSIL®)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 300c6fe07dc895ee2b3022528850d26e  
//

Instance: PreQualDB300c6fe07dc895ee2b3022528850d26e  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2019-12-18
* vaccineType.coding.code = #Pneumococcalconjugate
* vaccineType.coding.display = "Pneumococcal (conjugate)"
* commercialName = "PNEUMOSIL®"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "300c6fe07dc895ee2b3022528850d26e  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PneumococcalconjugateProduct300c6fe07dc895ee2b3022528850d26e  ) 

Instance: PneumococcalconjugateProduct300c6fe07dc895ee2b3022528850d26e  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "PNEUMOSIL®"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  5 'doses'
* classification = #Pneumococcalconjugate
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual300c6fe07dc895ee2b3022528850d26e  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2019-12-18
* product  = Reference(PneumococcalconjugateProduct300c6fe07dc895ee2b3022528850d26e  ) 

// Source Record Row //: 179
//  Date of Prequalification: (19/01/2024)
//  Vaccine Type: (Pneumococcal (conjugate))
//  Commercial Name: (PNEUMOSIL)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 82c42719edaea37e1696ebde6674128c  
//

Instance: PreQualDB82c42719edaea37e1696ebde6674128c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-01-19
* vaccineType.coding.code = #Pneumococcalconjugate
* vaccineType.coding.display = "Pneumococcal (conjugate)"
* commercialName = "PNEUMOSIL"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "82c42719edaea37e1696ebde6674128c  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PneumococcalconjugateProduct82c42719edaea37e1696ebde6674128c  ) 

Instance: PneumococcalconjugateProduct82c42719edaea37e1696ebde6674128c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "PNEUMOSIL"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #Pneumococcalconjugate
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual82c42719edaea37e1696ebde6674128c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2024-01-19
* product  = Reference(PneumococcalconjugateProduct82c42719edaea37e1696ebde6674128c  ) 

// Source Record Row //: 180
//  Date of Prequalification: (29/10/2009)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Monovalent Type 1)
//  Commercial Name: (Polio Sabin Mono T1)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): 7d442364610244382098e1c4a3ba54c3  
//

Instance: PreQualDB7d442364610244382098e1c4a3ba54c3  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-10-29
* vaccineType.coding.code = #PolioVaccineOralOPVMonov
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Monovalent Type 1"
* commercialName = "Polio Sabin Mono T1"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "7d442364610244382098e1c4a3ba54c3  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(PolioVaccineOralOPVMonovProduct7d442364610244382098e1c4a3ba54c3  ) 

Instance: PolioVaccineOralOPVMonovProduct7d442364610244382098e1c4a3ba54c3  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Polio Sabin Mono T1"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  10 'doses'
* classification = #PolioVaccineOralOPVMonov
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual7d442364610244382098e1c4a3ba54c3  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2009-10-29
* product  = Reference(PolioVaccineOralOPVMonovProduct7d442364610244382098e1c4a3ba54c3  ) 

// Source Record Row //: 181
//  Date of Prequalification: (29/10/2009)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Monovalent Type 1)
//  Commercial Name: (Polio Sabin Mono T1)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): 4580ab03228ed6c70bb6c117b408f7e5  
//

Instance: PreQualDB4580ab03228ed6c70bb6c117b408f7e5  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-10-29
* vaccineType.coding.code = #PolioVaccineOralOPVMonov
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Monovalent Type 1"
* commercialName = "Polio Sabin Mono T1"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "4580ab03228ed6c70bb6c117b408f7e5  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(PolioVaccineOralOPVMonovProduct4580ab03228ed6c70bb6c117b408f7e5  ) 

Instance: PolioVaccineOralOPVMonovProduct4580ab03228ed6c70bb6c117b408f7e5  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Polio Sabin Mono T1"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVMonov
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual4580ab03228ed6c70bb6c117b408f7e5  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2009-10-29
* product  = Reference(PolioVaccineOralOPVMonovProduct4580ab03228ed6c70bb6c117b408f7e5  ) 

// Source Record Row //: 182
//  Date of Prequalification: (05/10/2010)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Monovalent Type 3)
//  Commercial Name: (Polio Sabin Mono Three (oral))
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): 7a252b223173567f21721ee15a36f057  
//

Instance: PreQualDB7a252b223173567f21721ee15a36f057  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-10-05
* vaccineType.coding.code = #PolioVaccineOralOPVMonov
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Monovalent Type 3"
* commercialName = "Polio Sabin Mono Three (oral)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "7a252b223173567f21721ee15a36f057  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(PolioVaccineOralOPVMonovProduct7a252b223173567f21721ee15a36f057  ) 

Instance: PolioVaccineOralOPVMonovProduct7a252b223173567f21721ee15a36f057  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Polio Sabin Mono Three (oral)"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  10 'doses'
* classification = #PolioVaccineOralOPVMonov
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual7a252b223173567f21721ee15a36f057  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2010-10-05
* product  = Reference(PolioVaccineOralOPVMonovProduct7a252b223173567f21721ee15a36f057  ) 

// Source Record Row //: 183
//  Date of Prequalification: (05/10/2010)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Monovalent Type 3)
//  Commercial Name: (Polio Sabin Mono Three (oral))
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): f22fcdfa611173d0afbce56d49867530  
//

Instance: PreQualDBf22fcdfa611173d0afbce56d49867530  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-10-05
* vaccineType.coding.code = #PolioVaccineOralOPVMonov
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Monovalent Type 3"
* commercialName = "Polio Sabin Mono Three (oral)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "f22fcdfa611173d0afbce56d49867530  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(PolioVaccineOralOPVMonovProductf22fcdfa611173d0afbce56d49867530  ) 

Instance: PolioVaccineOralOPVMonovProductf22fcdfa611173d0afbce56d49867530  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Polio Sabin Mono Three (oral)"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVMonov
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualf22fcdfa611173d0afbce56d49867530  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2010-10-05
* product  = Reference(PolioVaccineOralOPVMonovProductf22fcdfa611173d0afbce56d49867530  ) 

// Source Record Row //: 184
//  Date of Prequalification: (11/05/2011)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Monovalent Type 2)
//  Commercial Name: (Polio Sabin Mono Two (oral))
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): 1b2bdb769d38e0b45eb60707ff9a36cb  
//

Instance: PreQualDB1b2bdb769d38e0b45eb60707ff9a36cb  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2011-05-11
* vaccineType.coding.code = #PolioVaccineOralOPVMonov
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Monovalent Type 2"
* commercialName = "Polio Sabin Mono Two (oral)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "1b2bdb769d38e0b45eb60707ff9a36cb  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(PolioVaccineOralOPVMonovProduct1b2bdb769d38e0b45eb60707ff9a36cb  ) 

Instance: PolioVaccineOralOPVMonovProduct1b2bdb769d38e0b45eb60707ff9a36cb  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Polio Sabin Mono Two (oral)"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  10 'doses'
* classification = #PolioVaccineOralOPVMonov
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual1b2bdb769d38e0b45eb60707ff9a36cb  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2011-05-11
* product  = Reference(PolioVaccineOralOPVMonovProduct1b2bdb769d38e0b45eb60707ff9a36cb  ) 

// Source Record Row //: 185
//  Date of Prequalification: (11/05/2011)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Monovalent Type 2)
//  Commercial Name: (Polio Sabin Mono Two (oral))
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): b4755cab194f57a5fecc8d890856bbdf  
//

Instance: PreQualDBb4755cab194f57a5fecc8d890856bbdf  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2011-05-11
* vaccineType.coding.code = #PolioVaccineOralOPVMonov
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Monovalent Type 2"
* commercialName = "Polio Sabin Mono Two (oral)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "b4755cab194f57a5fecc8d890856bbdf  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(PolioVaccineOralOPVMonovProductb4755cab194f57a5fecc8d890856bbdf  ) 

Instance: PolioVaccineOralOPVMonovProductb4755cab194f57a5fecc8d890856bbdf  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Polio Sabin Mono Two (oral)"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVMonov
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualb4755cab194f57a5fecc8d890856bbdf  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2011-05-11
* product  = Reference(PolioVaccineOralOPVMonovProductb4755cab194f57a5fecc8d890856bbdf  ) 

// Source Record Row //: 186
//  Date of Prequalification: (29/10/2009)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3)
//  Commercial Name: (Polio Sabin One and Three)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): 14c88c2e9b35698b4726903940c58037  
//

Instance: PreQualDB14c88c2e9b35698b4726903940c58037  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-10-29
* vaccineType.coding.code = #PolioVaccineOralOPVBival
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3"
* commercialName = "Polio Sabin One and Three"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "14c88c2e9b35698b4726903940c58037  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(PolioVaccineOralOPVBivalProduct14c88c2e9b35698b4726903940c58037  ) 

Instance: PolioVaccineOralOPVBivalProduct14c88c2e9b35698b4726903940c58037  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Polio Sabin One and Three"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  10 'doses'
* classification = #PolioVaccineOralOPVBival
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual14c88c2e9b35698b4726903940c58037  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2009-10-29
* product  = Reference(PolioVaccineOralOPVBivalProduct14c88c2e9b35698b4726903940c58037  ) 

// Source Record Row //: 187
//  Date of Prequalification: (29/10/2009)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3)
//  Commercial Name: (Polio Sabin One and Three)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): 2d10261076734e48cd7b289de6ea802e  
//

Instance: PreQualDB2d10261076734e48cd7b289de6ea802e  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-10-29
* vaccineType.coding.code = #PolioVaccineOralOPVBival
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3"
* commercialName = "Polio Sabin One and Three"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "2d10261076734e48cd7b289de6ea802e  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(PolioVaccineOralOPVBivalProduct2d10261076734e48cd7b289de6ea802e  ) 

Instance: PolioVaccineOralOPVBivalProduct2d10261076734e48cd7b289de6ea802e  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Polio Sabin One and Three"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVBival
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual2d10261076734e48cd7b289de6ea802e  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2009-10-29
* product  = Reference(PolioVaccineOralOPVBivalProduct2d10261076734e48cd7b289de6ea802e  ) 

// Source Record Row //: 188
//  Date of Prequalification: (06/12/2010)
//  Vaccine Type: (Polio Vaccine - Inactivated (IPV))
//  Commercial Name: (Poliomyelitis vaccine)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Bilthoven Biologicals B.V.)
//  Responsible NRA: (Medicines Evaluation Board (MEB))
//  md5(ROW): c726fd7210023aa5738617a79cae2b40  
//

Instance: PreQualDBc726fd7210023aa5738617a79cae2b40  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-12-06
* vaccineType.coding.code = #PolioVaccineInactivatedI
* vaccineType.coding.display = "Polio Vaccine - Inactivated (IPV)"
* commercialName = "Poliomyelitis vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Bilthoven Biologicals B.V."
* responsibleNRA.text = "Medicines Evaluation Board (MEB)"
* index.value = "c726fd7210023aa5738617a79cae2b40  "
* manufacturerReference = Reference(Manufacturer55274c2798a58a47931eded531726f10  ) 
* responsibleNRAReference = Reference(Holderba27f505e9f51f464d1a574696de85c5  ) // Medicines Evaluation Board (MEB)
* productReference = Reference(PolioVaccineInactivatedIProductc726fd7210023aa5738617a79cae2b40  ) 

Instance: PolioVaccineInactivatedIProductc726fd7210023aa5738617a79cae2b40  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Poliomyelitis vaccine"
* manufacturer = Reference(Manufacturer55274c2798a58a47931eded531726f10  ) // Bilthoven Biologicals B.V.
* doseQuantity =  1 'doses'
* classification = #PolioVaccineInactivatedI
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualc726fd7210023aa5738617a79cae2b40  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderba27f505e9f51f464d1a574696de85c5  ) // Medicines Evaluation Board (MEB)
* validityPeriod.start = 2010-12-06
* product  = Reference(PolioVaccineInactivatedIProductc726fd7210023aa5738617a79cae2b40  ) 

// Source Record Row //: 189
//  Date of Prequalification: (29/07/2024)
//  Vaccine Type: (Polio Vaccine - Novel Oral (nOPV) Type 2)
//  Commercial Name: (Poliomyelitis Vaccine - Novel Oral (nOPV) Type 2)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 65b137f0201901bc43fc8759e4f35f35  
//

Instance: PreQualDB65b137f0201901bc43fc8759e4f35f35  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-07-29
* vaccineType.coding.code = #PolioVaccineNovelOralnOP
* vaccineType.coding.display = "Polio Vaccine - Novel Oral (nOPV) Type 2"
* commercialName = "Poliomyelitis Vaccine - Novel Oral (nOPV) Type 2"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "65b137f0201901bc43fc8759e4f35f35  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineNovelOralnOPProduct65b137f0201901bc43fc8759e4f35f35  ) 

Instance: PolioVaccineNovelOralnOPProduct65b137f0201901bc43fc8759e4f35f35  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Poliomyelitis Vaccine - Novel Oral (nOPV) Type 2"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  20 'doses'
* classification = #PolioVaccineNovelOralnOP
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual65b137f0201901bc43fc8759e4f35f35  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2024-07-29
* product  = Reference(PolioVaccineNovelOralnOPProduct65b137f0201901bc43fc8759e4f35f35  ) 

// Source Record Row //: 190
//  Date of Prequalification: (27/12/2023)
//  Vaccine Type: (Polio Vaccine - Novel Oral (nOPV) Type 2)
//  Commercial Name: (Polio Vaccine - Novel Oral (nOPV) Type 2)
//  Presentation: (Vial)
//  No. of doses: (50)
//  Manufacturer: (PT Bio Farma (Persero))
//  Responsible NRA: (National Agency of Drug and Food Control Indonesia)
//  md5(ROW): 278e9af5dc50904dd144a7ceb4d42dd7  
//

Instance: PreQualDB278e9af5dc50904dd144a7ceb4d42dd7  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2023-12-27
* vaccineType.coding.code = #PolioVaccineNovelOralnOP
* vaccineType.coding.display = "Polio Vaccine - Novel Oral (nOPV) Type 2"
* commercialName = "Polio Vaccine - Novel Oral (nOPV) Type 2"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 50
* manufacturer.text = "PT Bio Farma (Persero)"
* responsibleNRA.text = "National Agency of Drug and Food Control Indonesia"
* index.value = "278e9af5dc50904dd144a7ceb4d42dd7  "
* manufacturerReference = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) 
* responsibleNRAReference = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* productReference = Reference(PolioVaccineNovelOralnOPProduct278e9af5dc50904dd144a7ceb4d42dd7  ) 

Instance: PolioVaccineNovelOralnOPProduct278e9af5dc50904dd144a7ceb4d42dd7  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Polio Vaccine - Novel Oral (nOPV) Type 2"
* manufacturer = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) // PT Bio Farma (Persero)
* doseQuantity =  50 'doses'
* classification = #PolioVaccineNovelOralnOP
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual278e9af5dc50904dd144a7ceb4d42dd7  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* validityPeriod.start = 2023-12-27
* product  = Reference(PolioVaccineNovelOralnOPProduct278e9af5dc50904dd144a7ceb4d42dd7  ) 

// Source Record Row //: 191
//  Date of Prequalification: (29/07/2024)
//  Vaccine Type: (Polio Vaccine - Novel Oral (nOPV) Type 2)
//  Commercial Name: (Poliomyelitis Vaccine - Novel Oral (nOPV) Type 2)
//  Presentation: (Vial)
//  No. of doses: (50)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): ab7589153ddbc7968e1749119c5b1678  
//

Instance: PreQualDBab7589153ddbc7968e1749119c5b1678  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-07-29
* vaccineType.coding.code = #PolioVaccineNovelOralnOP
* vaccineType.coding.display = "Polio Vaccine - Novel Oral (nOPV) Type 2"
* commercialName = "Poliomyelitis Vaccine - Novel Oral (nOPV) Type 2"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 50
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "ab7589153ddbc7968e1749119c5b1678  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineNovelOralnOPProductab7589153ddbc7968e1749119c5b1678  ) 

Instance: PolioVaccineNovelOralnOPProductab7589153ddbc7968e1749119c5b1678  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Poliomyelitis Vaccine - Novel Oral (nOPV) Type 2"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  50 'doses'
* classification = #PolioVaccineNovelOralnOP
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualab7589153ddbc7968e1749119c5b1678  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2024-07-29
* product  = Reference(PolioVaccineNovelOralnOPProductab7589153ddbc7968e1749119c5b1678  ) 

// Source Record Row //: 192
//  Date of Prequalification: (28/10/2016)
//  Vaccine Type: (Polio Vaccine - Inactivated (IPV))
//  Commercial Name: (Poliomyelitis Vaccine (Inactivated))
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 1d63ab46cee67d02439c47ed91439667  
//

Instance: PreQualDB1d63ab46cee67d02439c47ed91439667  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2016-10-28
* vaccineType.coding.code = #PolioVaccineInactivatedI
* vaccineType.coding.display = "Polio Vaccine - Inactivated (IPV)"
* commercialName = "Poliomyelitis Vaccine (Inactivated)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "1d63ab46cee67d02439c47ed91439667  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineInactivatedIProduct1d63ab46cee67d02439c47ed91439667  ) 

Instance: PolioVaccineInactivatedIProduct1d63ab46cee67d02439c47ed91439667  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Poliomyelitis Vaccine (Inactivated)"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #PolioVaccineInactivatedI
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual1d63ab46cee67d02439c47ed91439667  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2016-10-28
* product  = Reference(PolioVaccineInactivatedIProduct1d63ab46cee67d02439c47ed91439667  ) 

// Source Record Row //: 193
//  Date of Prequalification: (28/10/2016)
//  Vaccine Type: (Polio Vaccine - Inactivated (IPV))
//  Commercial Name: (Poliomyelitis Vaccine (Inactivated))
//  Presentation: (Vial)
//  No. of doses: (2)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 13e82343f8e192fe6e3fbfbf2a47ffd7  
//

Instance: PreQualDB13e82343f8e192fe6e3fbfbf2a47ffd7  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2016-10-28
* vaccineType.coding.code = #PolioVaccineInactivatedI
* vaccineType.coding.display = "Polio Vaccine - Inactivated (IPV)"
* commercialName = "Poliomyelitis Vaccine (Inactivated)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "13e82343f8e192fe6e3fbfbf2a47ffd7  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineInactivatedIProduct13e82343f8e192fe6e3fbfbf2a47ffd7  ) 

Instance: PolioVaccineInactivatedIProduct13e82343f8e192fe6e3fbfbf2a47ffd7  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Poliomyelitis Vaccine (Inactivated)"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  2 'doses'
* classification = #PolioVaccineInactivatedI
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual13e82343f8e192fe6e3fbfbf2a47ffd7  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2016-10-28
* product  = Reference(PolioVaccineInactivatedIProduct13e82343f8e192fe6e3fbfbf2a47ffd7  ) 

// Source Record Row //: 194
//  Date of Prequalification: (28/10/2016)
//  Vaccine Type: (Polio Vaccine - Inactivated (IPV))
//  Commercial Name: (Poliomyelitis Vaccine (Inactivated))
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): f8085a2bd9a1c84fba1adee2ec6f6fb1  
//

Instance: PreQualDBf8085a2bd9a1c84fba1adee2ec6f6fb1  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2016-10-28
* vaccineType.coding.code = #PolioVaccineInactivatedI
* vaccineType.coding.display = "Polio Vaccine - Inactivated (IPV)"
* commercialName = "Poliomyelitis Vaccine (Inactivated)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "f8085a2bd9a1c84fba1adee2ec6f6fb1  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineInactivatedIProductf8085a2bd9a1c84fba1adee2ec6f6fb1  ) 

Instance: PolioVaccineInactivatedIProductf8085a2bd9a1c84fba1adee2ec6f6fb1  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Poliomyelitis Vaccine (Inactivated)"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  5 'doses'
* classification = #PolioVaccineInactivatedI
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualf8085a2bd9a1c84fba1adee2ec6f6fb1  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2016-10-28
* product  = Reference(PolioVaccineInactivatedIProductf8085a2bd9a1c84fba1adee2ec6f6fb1  ) 

// Source Record Row //: 195
//  Date of Prequalification: (11/07/2019)
//  Vaccine Type: (Polio Vaccine - Inactivated (IPV))
//  Commercial Name: (Poliomyelitis Vaccine (Inactivated))
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): fea93261bf2f096ea48aed825522dc2d  
//

Instance: PreQualDBfea93261bf2f096ea48aed825522dc2d  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2019-07-11
* vaccineType.coding.code = #PolioVaccineInactivatedI
* vaccineType.coding.display = "Polio Vaccine - Inactivated (IPV)"
* commercialName = "Poliomyelitis Vaccine (Inactivated)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "fea93261bf2f096ea48aed825522dc2d  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineInactivatedIProductfea93261bf2f096ea48aed825522dc2d  ) 

Instance: PolioVaccineInactivatedIProductfea93261bf2f096ea48aed825522dc2d  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Poliomyelitis Vaccine (Inactivated)"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #PolioVaccineInactivatedI
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualfea93261bf2f096ea48aed825522dc2d  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2019-07-11
* product  = Reference(PolioVaccineInactivatedIProductfea93261bf2f096ea48aed825522dc2d  ) 

// Source Record Row //: 196
//  Date of Prequalification: (21/12/2017)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3)
//  Commercial Name: (Poliomyelitis Vaccine (live, oral attenuated, human Diploid Cell), type 1 and 3)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Beijing Institute of Biological Products Co., Ltd.)
//  Responsible NRA: (National Medical Products Administration)
//  md5(ROW): dcbfa0a541c65032a917c39fa762c2f9  
//

Instance: PreQualDBdcbfa0a541c65032a917c39fa762c2f9  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2017-12-21
* vaccineType.coding.code = #PolioVaccineOralOPVBival
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3"
* commercialName = "Poliomyelitis Vaccine (live, oral attenuated, human Diploid Cell), type 1 and 3"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Beijing Institute of Biological Products Co., Ltd."
* responsibleNRA.text = "National Medical Products Administration"
* index.value = "dcbfa0a541c65032a917c39fa762c2f9  "
* manufacturerReference = Reference(Manufacturereb31bd403f002800b14da9b2662b321c  ) 
* responsibleNRAReference = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* productReference = Reference(PolioVaccineOralOPVBivalProductdcbfa0a541c65032a917c39fa762c2f9  ) 

Instance: PolioVaccineOralOPVBivalProductdcbfa0a541c65032a917c39fa762c2f9  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Poliomyelitis Vaccine (live, oral attenuated, human Diploid Cell), type 1 and 3"
* manufacturer = Reference(Manufacturereb31bd403f002800b14da9b2662b321c  ) // Beijing Institute of Biological Products Co., Ltd.
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVBival
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualdcbfa0a541c65032a917c39fa762c2f9  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* validityPeriod.start = 2017-12-21
* product  = Reference(PolioVaccineOralOPVBivalProductdcbfa0a541c65032a917c39fa762c2f9  ) 

// Source Record Row //: 197
//  Date of Prequalification: (22/10/2014)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3)
//  Commercial Name: (Poliomyelitis Vaccine (Oral), Bivalent types 1 and 3)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 06bf2d06adcc6d9e2bea8ac21846bb09  
//

Instance: PreQualDB06bf2d06adcc6d9e2bea8ac21846bb09  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2014-10-22
* vaccineType.coding.code = #PolioVaccineOralOPVBival
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3"
* commercialName = "Poliomyelitis Vaccine (Oral), Bivalent types 1 and 3"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "06bf2d06adcc6d9e2bea8ac21846bb09  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineOralOPVBivalProduct06bf2d06adcc6d9e2bea8ac21846bb09  ) 

Instance: PolioVaccineOralOPVBivalProduct06bf2d06adcc6d9e2bea8ac21846bb09  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Poliomyelitis Vaccine (Oral), Bivalent types 1 and 3"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #PolioVaccineOralOPVBival
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual06bf2d06adcc6d9e2bea8ac21846bb09  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2014-10-22
* product  = Reference(PolioVaccineOralOPVBivalProduct06bf2d06adcc6d9e2bea8ac21846bb09  ) 

// Source Record Row //: 198
//  Date of Prequalification: (04/02/2013)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3)
//  Commercial Name: (Poliomyelitis Vaccine (Oral), Bivalent types 1 and 3)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): a5416e91021f0c00915e4688ff508717  
//

Instance: PreQualDBa5416e91021f0c00915e4688ff508717  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2013-02-04
* vaccineType.coding.code = #PolioVaccineOralOPVBival
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Bivalent Types 1 and 3"
* commercialName = "Poliomyelitis Vaccine (Oral), Bivalent types 1 and 3"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "a5416e91021f0c00915e4688ff508717  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineOralOPVBivalProducta5416e91021f0c00915e4688ff508717  ) 

Instance: PolioVaccineOralOPVBivalProducta5416e91021f0c00915e4688ff508717  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Poliomyelitis Vaccine (Oral), Bivalent types 1 and 3"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVBival
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuala5416e91021f0c00915e4688ff508717  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2013-02-04
* product  = Reference(PolioVaccineOralOPVBivalProducta5416e91021f0c00915e4688ff508717  ) 

// Source Record Row //: 199
//  Date of Prequalification: (06/06/2022)
//  Vaccine Type: (Polio Vaccine - Inactivated Sabin (sIPV))
//  Commercial Name: (Poliomyelitis Vaccine (Vero Cell), Inactivated, Sabin Strains)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Sinovac Biotech Co. Ltd)
//  Responsible NRA: (National Medical Products Administration)
//  md5(ROW): 2050ea67709cfcde28a01f0546276e96  
//

Instance: PreQualDB2050ea67709cfcde28a01f0546276e96  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2022-06-06
* vaccineType.coding.code = #PolioVaccineInactivatedS
* vaccineType.coding.display = "Polio Vaccine - Inactivated Sabin (sIPV)"
* commercialName = "Poliomyelitis Vaccine (Vero Cell), Inactivated, Sabin Strains"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Sinovac Biotech Co. Ltd"
* responsibleNRA.text = "National Medical Products Administration"
* index.value = "2050ea67709cfcde28a01f0546276e96  "
* manufacturerReference = Reference(Manufacturer56d509b36258f1c3e037132496afb0cb  ) 
* responsibleNRAReference = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* productReference = Reference(PolioVaccineInactivatedSProduct2050ea67709cfcde28a01f0546276e96  ) 

Instance: PolioVaccineInactivatedSProduct2050ea67709cfcde28a01f0546276e96  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Poliomyelitis Vaccine (Vero Cell), Inactivated, Sabin Strains"
* manufacturer = Reference(Manufacturer56d509b36258f1c3e037132496afb0cb  ) // Sinovac Biotech Co. Ltd
* doseQuantity =  1 'doses'
* classification = #PolioVaccineInactivatedS
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual2050ea67709cfcde28a01f0546276e96  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* validityPeriod.start = 2022-06-06
* product  = Reference(PolioVaccineInactivatedSProduct2050ea67709cfcde28a01f0546276e96  ) 

// Source Record Row //: 200
//  Date of Prequalification: (15/02/2022)
//  Vaccine Type: (Polio Vaccine - Inactivated Sabin (sIPV))
//  Commercial Name: (Poliomyelitis Vaccine (Vero Cell), Inactivated, Sabin Strains)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Beijing Institute of Biological Products Co., Ltd.)
//  Responsible NRA: (National Medical Products Administration)
//  md5(ROW): 25383b1f589d42af3719c7074f982c9b  
//

Instance: PreQualDB25383b1f589d42af3719c7074f982c9b  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2022-02-15
* vaccineType.coding.code = #PolioVaccineInactivatedS
* vaccineType.coding.display = "Polio Vaccine - Inactivated Sabin (sIPV)"
* commercialName = "Poliomyelitis Vaccine (Vero Cell), Inactivated, Sabin Strains"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Beijing Institute of Biological Products Co., Ltd."
* responsibleNRA.text = "National Medical Products Administration"
* index.value = "25383b1f589d42af3719c7074f982c9b  "
* manufacturerReference = Reference(Manufacturereb31bd403f002800b14da9b2662b321c  ) 
* responsibleNRAReference = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* productReference = Reference(PolioVaccineInactivatedSProduct25383b1f589d42af3719c7074f982c9b  ) 

Instance: PolioVaccineInactivatedSProduct25383b1f589d42af3719c7074f982c9b  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Poliomyelitis Vaccine (Vero Cell), Inactivated, Sabin Strains"
* manufacturer = Reference(Manufacturereb31bd403f002800b14da9b2662b321c  ) // Beijing Institute of Biological Products Co., Ltd.
* doseQuantity =  1 'doses'
* classification = #PolioVaccineInactivatedS
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual25383b1f589d42af3719c7074f982c9b  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* validityPeriod.start = 2022-02-15
* product  = Reference(PolioVaccineInactivatedSProduct25383b1f589d42af3719c7074f982c9b  ) 

// Source Record Row //: 201
//  Date of Prequalification: (29/08/2024)
//  Vaccine Type: (Polio Vaccine - Inactivated Sabin (sIPV))
//  Commercial Name: (Poliomyelitis Vaccine (Vero Cell), Inactivated, Sabin Strains)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Sinovac Biotech Co. Ltd)
//  Responsible NRA: (National Medical Products Administration)
//  md5(ROW): d554f4c3848920ca8bcd00d44afd18a4  
//

Instance: PreQualDBd554f4c3848920ca8bcd00d44afd18a4  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-08-29
* vaccineType.coding.code = #PolioVaccineInactivatedS
* vaccineType.coding.display = "Polio Vaccine - Inactivated Sabin (sIPV)"
* commercialName = "Poliomyelitis Vaccine (Vero Cell), Inactivated, Sabin Strains"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Sinovac Biotech Co. Ltd"
* responsibleNRA.text = "National Medical Products Administration"
* index.value = "d554f4c3848920ca8bcd00d44afd18a4  "
* manufacturerReference = Reference(Manufacturer56d509b36258f1c3e037132496afb0cb  ) 
* responsibleNRAReference = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* productReference = Reference(PolioVaccineInactivatedSProductd554f4c3848920ca8bcd00d44afd18a4  ) 

Instance: PolioVaccineInactivatedSProductd554f4c3848920ca8bcd00d44afd18a4  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Poliomyelitis Vaccine (Vero Cell), Inactivated, Sabin Strains"
* manufacturer = Reference(Manufacturer56d509b36258f1c3e037132496afb0cb  ) // Sinovac Biotech Co. Ltd
* doseQuantity =  5 'doses'
* classification = #PolioVaccineInactivatedS
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuald554f4c3848920ca8bcd00d44afd18a4  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* validityPeriod.start = 2024-08-29
* product  = Reference(PolioVaccineInactivatedSProductd554f4c3848920ca8bcd00d44afd18a4  ) 

// Source Record Row //: 202
//  Date of Prequalification: (28/11/2014)
//  Vaccine Type: (Polio Vaccine - Inactivated (IPV))
//  Commercial Name: (Poliomyelitis vaccine multidose)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Bilthoven Biologicals B.V.)
//  Responsible NRA: (Medicines Evaluation Board (MEB))
//  md5(ROW): 3cde3a30cacdc23b9ec3bdf4ba9d23ff  
//

Instance: PreQualDB3cde3a30cacdc23b9ec3bdf4ba9d23ff  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2014-11-28
* vaccineType.coding.code = #PolioVaccineInactivatedI
* vaccineType.coding.display = "Polio Vaccine - Inactivated (IPV)"
* commercialName = "Poliomyelitis vaccine multidose"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Bilthoven Biologicals B.V."
* responsibleNRA.text = "Medicines Evaluation Board (MEB)"
* index.value = "3cde3a30cacdc23b9ec3bdf4ba9d23ff  "
* manufacturerReference = Reference(Manufacturer55274c2798a58a47931eded531726f10  ) 
* responsibleNRAReference = Reference(Holderba27f505e9f51f464d1a574696de85c5  ) // Medicines Evaluation Board (MEB)
* productReference = Reference(PolioVaccineInactivatedIProduct3cde3a30cacdc23b9ec3bdf4ba9d23ff  ) 

Instance: PolioVaccineInactivatedIProduct3cde3a30cacdc23b9ec3bdf4ba9d23ff  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Poliomyelitis vaccine multidose"
* manufacturer = Reference(Manufacturer55274c2798a58a47931eded531726f10  ) // Bilthoven Biologicals B.V.
* doseQuantity =  5 'doses'
* classification = #PolioVaccineInactivatedI
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual3cde3a30cacdc23b9ec3bdf4ba9d23ff  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderba27f505e9f51f464d1a574696de85c5  ) // Medicines Evaluation Board (MEB)
* validityPeriod.start = 2014-11-28
* product  = Reference(PolioVaccineInactivatedIProduct3cde3a30cacdc23b9ec3bdf4ba9d23ff  ) 

// Source Record Row //: 203
//  Date of Prequalification: (29/02/2024)
//  Vaccine Type: (Polio Vaccine - Inactivated (IPV))
//  Commercial Name: (Poliomyelitis vaccine multidose)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Bilthoven Biologicals B.V.)
//  Responsible NRA: (Medicines Evaluation Board (MEB))
//  md5(ROW): 4562bbd80c6e57dbe29b122817623854  
//

Instance: PreQualDB4562bbd80c6e57dbe29b122817623854  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-02-29
* vaccineType.coding.code = #PolioVaccineInactivatedI
* vaccineType.coding.display = "Polio Vaccine - Inactivated (IPV)"
* commercialName = "Poliomyelitis vaccine multidose"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Bilthoven Biologicals B.V."
* responsibleNRA.text = "Medicines Evaluation Board (MEB)"
* index.value = "4562bbd80c6e57dbe29b122817623854  "
* manufacturerReference = Reference(Manufacturer55274c2798a58a47931eded531726f10  ) 
* responsibleNRAReference = Reference(Holderba27f505e9f51f464d1a574696de85c5  ) // Medicines Evaluation Board (MEB)
* productReference = Reference(PolioVaccineInactivatedIProduct4562bbd80c6e57dbe29b122817623854  ) 

Instance: PolioVaccineInactivatedIProduct4562bbd80c6e57dbe29b122817623854  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Poliomyelitis vaccine multidose"
* manufacturer = Reference(Manufacturer55274c2798a58a47931eded531726f10  ) // Bilthoven Biologicals B.V.
* doseQuantity =  10 'doses'
* classification = #PolioVaccineInactivatedI
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual4562bbd80c6e57dbe29b122817623854  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderba27f505e9f51f464d1a574696de85c5  ) // Medicines Evaluation Board (MEB)
* validityPeriod.start = 2024-02-29
* product  = Reference(PolioVaccineInactivatedIProduct4562bbd80c6e57dbe29b122817623854  ) 

// Source Record Row //: 204
//  Date of Prequalification: (02/02/2006)
//  Vaccine Type: (Polio Vaccine - Oral (OPV) Trivalent)
//  Commercial Name: (Polioviral vaccine)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Haffkine Bio Pharmaceutical Corporation Ltd)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): bd7faeaf3f0e633420fba396895d6cc9  
//

Instance: PreQualDBbd7faeaf3f0e633420fba396895d6cc9  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2006-02-02
* vaccineType.coding.code = #PolioVaccineOralOPVTriva
* vaccineType.coding.display = "Polio Vaccine - Oral (OPV) Trivalent"
* commercialName = "Polioviral vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Haffkine Bio Pharmaceutical Corporation Ltd"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "bd7faeaf3f0e633420fba396895d6cc9  "
* manufacturerReference = Reference(Manufacturer42565af3e1da9c8e2b48128dd0b2b292  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineOralOPVTrivaProductbd7faeaf3f0e633420fba396895d6cc9  ) 

Instance: PolioVaccineOralOPVTrivaProductbd7faeaf3f0e633420fba396895d6cc9  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Polioviral vaccine"
* manufacturer = Reference(Manufacturer42565af3e1da9c8e2b48128dd0b2b292  ) // Haffkine Bio Pharmaceutical Corporation Ltd
* doseQuantity =  20 'doses'
* classification = #PolioVaccineOralOPVTriva
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualbd7faeaf3f0e633420fba396895d6cc9  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2006-02-02
* product  = Reference(PolioVaccineOralOPVTrivaProductbd7faeaf3f0e633420fba396895d6cc9  ) 

// Source Record Row //: 205
//  Date of Prequalification: (20/08/2010)
//  Vaccine Type: (Pneumococcal (conjugate))
//  Commercial Name: (Prevenar 13)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Pfizer Europe MA EEIG)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): d76340c94c13863d00dcf437778fc804  
//

Instance: PreQualDBd76340c94c13863d00dcf437778fc804  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-08-20
* vaccineType.coding.code = #Pneumococcalconjugate
* vaccineType.coding.display = "Pneumococcal (conjugate)"
* commercialName = "Prevenar 13"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Pfizer Europe MA EEIG"
* responsibleNRA.text = "European Medicines Agency"
* index.value = "d76340c94c13863d00dcf437778fc804  "
* manufacturerReference = Reference(Manufacturer0f92a4144844f2cd6ed7fe33dc8d7b1c  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(PneumococcalconjugateProductd76340c94c13863d00dcf437778fc804  ) 

Instance: PneumococcalconjugateProductd76340c94c13863d00dcf437778fc804  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Prevenar 13"
* manufacturer = Reference(Manufacturer0f92a4144844f2cd6ed7fe33dc8d7b1c  ) // Pfizer Europe MA EEIG
* doseQuantity =  1 'doses'
* classification = #Pneumococcalconjugate
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuald76340c94c13863d00dcf437778fc804  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2010-08-20
* product  = Reference(PneumococcalconjugateProductd76340c94c13863d00dcf437778fc804  ) 

// Source Record Row //: 206
//  Date of Prequalification: (14/07/2016)
//  Vaccine Type: (Pneumococcal (conjugate))
//  Commercial Name: (Prevenar 13 Multidose Vial)
//  Presentation: (Vial)
//  No. of doses: (4)
//  Manufacturer: (Pfizer Europe MA EEIG)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): 083cce20a86e6f530b905d4d6e72136c  
//

Instance: PreQualDB083cce20a86e6f530b905d4d6e72136c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2016-07-14
* vaccineType.coding.code = #Pneumococcalconjugate
* vaccineType.coding.display = "Pneumococcal (conjugate)"
* commercialName = "Prevenar 13 Multidose Vial"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 4
* manufacturer.text = "Pfizer Europe MA EEIG"
* responsibleNRA.text = "European Medicines Agency"
* index.value = "083cce20a86e6f530b905d4d6e72136c  "
* manufacturerReference = Reference(Manufacturer0f92a4144844f2cd6ed7fe33dc8d7b1c  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(PneumococcalconjugateProduct083cce20a86e6f530b905d4d6e72136c  ) 

Instance: PneumococcalconjugateProduct083cce20a86e6f530b905d4d6e72136c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Prevenar 13 Multidose Vial"
* manufacturer = Reference(Manufacturer0f92a4144844f2cd6ed7fe33dc8d7b1c  ) // Pfizer Europe MA EEIG
* doseQuantity =  4 'doses'
* classification = #Pneumococcalconjugate
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual083cce20a86e6f530b905d4d6e72136c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2016-07-14
* product  = Reference(PneumococcalconjugateProduct083cce20a86e6f530b905d4d6e72136c  ) 

// Source Record Row //: 207
//  Date of Prequalification: (09/03/2001)
//  Vaccine Type: (Measles, Mumps and Rubella)
//  Commercial Name: (Priorix)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): a83fd7c161c4c48ad786e3ff49073adf  
//

Instance: PreQualDBa83fd7c161c4c48ad786e3ff49073adf  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2001-03-09
* vaccineType.coding.code = #MeaslesMumpsandRubella
* vaccineType.coding.display = "Measles, Mumps and Rubella"
* commercialName = "Priorix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "a83fd7c161c4c48ad786e3ff49073adf  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(MeaslesMumpsandRubellaProducta83fd7c161c4c48ad786e3ff49073adf  ) 

Instance: MeaslesMumpsandRubellaProducta83fd7c161c4c48ad786e3ff49073adf  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Priorix"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  1 'doses'
* classification = #MeaslesMumpsandRubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuala83fd7c161c4c48ad786e3ff49073adf  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2001-03-09
* product  = Reference(MeaslesMumpsandRubellaProducta83fd7c161c4c48ad786e3ff49073adf  ) 

// Source Record Row //: 208
//  Date of Prequalification: (21/12/2011)
//  Vaccine Type: (Measles, Mumps and Rubella)
//  Commercial Name: (Priorix)
//  Presentation: (Vial)
//  No. of doses: (2)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): 5391a66b3bec700dd62d02c2687a9f2f  
//

Instance: PreQualDB5391a66b3bec700dd62d02c2687a9f2f  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2011-12-21
* vaccineType.coding.code = #MeaslesMumpsandRubella
* vaccineType.coding.display = "Measles, Mumps and Rubella"
* commercialName = "Priorix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "5391a66b3bec700dd62d02c2687a9f2f  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(MeaslesMumpsandRubellaProduct5391a66b3bec700dd62d02c2687a9f2f  ) 

Instance: MeaslesMumpsandRubellaProduct5391a66b3bec700dd62d02c2687a9f2f  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Priorix"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  2 'doses'
* classification = #MeaslesMumpsandRubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual5391a66b3bec700dd62d02c2687a9f2f  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2011-12-21
* product  = Reference(MeaslesMumpsandRubellaProduct5391a66b3bec700dd62d02c2687a9f2f  ) 

// Source Record Row //: 209
//  Date of Prequalification: (09/05/2024)
//  Vaccine Type: (Dengue Tetravalent (live, attenuated))
//  Commercial Name: (Qdenga)
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (1)
//  Manufacturer: (Takeda GmbH.)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): a742565a0d07d6c92f087a1c055ab278  
//

Instance: PreQualDBa742565a0d07d6c92f087a1c055ab278  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-05-09
* vaccineType.coding.code = #DengueTetravalentliveatt
* vaccineType.coding.display = "Dengue Tetravalent (live, attenuated)"
* commercialName = "Qdenga"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 1
* manufacturer.text = "Takeda GmbH."
* responsibleNRA.text = "European Medicines Agency"
* index.value = "a742565a0d07d6c92f087a1c055ab278  "
* manufacturerReference = Reference(Manufacturerb8f96db637b3f36cdb1416e82e69b306  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(DengueTetravalentliveattProducta742565a0d07d6c92f087a1c055ab278  ) 

Instance: DengueTetravalentliveattProducta742565a0d07d6c92f087a1c055ab278  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Qdenga"
* manufacturer = Reference(Manufacturerb8f96db637b3f36cdb1416e82e69b306  ) // Takeda GmbH.
* doseQuantity =  1 'doses'
* classification = #DengueTetravalentliveatt
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient

Instance: PreQuala742565a0d07d6c92f087a1c055ab278  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2024-05-09
* product  = Reference(DengueTetravalentliveattProducta742565a0d07d6c92f087a1c055ab278  ) 

// Source Record Row //: 210
//  Date of Prequalification: (26/04/2010)
//  Vaccine Type: (Haemophilus influenzae type b)
//  Commercial Name: (Quimi-Hib)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Centro de Ingenieria Genetica y Biotecnologia)
//  Responsible NRA: (Centro para el Control Estatal de la Calidad de los Medicamentos)
//  md5(ROW): 99ca7b265fb87731abd4ff27d13b44cd  
//

Instance: PreQualDB99ca7b265fb87731abd4ff27d13b44cd  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-04-26
* vaccineType.coding.code = #Haemophilusinfluenzaetyp
* vaccineType.coding.display = "Haemophilus influenzae type b"
* commercialName = "Quimi-Hib"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Centro de Ingenieria Genetica y Biotecnologia"
* responsibleNRA.text = "Centro para el Control Estatal de la Calidad de los Medicamentos"
* index.value = "99ca7b265fb87731abd4ff27d13b44cd  "
* manufacturerReference = Reference(Manufacturer82c7442fbfbfbbeb896a735055627e6d  ) 
* responsibleNRAReference = Reference(Holderce0f4cd586d4fa26a21297b87993de9a  ) // Centro para el Control Estatal de la Calidad de los Medicamentos
* productReference = Reference(HaemophilusinfluenzaetypProduct99ca7b265fb87731abd4ff27d13b44cd  ) 

Instance: HaemophilusinfluenzaetypProduct99ca7b265fb87731abd4ff27d13b44cd  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Quimi-Hib"
* manufacturer = Reference(Manufacturer82c7442fbfbfbbeb896a735055627e6d  ) // Centro de Ingenieria Genetica y Biotecnologia
* doseQuantity =  1 'doses'
* classification = #Haemophilusinfluenzaetyp
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual99ca7b265fb87731abd4ff27d13b44cd  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderce0f4cd586d4fa26a21297b87993de9a  ) // Centro para el Control Estatal de la Calidad de los Medicamentos
* validityPeriod.start = 2010-04-26
* product  = Reference(HaemophilusinfluenzaetypProduct99ca7b265fb87731abd4ff27d13b44cd  ) 

// Source Record Row //: 211
//  Date of Prequalification: (19/12/2023)
//  Vaccine Type: (Malaria)
//  Commercial Name: (CYVAC)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 34cd73607a9432893b41df94a5a9d0d2  
//

Instance: PreQualDB34cd73607a9432893b41df94a5a9d0d2  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2023-12-19
* vaccineType.coding.code = #Malaria
* vaccineType.coding.display = "Malaria"
* commercialName = "CYVAC"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "34cd73607a9432893b41df94a5a9d0d2  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(MalariaProduct34cd73607a9432893b41df94a5a9d0d2  ) 

Instance: MalariaProduct34cd73607a9432893b41df94a5a9d0d2  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "CYVAC"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #Malaria
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual34cd73607a9432893b41df94a5a9d0d2  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2023-12-19
* product  = Reference(MalariaProduct34cd73607a9432893b41df94a5a9d0d2  ) 

// Source Record Row //: 212
//  Date of Prequalification: (20/12/2018)
//  Vaccine Type: (Rabies)
//  Commercial Name: (Rabies Vaccine Inactivated (Freeze Dried)(RABIVAX-S))
//  Presentation: (Vial + Ampoule)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): f2b192bfc92c1c7871308ada29a061c4  
//

Instance: PreQualDBf2b192bfc92c1c7871308ada29a061c4  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2018-12-20
* vaccineType.coding.code = #Rabies
* vaccineType.coding.display = "Rabies"
* commercialName = "Rabies Vaccine Inactivated (Freeze Dried)(RABIVAX-S)"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "f2b192bfc92c1c7871308ada29a061c4  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RabiesProductf2b192bfc92c1c7871308ada29a061c4  ) 

Instance: RabiesProductf2b192bfc92c1c7871308ada29a061c4  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Rabies Vaccine Inactivated (Freeze Dried)(RABIVAX-S)"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #Rabies
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQualf2b192bfc92c1c7871308ada29a061c4  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2018-12-20
* product  = Reference(RabiesProductf2b192bfc92c1c7871308ada29a061c4  ) 

// Source Record Row //: 213
//  Date of Prequalification: (06/01/2009)
//  Vaccine Type: (Measles, Mumps and Rubella)
//  Commercial Name: (rHA M-M-R II)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Merck Sharp & Dohme LLC)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): f53615897edbe997d964e625d344ccdc  
//

Instance: PreQualDBf53615897edbe997d964e625d344ccdc  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-01-06
* vaccineType.coding.code = #MeaslesMumpsandRubella
* vaccineType.coding.display = "Measles, Mumps and Rubella"
* commercialName = "rHA M-M-R II"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Merck Sharp & Dohme LLC"
* responsibleNRA.text = "European Medicines Agency"
* index.value = "f53615897edbe997d964e625d344ccdc  "
* manufacturerReference = Reference(Manufacturer764b91fadf395103d4ce901372cc0882  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(MeaslesMumpsandRubellaProductf53615897edbe997d964e625d344ccdc  ) 

Instance: MeaslesMumpsandRubellaProductf53615897edbe997d964e625d344ccdc  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "rHA M-M-R II"
* manufacturer = Reference(Manufacturer764b91fadf395103d4ce901372cc0882  ) // Merck Sharp & Dohme LLC
* doseQuantity =  1 'doses'
* classification = #MeaslesMumpsandRubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualf53615897edbe997d964e625d344ccdc  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2009-01-06
* product  = Reference(MeaslesMumpsandRubellaProductf53615897edbe997d964e625d344ccdc  ) 

// Source Record Row //: 214
//  Date of Prequalification: (12/03/2009)
//  Vaccine Type: (Rotavirus)
//  Commercial Name: (Rotarix)
//  Presentation: (Plastic Tube)
//  No. of doses: (1)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): 0b0dd154bb4274f5fd8784b59e2fe275  
//

Instance: PreQualDB0b0dd154bb4274f5fd8784b59e2fe275  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-03-12
* vaccineType.coding.code = #Rotavirus
* vaccineType.coding.display = "Rotavirus"
* commercialName = "Rotarix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #PlasticTube
* presentation.coding.display = "Plastic Tube"
* numDoses = 1
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "0b0dd154bb4274f5fd8784b59e2fe275  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(RotavirusProduct0b0dd154bb4274f5fd8784b59e2fe275  ) 

Instance: RotavirusProduct0b0dd154bb4274f5fd8784b59e2fe275  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Rotarix"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  1 'doses'
* classification = #Rotavirus
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #PlasticTube

Instance: PreQual0b0dd154bb4274f5fd8784b59e2fe275  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2009-03-12
* product  = Reference(RotavirusProduct0b0dd154bb4274f5fd8784b59e2fe275  ) 

// Source Record Row //: 215
//  Date of Prequalification: (14/02/2019)
//  Vaccine Type: (Rotavirus)
//  Commercial Name: (Rotarix)
//  Presentation: (Plastic Tube)
//  No. of doses: (5)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): 53fcb319f717ccabdb38629caa624b20  
//

Instance: PreQualDB53fcb319f717ccabdb38629caa624b20  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2019-02-14
* vaccineType.coding.code = #Rotavirus
* vaccineType.coding.display = "Rotavirus"
* commercialName = "Rotarix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #PlasticTube
* presentation.coding.display = "Plastic Tube"
* numDoses = 5
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "53fcb319f717ccabdb38629caa624b20  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(RotavirusProduct53fcb319f717ccabdb38629caa624b20  ) 

Instance: RotavirusProduct53fcb319f717ccabdb38629caa624b20  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Rotarix"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  5 'doses'
* classification = #Rotavirus
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #PlasticTube

Instance: PreQual53fcb319f717ccabdb38629caa624b20  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2019-02-14
* product  = Reference(RotavirusProduct53fcb319f717ccabdb38629caa624b20  ) 

// Source Record Row //: 216
//  Date of Prequalification: (12/03/2009)
//  Vaccine Type: (Rotavirus)
//  Commercial Name: (Rotarix)
//  Presentation: (Applicator)
//  No. of doses: (1)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (Federal Agency for Medicines and Health Products)
//  md5(ROW): bc017d15d7f431bd0424354df11c18c8  
//

Instance: PreQualDBbc017d15d7f431bd0424354df11c18c8  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-03-12
* vaccineType.coding.code = #Rotavirus
* vaccineType.coding.display = "Rotavirus"
* commercialName = "Rotarix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Applicator
* presentation.coding.display = "Applicator"
* numDoses = 1
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "Federal Agency for Medicines and Health Products"
* index.value = "bc017d15d7f431bd0424354df11c18c8  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* productReference = Reference(RotavirusProductbc017d15d7f431bd0424354df11c18c8  ) 

Instance: RotavirusProductbc017d15d7f431bd0424354df11c18c8  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Rotarix"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  1 'doses'
* classification = #Rotavirus
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Applicator

Instance: PreQualbc017d15d7f431bd0424354df11c18c8  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdere0e3ed9114ce62feea705c24aceb2ee2  ) // Federal Agency for Medicines and Health Products
* validityPeriod.start = 2009-03-12
* product  = Reference(RotavirusProductbc017d15d7f431bd0424354df11c18c8  ) 

// Source Record Row //: 217
//  Date of Prequalification: (21/09/2018)
//  Vaccine Type: (Rotavirus (live, attenuated))
//  Commercial Name: (ROTASIIL)
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): aba1269c8eed435e58d27f99062aab7f  
//

Instance: PreQualDBaba1269c8eed435e58d27f99062aab7f  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2018-09-21
* vaccineType.coding.code = #Rotavirusliveattenuated
* vaccineType.coding.display = "Rotavirus (live, attenuated)"
* commercialName = "ROTASIIL"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "aba1269c8eed435e58d27f99062aab7f  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RotavirusliveattenuatedProductaba1269c8eed435e58d27f99062aab7f  ) 

Instance: RotavirusliveattenuatedProductaba1269c8eed435e58d27f99062aab7f  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "ROTASIIL"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #Rotavirusliveattenuated
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient

Instance: PreQualaba1269c8eed435e58d27f99062aab7f  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2018-09-21
* product  = Reference(RotavirusliveattenuatedProductaba1269c8eed435e58d27f99062aab7f  ) 

// Source Record Row //: 218
//  Date of Prequalification: (21/09/2018)
//  Vaccine Type: (Rotavirus (live, attenuated))
//  Commercial Name: (ROTASIIL)
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (2)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 846073e8efc59e6bde4f3aa8c7008f8e  
//

Instance: PreQualDB846073e8efc59e6bde4f3aa8c7008f8e  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2018-09-21
* vaccineType.coding.code = #Rotavirusliveattenuated
* vaccineType.coding.display = "Rotavirus (live, attenuated)"
* commercialName = "ROTASIIL"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 2
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "846073e8efc59e6bde4f3aa8c7008f8e  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RotavirusliveattenuatedProduct846073e8efc59e6bde4f3aa8c7008f8e  ) 

Instance: RotavirusliveattenuatedProduct846073e8efc59e6bde4f3aa8c7008f8e  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "ROTASIIL"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  2 'doses'
* classification = #Rotavirusliveattenuated
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient

Instance: PreQual846073e8efc59e6bde4f3aa8c7008f8e  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2018-09-21
* product  = Reference(RotavirusliveattenuatedProduct846073e8efc59e6bde4f3aa8c7008f8e  ) 

// Source Record Row //: 219
//  Date of Prequalification: (13/09/2023)
//  Vaccine Type: (Rotavirus (live, attenuated))
//  Commercial Name: (ROTASIIL-Liquid)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 5d0aee9435820780b60fc3f11ce1cfb0  
//

Instance: PreQualDB5d0aee9435820780b60fc3f11ce1cfb0  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2023-09-13
* vaccineType.coding.code = #Rotavirusliveattenuated
* vaccineType.coding.display = "Rotavirus (live, attenuated)"
* commercialName = "ROTASIIL-Liquid"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "5d0aee9435820780b60fc3f11ce1cfb0  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RotavirusliveattenuatedProduct5d0aee9435820780b60fc3f11ce1cfb0  ) 

Instance: RotavirusliveattenuatedProduct5d0aee9435820780b60fc3f11ce1cfb0  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "ROTASIIL-Liquid"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #Rotavirusliveattenuated
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual5d0aee9435820780b60fc3f11ce1cfb0  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2023-09-13
* product  = Reference(RotavirusliveattenuatedProduct5d0aee9435820780b60fc3f11ce1cfb0  ) 

// Source Record Row //: 220
//  Date of Prequalification: (08/10/2021)
//  Vaccine Type: (Rotavirus (live, attenuated))
//  Commercial Name: (ROTASIIL-Liquid)
//  Presentation: (Vial)
//  No. of doses: (2)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 84971742b6ec638f100087e1907dd8ad  
//

Instance: PreQualDB84971742b6ec638f100087e1907dd8ad  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2021-10-08
* vaccineType.coding.code = #Rotavirusliveattenuated
* vaccineType.coding.display = "Rotavirus (live, attenuated)"
* commercialName = "ROTASIIL-Liquid"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "84971742b6ec638f100087e1907dd8ad  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RotavirusliveattenuatedProduct84971742b6ec638f100087e1907dd8ad  ) 

Instance: RotavirusliveattenuatedProduct84971742b6ec638f100087e1907dd8ad  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "ROTASIIL-Liquid"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  2 'doses'
* classification = #Rotavirusliveattenuated
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual84971742b6ec638f100087e1907dd8ad  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2021-10-08
* product  = Reference(RotavirusliveattenuatedProduct84971742b6ec638f100087e1907dd8ad  ) 

// Source Record Row //: 221
//  Date of Prequalification: (18/02/2021)
//  Vaccine Type: (Rotavirus (live, attenuated))
//  Commercial Name: (ROTASIIL-Liquid)
//  Presentation: (Plastic Tube)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): a28f27ab86847575f0c86632fa40e736  
//

Instance: PreQualDBa28f27ab86847575f0c86632fa40e736  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2021-02-18
* vaccineType.coding.code = #Rotavirusliveattenuated
* vaccineType.coding.display = "Rotavirus (live, attenuated)"
* commercialName = "ROTASIIL-Liquid"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #PlasticTube
* presentation.coding.display = "Plastic Tube"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "a28f27ab86847575f0c86632fa40e736  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RotavirusliveattenuatedProducta28f27ab86847575f0c86632fa40e736  ) 

Instance: RotavirusliveattenuatedProducta28f27ab86847575f0c86632fa40e736  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "ROTASIIL-Liquid"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #Rotavirusliveattenuated
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #PlasticTube

Instance: PreQuala28f27ab86847575f0c86632fa40e736  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2021-02-18
* product  = Reference(RotavirusliveattenuatedProducta28f27ab86847575f0c86632fa40e736  ) 

// Source Record Row //: 222
//  Date of Prequalification: (28/01/2020)
//  Vaccine Type: (Rotavirus (live, attenuated))
//  Commercial Name: (ROTASIIL®Thermo)
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): bab8551131e5a5ecce02dcb55bce1647  
//

Instance: PreQualDBbab8551131e5a5ecce02dcb55bce1647  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2020-01-28
* vaccineType.coding.code = #Rotavirusliveattenuated
* vaccineType.coding.display = "Rotavirus (live, attenuated)"
* commercialName = "ROTASIIL®Thermo"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "bab8551131e5a5ecce02dcb55bce1647  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RotavirusliveattenuatedProductbab8551131e5a5ecce02dcb55bce1647  ) 

Instance: RotavirusliveattenuatedProductbab8551131e5a5ecce02dcb55bce1647  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "ROTASIIL®Thermo"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #Rotavirusliveattenuated
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient

Instance: PreQualbab8551131e5a5ecce02dcb55bce1647  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2020-01-28
* product  = Reference(RotavirusliveattenuatedProductbab8551131e5a5ecce02dcb55bce1647  ) 

// Source Record Row //: 223
//  Date of Prequalification: (28/01/2020)
//  Vaccine Type: (Rotavirus (live, attenuated))
//  Commercial Name: (ROTASIIL®Thermo)
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (2)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): c988bcb87cb2a881e4e0193a1794c184  
//

Instance: PreQualDBc988bcb87cb2a881e4e0193a1794c184  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2020-01-28
* vaccineType.coding.code = #Rotavirusliveattenuated
* vaccineType.coding.display = "Rotavirus (live, attenuated)"
* commercialName = "ROTASIIL®Thermo"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 2
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "c988bcb87cb2a881e4e0193a1794c184  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RotavirusliveattenuatedProductc988bcb87cb2a881e4e0193a1794c184  ) 

Instance: RotavirusliveattenuatedProductc988bcb87cb2a881e4e0193a1794c184  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "ROTASIIL®Thermo"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  2 'doses'
* classification = #Rotavirusliveattenuated
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient

Instance: PreQualc988bcb87cb2a881e4e0193a1794c184  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2020-01-28
* product  = Reference(RotavirusliveattenuatedProductc988bcb87cb2a881e4e0193a1794c184  ) 

// Source Record Row //: 224
//  Date of Prequalification: (07/10/2008)
//  Vaccine Type: (Rotavirus)
//  Commercial Name: (Rotateq)
//  Presentation: (Plastic Tube)
//  No. of doses: (1)
//  Manufacturer: (Merck Sharp & Dohme LLC)
//  Responsible NRA: (CBER/FDA)
//  md5(ROW): f4c0952b7ac2caea70a5dd2b4e44a705  
//

Instance: PreQualDBf4c0952b7ac2caea70a5dd2b4e44a705  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2008-10-07
* vaccineType.coding.code = #Rotavirus
* vaccineType.coding.display = "Rotavirus"
* commercialName = "Rotateq"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #PlasticTube
* presentation.coding.display = "Plastic Tube"
* numDoses = 1
* manufacturer.text = "Merck Sharp & Dohme LLC"
* responsibleNRA.text = "CBER/FDA"
* index.value = "f4c0952b7ac2caea70a5dd2b4e44a705  "
* manufacturerReference = Reference(Manufacturer764b91fadf395103d4ce901372cc0882  ) 
* responsibleNRAReference = Reference(Holder9d7db6151eea8bf9048690e4b4504c90  ) // CBER/FDA
* productReference = Reference(RotavirusProductf4c0952b7ac2caea70a5dd2b4e44a705  ) 

Instance: RotavirusProductf4c0952b7ac2caea70a5dd2b4e44a705  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Rotateq"
* manufacturer = Reference(Manufacturer764b91fadf395103d4ce901372cc0882  ) // Merck Sharp & Dohme LLC
* doseQuantity =  1 'doses'
* classification = #Rotavirus
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #PlasticTube

Instance: PreQualf4c0952b7ac2caea70a5dd2b4e44a705  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9d7db6151eea8bf9048690e4b4504c90  ) // CBER/FDA
* validityPeriod.start = 2008-10-07
* product  = Reference(RotavirusProductf4c0952b7ac2caea70a5dd2b4e44a705  ) 

// Source Record Row //: 225
//  Date of Prequalification: (05/01/2018)
//  Vaccine Type: (Rotavirus (live, attenuated))
//  Commercial Name: (Rotavac)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Bharat Biotech International Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): a4d4cf1eeafbb570eaec6b91bd8c1642  
//

Instance: PreQualDBa4d4cf1eeafbb570eaec6b91bd8c1642  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2018-01-05
* vaccineType.coding.code = #Rotavirusliveattenuated
* vaccineType.coding.display = "Rotavirus (live, attenuated)"
* commercialName = "Rotavac"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Bharat Biotech International Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "a4d4cf1eeafbb570eaec6b91bd8c1642  "
* manufacturerReference = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RotavirusliveattenuatedProducta4d4cf1eeafbb570eaec6b91bd8c1642  ) 

Instance: RotavirusliveattenuatedProducta4d4cf1eeafbb570eaec6b91bd8c1642  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Rotavac"
* manufacturer = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) // Bharat Biotech International Limited
* doseQuantity =  5 'doses'
* classification = #Rotavirusliveattenuated
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuala4d4cf1eeafbb570eaec6b91bd8c1642  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2018-01-05
* product  = Reference(RotavirusliveattenuatedProducta4d4cf1eeafbb570eaec6b91bd8c1642  ) 

// Source Record Row //: 226
//  Date of Prequalification: (05/01/2018)
//  Vaccine Type: (Rotavirus (live, attenuated))
//  Commercial Name: (Rotavac)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Bharat Biotech International Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 247d96f0d9d687ba45daac8fd4aef6e1  
//

Instance: PreQualDB247d96f0d9d687ba45daac8fd4aef6e1  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2018-01-05
* vaccineType.coding.code = #Rotavirusliveattenuated
* vaccineType.coding.display = "Rotavirus (live, attenuated)"
* commercialName = "Rotavac"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Bharat Biotech International Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "247d96f0d9d687ba45daac8fd4aef6e1  "
* manufacturerReference = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RotavirusliveattenuatedProduct247d96f0d9d687ba45daac8fd4aef6e1  ) 

Instance: RotavirusliveattenuatedProduct247d96f0d9d687ba45daac8fd4aef6e1  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Rotavac"
* manufacturer = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) // Bharat Biotech International Limited
* doseQuantity =  10 'doses'
* classification = #Rotavirusliveattenuated
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual247d96f0d9d687ba45daac8fd4aef6e1  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2018-01-05
* product  = Reference(RotavirusliveattenuatedProduct247d96f0d9d687ba45daac8fd4aef6e1  ) 

// Source Record Row //: 227
//  Date of Prequalification: (18/06/2021)
//  Vaccine Type: (Rotavirus (live, attenuated))
//  Commercial Name: (ROTAVAC 5D®)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Bharat Biotech International Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 6cf88a56e306e621e5f6c06e754d492d  
//

Instance: PreQualDB6cf88a56e306e621e5f6c06e754d492d  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2021-06-18
* vaccineType.coding.code = #Rotavirusliveattenuated
* vaccineType.coding.display = "Rotavirus (live, attenuated)"
* commercialName = "ROTAVAC 5D®"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Bharat Biotech International Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "6cf88a56e306e621e5f6c06e754d492d  "
* manufacturerReference = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RotavirusliveattenuatedProduct6cf88a56e306e621e5f6c06e754d492d  ) 

Instance: RotavirusliveattenuatedProduct6cf88a56e306e621e5f6c06e754d492d  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "ROTAVAC 5D®"
* manufacturer = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) // Bharat Biotech International Limited
* doseQuantity =  1 'doses'
* classification = #Rotavirusliveattenuated
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual6cf88a56e306e621e5f6c06e754d492d  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2021-06-18
* product  = Reference(RotavirusliveattenuatedProduct6cf88a56e306e621e5f6c06e754d492d  ) 

// Source Record Row //: 228
//  Date of Prequalification: (18/06/2021)
//  Vaccine Type: (Rotavirus (live, attenuated))
//  Commercial Name: (ROTAVAC 5D®)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Bharat Biotech International Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 44f5911f2722c9c2ab4caa5e4a2ee009  
//

Instance: PreQualDB44f5911f2722c9c2ab4caa5e4a2ee009  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2021-06-18
* vaccineType.coding.code = #Rotavirusliveattenuated
* vaccineType.coding.display = "Rotavirus (live, attenuated)"
* commercialName = "ROTAVAC 5D®"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Bharat Biotech International Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "44f5911f2722c9c2ab4caa5e4a2ee009  "
* manufacturerReference = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RotavirusliveattenuatedProduct44f5911f2722c9c2ab4caa5e4a2ee009  ) 

Instance: RotavirusliveattenuatedProduct44f5911f2722c9c2ab4caa5e4a2ee009  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "ROTAVAC 5D®"
* manufacturer = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) // Bharat Biotech International Limited
* doseQuantity =  5 'doses'
* classification = #Rotavirusliveattenuated
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual44f5911f2722c9c2ab4caa5e4a2ee009  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2021-06-18
* product  = Reference(RotavirusliveattenuatedProduct44f5911f2722c9c2ab4caa5e4a2ee009  ) 

// Source Record Row //: 229
//  Date of Prequalification: (01/09/2006)
//  Vaccine Type: (Rubella)
//  Commercial Name: (Rubella Vaccine, Live, Attenuated)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): b58ecc88973c368d2929674f7588dcaf  
//

Instance: PreQualDBb58ecc88973c368d2929674f7588dcaf  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2006-09-01
* vaccineType.coding.code = #Rubella
* vaccineType.coding.display = "Rubella"
* commercialName = "Rubella Vaccine, Live, Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "b58ecc88973c368d2929674f7588dcaf  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RubellaProductb58ecc88973c368d2929674f7588dcaf  ) 

Instance: RubellaProductb58ecc88973c368d2929674f7588dcaf  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Rubella Vaccine, Live, Attenuated"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #Rubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualb58ecc88973c368d2929674f7588dcaf  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2006-09-01
* product  = Reference(RubellaProductb58ecc88973c368d2929674f7588dcaf  ) 

// Source Record Row //: 230
//  Date of Prequalification: (01/09/2006)
//  Vaccine Type: (Rubella)
//  Commercial Name: (Rubella Vaccine, Live, Attenuated)
//  Presentation: (Vial)
//  No. of doses: (2)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 92d62b88e7a6bda1cdffd774c099112d  
//

Instance: PreQualDB92d62b88e7a6bda1cdffd774c099112d  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2006-09-01
* vaccineType.coding.code = #Rubella
* vaccineType.coding.display = "Rubella"
* commercialName = "Rubella Vaccine, Live, Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "92d62b88e7a6bda1cdffd774c099112d  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RubellaProduct92d62b88e7a6bda1cdffd774c099112d  ) 

Instance: RubellaProduct92d62b88e7a6bda1cdffd774c099112d  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Rubella Vaccine, Live, Attenuated"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  2 'doses'
* classification = #Rubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual92d62b88e7a6bda1cdffd774c099112d  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2006-09-01
* product  = Reference(RubellaProduct92d62b88e7a6bda1cdffd774c099112d  ) 

// Source Record Row //: 231
//  Date of Prequalification: (01/09/2006)
//  Vaccine Type: (Rubella)
//  Commercial Name: (Rubella Vaccine, Live, Attenuated)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 5256bec4bd8bae0e45743e9d569db466  
//

Instance: PreQualDB5256bec4bd8bae0e45743e9d569db466  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2006-09-01
* vaccineType.coding.code = #Rubella
* vaccineType.coding.display = "Rubella"
* commercialName = "Rubella Vaccine, Live, Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "5256bec4bd8bae0e45743e9d569db466  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RubellaProduct5256bec4bd8bae0e45743e9d569db466  ) 

Instance: RubellaProduct5256bec4bd8bae0e45743e9d569db466  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Rubella Vaccine, Live, Attenuated"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  5 'doses'
* classification = #Rubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual5256bec4bd8bae0e45743e9d569db466  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2006-09-01
* product  = Reference(RubellaProduct5256bec4bd8bae0e45743e9d569db466  ) 

// Source Record Row //: 232
//  Date of Prequalification: (01/09/2006)
//  Vaccine Type: (Rubella)
//  Commercial Name: (Rubella Vaccine, Live, Attenuated)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 0bb48b4861045ee347f5539609d92bbd  
//

Instance: PreQualDB0bb48b4861045ee347f5539609d92bbd  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2006-09-01
* vaccineType.coding.code = #Rubella
* vaccineType.coding.display = "Rubella"
* commercialName = "Rubella Vaccine, Live, Attenuated"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "0bb48b4861045ee347f5539609d92bbd  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RubellaProduct0bb48b4861045ee347f5539609d92bbd  ) 

Instance: RubellaProduct0bb48b4861045ee347f5539609d92bbd  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Rubella Vaccine, Live, Attenuated"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #Rubella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual0bb48b4861045ee347f5539609d92bbd  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2006-09-01
* product  = Reference(RubellaProduct0bb48b4861045ee347f5539609d92bbd  ) 

// Source Record Row //: 233
//  Date of Prequalification: (25/05/2018)
//  Vaccine Type: (Influenza, seasonal (Trivalent))
//  Commercial Name: (Serinflu)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Abbott Biologicals BV)
//  Responsible NRA: (Medicines Evaluation Board (MEB))
//  md5(ROW): 1de83fee04f2d8630ea4ff089ae47443  
//

Instance: PreQualDB1de83fee04f2d8630ea4ff089ae47443  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2018-05-25
* vaccineType.coding.code = #InfluenzaseasonalTrivale
* vaccineType.coding.display = "Influenza, seasonal (Trivalent)"
* commercialName = "Serinflu"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Abbott Biologicals BV"
* responsibleNRA.text = "Medicines Evaluation Board (MEB)"
* index.value = "1de83fee04f2d8630ea4ff089ae47443  "
* manufacturerReference = Reference(Manufactureraaca2980acaa19a41085d36efc6a5a84  ) 
* responsibleNRAReference = Reference(Holderba27f505e9f51f464d1a574696de85c5  ) // Medicines Evaluation Board (MEB)
* productReference = Reference(InfluenzaseasonalTrivaleProduct1de83fee04f2d8630ea4ff089ae47443  ) 

Instance: InfluenzaseasonalTrivaleProduct1de83fee04f2d8630ea4ff089ae47443  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Serinflu"
* manufacturer = Reference(Manufactureraaca2980acaa19a41085d36efc6a5a84  ) // Abbott Biologicals BV
* doseQuantity =  1 'doses'
* classification = #InfluenzaseasonalTrivale
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual1de83fee04f2d8630ea4ff089ae47443  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderba27f505e9f51f464d1a574696de85c5  ) // Medicines Evaluation Board (MEB)
* validityPeriod.start = 2018-05-25
* product  = Reference(InfluenzaseasonalTrivaleProduct1de83fee04f2d8630ea4ff089ae47443  ) 

// Source Record Row //: 234
//  Date of Prequalification: (29/09/2011)
//  Vaccine Type: (cholera: inactivated oral)
//  Commercial Name: (Shanchol)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Sanofi Healthcare India Private Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): bcc643f5ed406d46ed23bf1e0ff46cd1  
//

Instance: PreQualDBbcc643f5ed406d46ed23bf1e0ff46cd1  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2011-09-29
* vaccineType.coding.code = #cholerainactivatedoral
* vaccineType.coding.display = "cholera: inactivated oral"
* commercialName = "Shanchol"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Sanofi Healthcare India Private Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "bcc643f5ed406d46ed23bf1e0ff46cd1  "
* manufacturerReference = Reference(Manufacturer323393ea6ca912a5ae580eddb032cd99  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(cholerainactivatedoralProductbcc643f5ed406d46ed23bf1e0ff46cd1  ) 

Instance: cholerainactivatedoralProductbcc643f5ed406d46ed23bf1e0ff46cd1  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Shanchol"
* manufacturer = Reference(Manufacturer323393ea6ca912a5ae580eddb032cd99  ) // Sanofi Healthcare India Private Limited
* doseQuantity =  1 'doses'
* classification = #cholerainactivatedoral
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualbcc643f5ed406d46ed23bf1e0ff46cd1  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2011-09-29
* product  = Reference(cholerainactivatedoralProductbcc643f5ed406d46ed23bf1e0ff46cd1  ) 

// Source Record Row //: 235
//  Date of Prequalification: (01/10/2018)
//  Vaccine Type: (Polio Vaccine - Inactivated (IPV))
//  Commercial Name: (ShanIPV™)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Sanofi Healthcare India Private Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 81ee9ba77c4419bbfe44a27cfd10027e  
//

Instance: PreQualDB81ee9ba77c4419bbfe44a27cfd10027e  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2018-10-01
* vaccineType.coding.code = #PolioVaccineInactivatedI
* vaccineType.coding.display = "Polio Vaccine - Inactivated (IPV)"
* commercialName = "ShanIPV™"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Sanofi Healthcare India Private Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "81ee9ba77c4419bbfe44a27cfd10027e  "
* manufacturerReference = Reference(Manufacturer323393ea6ca912a5ae580eddb032cd99  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineInactivatedIProduct81ee9ba77c4419bbfe44a27cfd10027e  ) 

Instance: PolioVaccineInactivatedIProduct81ee9ba77c4419bbfe44a27cfd10027e  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "ShanIPV™"
* manufacturer = Reference(Manufacturer323393ea6ca912a5ae580eddb032cd99  ) // Sanofi Healthcare India Private Limited
* doseQuantity =  5 'doses'
* classification = #PolioVaccineInactivatedI
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual81ee9ba77c4419bbfe44a27cfd10027e  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2018-10-01
* product  = Reference(PolioVaccineInactivatedIProduct81ee9ba77c4419bbfe44a27cfd10027e  ) 

// Source Record Row //: 236
//  Date of Prequalification: (22/04/2022)
//  Vaccine Type: (Polio Vaccine - Inactivated (IPV))
//  Commercial Name: (ShanIPV™)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Sanofi Healthcare India Private Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 8b13b5fcf5e9268b345775be7c3f077c  
//

Instance: PreQualDB8b13b5fcf5e9268b345775be7c3f077c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2022-04-22
* vaccineType.coding.code = #PolioVaccineInactivatedI
* vaccineType.coding.display = "Polio Vaccine - Inactivated (IPV)"
* commercialName = "ShanIPV™"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Sanofi Healthcare India Private Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "8b13b5fcf5e9268b345775be7c3f077c  "
* manufacturerReference = Reference(Manufacturer323393ea6ca912a5ae580eddb032cd99  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(PolioVaccineInactivatedIProduct8b13b5fcf5e9268b345775be7c3f077c  ) 

Instance: PolioVaccineInactivatedIProduct8b13b5fcf5e9268b345775be7c3f077c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "ShanIPV™"
* manufacturer = Reference(Manufacturer323393ea6ca912a5ae580eddb032cd99  ) // Sanofi Healthcare India Private Limited
* doseQuantity =  10 'doses'
* classification = #PolioVaccineInactivatedI
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual8b13b5fcf5e9268b345775be7c3f077c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2022-04-22
* product  = Reference(PolioVaccineInactivatedIProduct8b13b5fcf5e9268b345775be7c3f077c  ) 

// Source Record Row //: 237
//  Date of Prequalification: (14/10/2022)
//  Vaccine Type: (Yellow Fever)
//  Commercial Name: (SinSaVac™)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Federal State Autonomous Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products», Russian Academy of Sciences)
//  Responsible NRA: (Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation)
//  md5(ROW): 01a3b83cf13e87948437db11cf5c34eb  
//

Instance: PreQualDB01a3b83cf13e87948437db11cf5c34eb  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2022-10-14
* vaccineType.coding.code = #YellowFever
* vaccineType.coding.display = "Yellow Fever"
* commercialName = "SinSaVac™"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Federal State Autonomous Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products», Russian Academy of Sciences"
* responsibleNRA.text = "Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation"
* index.value = "01a3b83cf13e87948437db11cf5c34eb  "
* manufacturerReference = Reference(Manufacturer862ceefb75480e8caff5b111610aceb0  ) 
* responsibleNRAReference = Reference(Holder8327c2d0eaf7c8d58e6036f3a9aee92d  ) // Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation
* productReference = Reference(YellowFeverProduct01a3b83cf13e87948437db11cf5c34eb  ) 

Instance: YellowFeverProduct01a3b83cf13e87948437db11cf5c34eb  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "SinSaVac™"
* manufacturer = Reference(Manufacturer862ceefb75480e8caff5b111610aceb0  ) // Federal State Autonomous Scientific Institution «Chumakov Federal Scientific Center for Research & Development of Immune-And Biological Products», Russian Academy of Sciences
* doseQuantity =  10 'doses'
* classification = #YellowFever
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual01a3b83cf13e87948437db11cf5c34eb  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder8327c2d0eaf7c8d58e6036f3a9aee92d  ) // Federal Service on Surveillance in Healthcare (ROSZDRAVNADZOR) of the Russian Federation
* validityPeriod.start = 2022-10-14
* product  = Reference(YellowFeverProduct01a3b83cf13e87948437db11cf5c34eb  ) 

// Source Record Row //: 238
//  Date of Prequalification: (27/12/2019)
//  Vaccine Type: (Influenza, seasonal (Quadrivalent))
//  Commercial Name: (SKYCellflu Quadrivalent inj.)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (SK Bioscience Co., Ltd.)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): 857b54237833aa49172d24b749788cd8  
//

Instance: PreQualDB857b54237833aa49172d24b749788cd8  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2019-12-27
* vaccineType.coding.code = #InfluenzaseasonalQuadriv
* vaccineType.coding.display = "Influenza, seasonal (Quadrivalent)"
* commercialName = "SKYCellflu Quadrivalent inj."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "SK Bioscience Co., Ltd."
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "857b54237833aa49172d24b749788cd8  "
* manufacturerReference = Reference(Manufacturer00bfdffd8d8dbe60aabda0191bb814ec  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(InfluenzaseasonalQuadrivProduct857b54237833aa49172d24b749788cd8  ) 

Instance: InfluenzaseasonalQuadrivProduct857b54237833aa49172d24b749788cd8  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "SKYCellflu Quadrivalent inj."
* manufacturer = Reference(Manufacturer00bfdffd8d8dbe60aabda0191bb814ec  ) // SK Bioscience Co., Ltd.
* doseQuantity =  1 'doses'
* classification = #InfluenzaseasonalQuadriv
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual857b54237833aa49172d24b749788cd8  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2019-12-27
* product  = Reference(InfluenzaseasonalQuadrivProduct857b54237833aa49172d24b749788cd8  ) 

// Source Record Row //: 239
//  Date of Prequalification: (27/12/2019)
//  Vaccine Type: (Influenza, seasonal (Quadrivalent))
//  Commercial Name: (SKYCellflu Quadrivalent Multi inj.)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (SK Bioscience Co., Ltd.)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): 2329c9c335034cc9d169c85cb142f137  
//

Instance: PreQualDB2329c9c335034cc9d169c85cb142f137  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2019-12-27
* vaccineType.coding.code = #InfluenzaseasonalQuadriv
* vaccineType.coding.display = "Influenza, seasonal (Quadrivalent)"
* commercialName = "SKYCellflu Quadrivalent Multi inj."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "SK Bioscience Co., Ltd."
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "2329c9c335034cc9d169c85cb142f137  "
* manufacturerReference = Reference(Manufacturer00bfdffd8d8dbe60aabda0191bb814ec  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(InfluenzaseasonalQuadrivProduct2329c9c335034cc9d169c85cb142f137  ) 

Instance: InfluenzaseasonalQuadrivProduct2329c9c335034cc9d169c85cb142f137  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "SKYCellflu Quadrivalent Multi inj."
* manufacturer = Reference(Manufacturer00bfdffd8d8dbe60aabda0191bb814ec  ) // SK Bioscience Co., Ltd.
* doseQuantity =  10 'doses'
* classification = #InfluenzaseasonalQuadriv
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual2329c9c335034cc9d169c85cb142f137  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2019-12-27
* product  = Reference(InfluenzaseasonalQuadrivProduct2329c9c335034cc9d169c85cb142f137  ) 

// Source Record Row //: 240
//  Date of Prequalification: (15/05/2019)
//  Vaccine Type: (Influenza, seasonal (Trivalent))
//  Commercial Name: (SKYCellflu® inj.)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (SK Bioscience Co., Ltd.)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): a7caaed8ed28906a817fdfe7f26bb696  
//

Instance: PreQualDBa7caaed8ed28906a817fdfe7f26bb696  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2019-05-15
* vaccineType.coding.code = #InfluenzaseasonalTrivale
* vaccineType.coding.display = "Influenza, seasonal (Trivalent)"
* commercialName = "SKYCellflu® inj."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "SK Bioscience Co., Ltd."
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "a7caaed8ed28906a817fdfe7f26bb696  "
* manufacturerReference = Reference(Manufacturer00bfdffd8d8dbe60aabda0191bb814ec  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(InfluenzaseasonalTrivaleProducta7caaed8ed28906a817fdfe7f26bb696  ) 

Instance: InfluenzaseasonalTrivaleProducta7caaed8ed28906a817fdfe7f26bb696  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "SKYCellflu® inj."
* manufacturer = Reference(Manufacturer00bfdffd8d8dbe60aabda0191bb814ec  ) // SK Bioscience Co., Ltd.
* doseQuantity =  1 'doses'
* classification = #InfluenzaseasonalTrivale
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuala7caaed8ed28906a817fdfe7f26bb696  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2019-05-15
* product  = Reference(InfluenzaseasonalTrivaleProducta7caaed8ed28906a817fdfe7f26bb696  ) 

// Source Record Row //: 241
//  Date of Prequalification: (08/04/2019)
//  Vaccine Type: (Influenza, seasonal (Trivalent))
//  Commercial Name: (SKYCellflu® Multi inj.)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (SK Bioscience Co., Ltd.)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): bc5b1b4b2ba40fb3b9743077a086766e  
//

Instance: PreQualDBbc5b1b4b2ba40fb3b9743077a086766e  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2019-04-08
* vaccineType.coding.code = #InfluenzaseasonalTrivale
* vaccineType.coding.display = "Influenza, seasonal (Trivalent)"
* commercialName = "SKYCellflu® Multi inj."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "SK Bioscience Co., Ltd."
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "bc5b1b4b2ba40fb3b9743077a086766e  "
* manufacturerReference = Reference(Manufacturer00bfdffd8d8dbe60aabda0191bb814ec  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(InfluenzaseasonalTrivaleProductbc5b1b4b2ba40fb3b9743077a086766e  ) 

Instance: InfluenzaseasonalTrivaleProductbc5b1b4b2ba40fb3b9743077a086766e  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "SKYCellflu® Multi inj."
* manufacturer = Reference(Manufacturer00bfdffd8d8dbe60aabda0191bb814ec  ) // SK Bioscience Co., Ltd.
* doseQuantity =  10 'doses'
* classification = #InfluenzaseasonalTrivale
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualbc5b1b4b2ba40fb3b9743077a086766e  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2019-04-08
* product  = Reference(InfluenzaseasonalTrivaleProductbc5b1b4b2ba40fb3b9743077a086766e  ) 

// Source Record Row //: 242
//  Date of Prequalification: (21/02/2024)
//  Vaccine Type: (Typhoid (Conjugate))
//  Commercial Name: (SKYTyphoid Multi Inj.)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (SK Bioscience Co., Ltd.)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): 14f33effe6b84f89d3c5d07663cce92b  
//

Instance: PreQualDB14f33effe6b84f89d3c5d07663cce92b  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-02-21
* vaccineType.coding.code = #TyphoidConjugate
* vaccineType.coding.display = "Typhoid (Conjugate)"
* commercialName = "SKYTyphoid Multi Inj."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "SK Bioscience Co., Ltd."
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "14f33effe6b84f89d3c5d07663cce92b  "
* manufacturerReference = Reference(Manufacturer00bfdffd8d8dbe60aabda0191bb814ec  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(TyphoidConjugateProduct14f33effe6b84f89d3c5d07663cce92b  ) 

Instance: TyphoidConjugateProduct14f33effe6b84f89d3c5d07663cce92b  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "SKYTyphoid Multi Inj."
* manufacturer = Reference(Manufacturer00bfdffd8d8dbe60aabda0191bb814ec  ) // SK Bioscience Co., Ltd.
* doseQuantity =  5 'doses'
* classification = #TyphoidConjugate
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual14f33effe6b84f89d3c5d07663cce92b  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2024-02-21
* product  = Reference(TyphoidConjugateProduct14f33effe6b84f89d3c5d07663cce92b  ) 

// Source Record Row //: 243
//  Date of Prequalification: (09/12/2019)
//  Vaccine Type: (Varicella)
//  Commercial Name: (SKYVaricella Inj.)
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (1)
//  Manufacturer: (SK Bioscience Co., Ltd.)
//  Responsible NRA: (Ministry of Food and Drug Safety)
//  md5(ROW): 8133c14443b0a3b1b10b846723961fee  
//

Instance: PreQualDB8133c14443b0a3b1b10b846723961fee  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2019-12-09
* vaccineType.coding.code = #Varicella
* vaccineType.coding.display = "Varicella"
* commercialName = "SKYVaricella Inj."
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 1
* manufacturer.text = "SK Bioscience Co., Ltd."
* responsibleNRA.text = "Ministry of Food and Drug Safety"
* index.value = "8133c14443b0a3b1b10b846723961fee  "
* manufacturerReference = Reference(Manufacturer00bfdffd8d8dbe60aabda0191bb814ec  ) 
* responsibleNRAReference = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* productReference = Reference(VaricellaProduct8133c14443b0a3b1b10b846723961fee  ) 

Instance: VaricellaProduct8133c14443b0a3b1b10b846723961fee  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "SKYVaricella Inj."
* manufacturer = Reference(Manufacturer00bfdffd8d8dbe60aabda0191bb814ec  ) // SK Bioscience Co., Ltd.
* doseQuantity =  1 'doses'
* classification = #Varicella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient

Instance: PreQual8133c14443b0a3b1b10b846723961fee  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderd4e6bca678dea34fa256538a18200187  ) // Ministry of Food and Drug Safety
* validityPeriod.start = 2019-12-09
* product  = Reference(VaricellaProduct8133c14443b0a3b1b10b846723961fee  ) 

// Source Record Row //: 244
//  Date of Prequalification: (20/03/2001)
//  Vaccine Type: (Yellow Fever)
//  Commercial Name: (Stabilized Yellow Fever Vaccine)
//  Presentation: (Ampoule)
//  No. of doses: (5)
//  Manufacturer: (Institut Pasteur de Dakar)
//  Responsible NRA: (Ministère de la Santé publique)
//  md5(ROW): f82b015dfb3b1feeacd4c44d95b3b3ec  
//

Instance: PreQualDBf82b015dfb3b1feeacd4c44d95b3b3ec  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2001-03-20
* vaccineType.coding.code = #YellowFever
* vaccineType.coding.display = "Yellow Fever"
* commercialName = "Stabilized Yellow Fever Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 5
* manufacturer.text = "Institut Pasteur de Dakar"
* responsibleNRA.text = "Ministère de la Santé publique"
* index.value = "f82b015dfb3b1feeacd4c44d95b3b3ec  "
* manufacturerReference = Reference(Manufacturer4ce2190fca5ae4fbb2ce66bf52affe15  ) 
* responsibleNRAReference = Reference(Holder2727357adb2fdf08fa5c9bb57e9ce617  ) // Ministère de la Santé publique
* productReference = Reference(YellowFeverProductf82b015dfb3b1feeacd4c44d95b3b3ec  ) 

Instance: YellowFeverProductf82b015dfb3b1feeacd4c44d95b3b3ec  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Stabilized Yellow Fever Vaccine"
* manufacturer = Reference(Manufacturer4ce2190fca5ae4fbb2ce66bf52affe15  ) // Institut Pasteur de Dakar
* doseQuantity =  5 'doses'
* classification = #YellowFever
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule

Instance: PreQualf82b015dfb3b1feeacd4c44d95b3b3ec  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2727357adb2fdf08fa5c9bb57e9ce617  ) // Ministère de la Santé publique
* validityPeriod.start = 2001-03-20
* product  = Reference(YellowFeverProductf82b015dfb3b1feeacd4c44d95b3b3ec  ) 

// Source Record Row //: 245
//  Date of Prequalification: (20/03/2001)
//  Vaccine Type: (Yellow Fever)
//  Commercial Name: (Stabilized Yellow Fever Vaccine)
//  Presentation: (Ampoule)
//  No. of doses: (10)
//  Manufacturer: (Institut Pasteur de Dakar)
//  Responsible NRA: (Ministère de la Santé publique)
//  md5(ROW): 223330a7c15da86b21cc363f591de002  
//

Instance: PreQualDB223330a7c15da86b21cc363f591de002  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2001-03-20
* vaccineType.coding.code = #YellowFever
* vaccineType.coding.display = "Yellow Fever"
* commercialName = "Stabilized Yellow Fever Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 10
* manufacturer.text = "Institut Pasteur de Dakar"
* responsibleNRA.text = "Ministère de la Santé publique"
* index.value = "223330a7c15da86b21cc363f591de002  "
* manufacturerReference = Reference(Manufacturer4ce2190fca5ae4fbb2ce66bf52affe15  ) 
* responsibleNRAReference = Reference(Holder2727357adb2fdf08fa5c9bb57e9ce617  ) // Ministère de la Santé publique
* productReference = Reference(YellowFeverProduct223330a7c15da86b21cc363f591de002  ) 

Instance: YellowFeverProduct223330a7c15da86b21cc363f591de002  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Stabilized Yellow Fever Vaccine"
* manufacturer = Reference(Manufacturer4ce2190fca5ae4fbb2ce66bf52affe15  ) // Institut Pasteur de Dakar
* doseQuantity =  10 'doses'
* classification = #YellowFever
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule

Instance: PreQual223330a7c15da86b21cc363f591de002  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2727357adb2fdf08fa5c9bb57e9ce617  ) // Ministère de la Santé publique
* validityPeriod.start = 2001-03-20
* product  = Reference(YellowFeverProduct223330a7c15da86b21cc363f591de002  ) 

// Source Record Row //: 246
//  Date of Prequalification: (20/03/2001)
//  Vaccine Type: (Yellow Fever)
//  Commercial Name: (Stabilized Yellow Fever Vaccine)
//  Presentation: (Ampoule)
//  No. of doses: (20)
//  Manufacturer: (Institut Pasteur de Dakar)
//  Responsible NRA: (Ministère de la Santé publique)
//  md5(ROW): ffea8448252ee58b7a92add05f0c3431  
//

Instance: PreQualDBffea8448252ee58b7a92add05f0c3431  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2001-03-20
* vaccineType.coding.code = #YellowFever
* vaccineType.coding.display = "Yellow Fever"
* commercialName = "Stabilized Yellow Fever Vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 20
* manufacturer.text = "Institut Pasteur de Dakar"
* responsibleNRA.text = "Ministère de la Santé publique"
* index.value = "ffea8448252ee58b7a92add05f0c3431  "
* manufacturerReference = Reference(Manufacturer4ce2190fca5ae4fbb2ce66bf52affe15  ) 
* responsibleNRAReference = Reference(Holder2727357adb2fdf08fa5c9bb57e9ce617  ) // Ministère de la Santé publique
* productReference = Reference(YellowFeverProductffea8448252ee58b7a92add05f0c3431  ) 

Instance: YellowFeverProductffea8448252ee58b7a92add05f0c3431  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Stabilized Yellow Fever Vaccine"
* manufacturer = Reference(Manufacturer4ce2190fca5ae4fbb2ce66bf52affe15  ) // Institut Pasteur de Dakar
* doseQuantity =  20 'doses'
* classification = #YellowFever
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule

Instance: PreQualffea8448252ee58b7a92add05f0c3431  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2727357adb2fdf08fa5c9bb57e9ce617  ) // Ministère de la Santé publique
* validityPeriod.start = 2001-03-20
* product  = Reference(YellowFeverProductffea8448252ee58b7a92add05f0c3431  ) 

// Source Record Row //: 247
//  Date of Prequalification: (01/01/1987)
//  Vaccine Type: (Yellow Fever)
//  Commercial Name: (STAMARIL)
//  Presentation: (Vial + Ampoule)
//  No. of doses: (10)
//  Manufacturer: (Sanofi Pasteur)
//  Responsible NRA: (Agence nationale de sécurité du médicament et des produits de santé)
//  md5(ROW): d8a09f80301dc05e124f99ffe7711fc0  
//

Instance: PreQualDBd8a09f80301dc05e124f99ffe7711fc0  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1987-01-01
* vaccineType.coding.code = #YellowFever
* vaccineType.coding.display = "Yellow Fever"
* commercialName = "STAMARIL"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #VialAmpoule
* presentation.coding.display = "Vial + Ampoule"
* numDoses = 10
* manufacturer.text = "Sanofi Pasteur"
* responsibleNRA.text = "Agence nationale de sécurité du médicament et des produits de santé"
* index.value = "d8a09f80301dc05e124f99ffe7711fc0  "
* manufacturerReference = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) 
* responsibleNRAReference = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* productReference = Reference(YellowFeverProductd8a09f80301dc05e124f99ffe7711fc0  ) 

Instance: YellowFeverProductd8a09f80301dc05e124f99ffe7711fc0  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "STAMARIL"
* manufacturer = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) // Sanofi Pasteur
* doseQuantity =  10 'doses'
* classification = #YellowFever
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #VialAmpoule

Instance: PreQuald8a09f80301dc05e124f99ffe7711fc0  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* validityPeriod.start = 1987-01-01
* product  = Reference(YellowFeverProductd8a09f80301dc05e124f99ffe7711fc0  ) 

// Source Record Row //: 248
//  Date of Prequalification: (30/10/2009)
//  Vaccine Type: (Pneumococcal (conjugate))
//  Commercial Name: (Synflorix)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): fcf21ee9ff8e209c022200a4d776dda0  
//

Instance: PreQualDBfcf21ee9ff8e209c022200a4d776dda0  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2009-10-30
* vaccineType.coding.code = #Pneumococcalconjugate
* vaccineType.coding.display = "Pneumococcal (conjugate)"
* commercialName = "Synflorix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "European Medicines Agency"
* index.value = "fcf21ee9ff8e209c022200a4d776dda0  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(PneumococcalconjugateProductfcf21ee9ff8e209c022200a4d776dda0  ) 

Instance: PneumococcalconjugateProductfcf21ee9ff8e209c022200a4d776dda0  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Synflorix"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  1 'doses'
* classification = #Pneumococcalconjugate
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualfcf21ee9ff8e209c022200a4d776dda0  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2009-10-30
* product  = Reference(PneumococcalconjugateProductfcf21ee9ff8e209c022200a4d776dda0  ) 

// Source Record Row //: 249
//  Date of Prequalification: (19/03/2010)
//  Vaccine Type: (Pneumococcal (conjugate))
//  Commercial Name: (Synflorix)
//  Presentation: (Vial)
//  No. of doses: (2)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): 0defc68f369dcb9815e2bc4a6ee5533f  
//

Instance: PreQualDB0defc68f369dcb9815e2bc4a6ee5533f  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2010-03-19
* vaccineType.coding.code = #Pneumococcalconjugate
* vaccineType.coding.display = "Pneumococcal (conjugate)"
* commercialName = "Synflorix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 2
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "European Medicines Agency"
* index.value = "0defc68f369dcb9815e2bc4a6ee5533f  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(PneumococcalconjugateProduct0defc68f369dcb9815e2bc4a6ee5533f  ) 

Instance: PneumococcalconjugateProduct0defc68f369dcb9815e2bc4a6ee5533f  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Synflorix"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  2 'doses'
* classification = #Pneumococcalconjugate
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual0defc68f369dcb9815e2bc4a6ee5533f  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2010-03-19
* product  = Reference(PneumococcalconjugateProduct0defc68f369dcb9815e2bc4a6ee5533f  ) 

// Source Record Row //: 250
//  Date of Prequalification: (16/10/2017)
//  Vaccine Type: (Pneumococcal (conjugate))
//  Commercial Name: (Synflorix)
//  Presentation: (Vial)
//  No. of doses: (4)
//  Manufacturer: (GlaxoSmithKline Biologicals SA)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): 1bc532b4004e4c37e8503a66c775e9cd  
//

Instance: PreQualDB1bc532b4004e4c37e8503a66c775e9cd  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2017-10-16
* vaccineType.coding.code = #Pneumococcalconjugate
* vaccineType.coding.display = "Pneumococcal (conjugate)"
* commercialName = "Synflorix"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 4
* manufacturer.text = "GlaxoSmithKline Biologicals SA"
* responsibleNRA.text = "European Medicines Agency"
* index.value = "1bc532b4004e4c37e8503a66c775e9cd  "
* manufacturerReference = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(PneumococcalconjugateProduct1bc532b4004e4c37e8503a66c775e9cd  ) 

Instance: PneumococcalconjugateProduct1bc532b4004e4c37e8503a66c775e9cd  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Synflorix"
* manufacturer = Reference(Manufacturer214b31a3bf30c1816fab7b3f39ca25c9  ) // GlaxoSmithKline Biologicals SA
* doseQuantity =  4 'doses'
* classification = #Pneumococcalconjugate
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual1bc532b4004e4c37e8503a66c775e9cd  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2017-10-16
* product  = Reference(PneumococcalconjugateProduct1bc532b4004e4c37e8503a66c775e9cd  ) 

// Source Record Row //: 251
//  Date of Prequalification: (09/05/2006)
//  Vaccine Type: (Diphtheria-Tetanus (reduced antigen content))
//  Commercial Name: (Tetadif)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.))
//  Responsible NRA: (Bulgarian Drug Agency)
//  md5(ROW): 015e0d747befdc032a505ac960851497  
//

Instance: PreQualDB015e0d747befdc032a505ac960851497  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2006-05-09
* vaccineType.coding.code = #DiphtheriaTetanusreduced
* vaccineType.coding.display = "Diphtheria-Tetanus (reduced antigen content)"
* commercialName = "Tetadif"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)"
* responsibleNRA.text = "Bulgarian Drug Agency"
* index.value = "015e0d747befdc032a505ac960851497  "
* manufacturerReference = Reference(Manufacturer7e1075439f93207b76e283af4e5a96d5  ) 
* responsibleNRAReference = Reference(Holder2249658a617cfcc38ca334756748dcd0  ) // Bulgarian Drug Agency
* productReference = Reference(DiphtheriaTetanusreducedProduct015e0d747befdc032a505ac960851497  ) 

Instance: DiphtheriaTetanusreducedProduct015e0d747befdc032a505ac960851497  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Tetadif"
* manufacturer = Reference(Manufacturer7e1075439f93207b76e283af4e5a96d5  ) // BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)
* doseQuantity =  10 'doses'
* classification = #DiphtheriaTetanusreduced
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual015e0d747befdc032a505ac960851497  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2249658a617cfcc38ca334756748dcd0  ) // Bulgarian Drug Agency
* validityPeriod.start = 2006-05-09
* product  = Reference(DiphtheriaTetanusreducedProduct015e0d747befdc032a505ac960851497  ) 

// Source Record Row //: 252
//  Date of Prequalification: (09/05/2006)
//  Vaccine Type: (Diphtheria-Tetanus (reduced antigen content))
//  Commercial Name: (Tetadif)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.))
//  Responsible NRA: (Bulgarian Drug Agency)
//  md5(ROW): 36463c650975ef84b1519bc55647a533  
//

Instance: PreQualDB36463c650975ef84b1519bc55647a533  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2006-05-09
* vaccineType.coding.code = #DiphtheriaTetanusreduced
* vaccineType.coding.display = "Diphtheria-Tetanus (reduced antigen content)"
* commercialName = "Tetadif"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)"
* responsibleNRA.text = "Bulgarian Drug Agency"
* index.value = "36463c650975ef84b1519bc55647a533  "
* manufacturerReference = Reference(Manufacturer7e1075439f93207b76e283af4e5a96d5  ) 
* responsibleNRAReference = Reference(Holder2249658a617cfcc38ca334756748dcd0  ) // Bulgarian Drug Agency
* productReference = Reference(DiphtheriaTetanusreducedProduct36463c650975ef84b1519bc55647a533  ) 

Instance: DiphtheriaTetanusreducedProduct36463c650975ef84b1519bc55647a533  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Tetadif"
* manufacturer = Reference(Manufacturer7e1075439f93207b76e283af4e5a96d5  ) // BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)
* doseQuantity =  20 'doses'
* classification = #DiphtheriaTetanusreduced
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual36463c650975ef84b1519bc55647a533  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2249658a617cfcc38ca334756748dcd0  ) // Bulgarian Drug Agency
* validityPeriod.start = 2006-05-09
* product  = Reference(DiphtheriaTetanusreducedProduct36463c650975ef84b1519bc55647a533  ) 

// Source Record Row //: 253
//  Date of Prequalification: (04/04/1995)
//  Vaccine Type: (Tetanus Toxoid)
//  Commercial Name: (Tetanus  Toxoid Vaccine Adsorbed)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 3d3b58060f5dc09709e826ea5b7f635d  
//

Instance: PreQualDB3d3b58060f5dc09709e826ea5b7f635d  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1995-04-04
* vaccineType.coding.code = #TetanusToxoid
* vaccineType.coding.display = "Tetanus Toxoid"
* commercialName = "Tetanus  Toxoid Vaccine Adsorbed"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "3d3b58060f5dc09709e826ea5b7f635d  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(TetanusToxoidProduct3d3b58060f5dc09709e826ea5b7f635d  ) 

Instance: TetanusToxoidProduct3d3b58060f5dc09709e826ea5b7f635d  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Tetanus  Toxoid Vaccine Adsorbed"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  10 'doses'
* classification = #TetanusToxoid
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual3d3b58060f5dc09709e826ea5b7f635d  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 1995-04-04
* product  = Reference(TetanusToxoidProduct3d3b58060f5dc09709e826ea5b7f635d  ) 

// Source Record Row //: 254
//  Date of Prequalification: (04/04/1995)
//  Vaccine Type: (Tetanus Toxoid)
//  Commercial Name: (Tetanus  Toxoid Vaccine Adsorbed)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 0cb7838cdb9015a56943ac3256e7c9e0  
//

Instance: PreQualDB0cb7838cdb9015a56943ac3256e7c9e0  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1995-04-04
* vaccineType.coding.code = #TetanusToxoid
* vaccineType.coding.display = "Tetanus Toxoid"
* commercialName = "Tetanus  Toxoid Vaccine Adsorbed"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "0cb7838cdb9015a56943ac3256e7c9e0  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(TetanusToxoidProduct0cb7838cdb9015a56943ac3256e7c9e0  ) 

Instance: TetanusToxoidProduct0cb7838cdb9015a56943ac3256e7c9e0  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Tetanus  Toxoid Vaccine Adsorbed"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  20 'doses'
* classification = #TetanusToxoid
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual0cb7838cdb9015a56943ac3256e7c9e0  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 1995-04-04
* product  = Reference(TetanusToxoidProduct0cb7838cdb9015a56943ac3256e7c9e0  ) 

// Source Record Row //: 255
//  Date of Prequalification: (04/04/1995)
//  Vaccine Type: (Tetanus Toxoid)
//  Commercial Name: (Tetanus  Toxoid Vaccine Adsorbed)
//  Presentation: (Ampoule)
//  No. of doses: (1)
//  Manufacturer: (Serum Institute of India Pvt. Ltd.)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 918ff9b5bd4b52ff9f2adf81368501a5  
//

Instance: PreQualDB918ff9b5bd4b52ff9f2adf81368501a5  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1995-04-04
* vaccineType.coding.code = #TetanusToxoid
* vaccineType.coding.display = "Tetanus Toxoid"
* commercialName = "Tetanus  Toxoid Vaccine Adsorbed"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Ampoule
* presentation.coding.display = "Ampoule"
* numDoses = 1
* manufacturer.text = "Serum Institute of India Pvt. Ltd."
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "918ff9b5bd4b52ff9f2adf81368501a5  "
* manufacturerReference = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(TetanusToxoidProduct918ff9b5bd4b52ff9f2adf81368501a5  ) 

Instance: TetanusToxoidProduct918ff9b5bd4b52ff9f2adf81368501a5  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Tetanus  Toxoid Vaccine Adsorbed"
* manufacturer = Reference(Manufacturer35b3de1add41b53c8e37ce338f2ba545  ) // Serum Institute of India Pvt. Ltd.
* doseQuantity =  1 'doses'
* classification = #TetanusToxoid
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Ampoule

Instance: PreQual918ff9b5bd4b52ff9f2adf81368501a5  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 1995-04-04
* product  = Reference(TetanusToxoidProduct918ff9b5bd4b52ff9f2adf81368501a5  ) 

// Source Record Row //: 256
//  Date of Prequalification: (09/05/2006)
//  Vaccine Type: (Tetanus Toxoid)
//  Commercial Name: (Tetatox)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.))
//  Responsible NRA: (Bulgarian Drug Agency)
//  md5(ROW): 74a886b0b82debce2c05ff10507db46e  
//

Instance: PreQualDB74a886b0b82debce2c05ff10507db46e  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2006-05-09
* vaccineType.coding.code = #TetanusToxoid
* vaccineType.coding.display = "Tetanus Toxoid"
* commercialName = "Tetatox"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)"
* responsibleNRA.text = "Bulgarian Drug Agency"
* index.value = "74a886b0b82debce2c05ff10507db46e  "
* manufacturerReference = Reference(Manufacturer7e1075439f93207b76e283af4e5a96d5  ) 
* responsibleNRAReference = Reference(Holder2249658a617cfcc38ca334756748dcd0  ) // Bulgarian Drug Agency
* productReference = Reference(TetanusToxoidProduct74a886b0b82debce2c05ff10507db46e  ) 

Instance: TetanusToxoidProduct74a886b0b82debce2c05ff10507db46e  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Tetatox"
* manufacturer = Reference(Manufacturer7e1075439f93207b76e283af4e5a96d5  ) // BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)
* doseQuantity =  10 'doses'
* classification = #TetanusToxoid
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual74a886b0b82debce2c05ff10507db46e  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2249658a617cfcc38ca334756748dcd0  ) // Bulgarian Drug Agency
* validityPeriod.start = 2006-05-09
* product  = Reference(TetanusToxoidProduct74a886b0b82debce2c05ff10507db46e  ) 

// Source Record Row //: 257
//  Date of Prequalification: (09/05/2006)
//  Vaccine Type: (Tetanus Toxoid)
//  Commercial Name: (Tetatox)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.))
//  Responsible NRA: (Bulgarian Drug Agency)
//  md5(ROW): 1071c914359919dd58d72663a018511b  
//

Instance: PreQualDB1071c914359919dd58d72663a018511b  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2006-05-09
* vaccineType.coding.code = #TetanusToxoid
* vaccineType.coding.display = "Tetanus Toxoid"
* commercialName = "Tetatox"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)"
* responsibleNRA.text = "Bulgarian Drug Agency"
* index.value = "1071c914359919dd58d72663a018511b  "
* manufacturerReference = Reference(Manufacturer7e1075439f93207b76e283af4e5a96d5  ) 
* responsibleNRAReference = Reference(Holder2249658a617cfcc38ca334756748dcd0  ) // Bulgarian Drug Agency
* productReference = Reference(TetanusToxoidProduct1071c914359919dd58d72663a018511b  ) 

Instance: TetanusToxoidProduct1071c914359919dd58d72663a018511b  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Tetatox"
* manufacturer = Reference(Manufacturer7e1075439f93207b76e283af4e5a96d5  ) // BB- NCIPD Ltd. (Bul Bio-National Center of Infectious and Parasitic Diseases Ltd.)
* doseQuantity =  20 'doses'
* classification = #TetanusToxoid
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual1071c914359919dd58d72663a018511b  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder2249658a617cfcc38ca334756748dcd0  ) // Bulgarian Drug Agency
* validityPeriod.start = 2006-05-09
* product  = Reference(TetanusToxoidProduct1071c914359919dd58d72663a018511b  ) 

// Source Record Row //: 258
//  Date of Prequalification: (11/03/1999)
//  Vaccine Type: (Tetanus Toxoid)
//  Commercial Name: (TT vaccine)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (PT Bio Farma (Persero))
//  Responsible NRA: (National Agency of Drug and Food Control Indonesia)
//  md5(ROW): da7044cc9c5d3a1c5e4cb5c88ee081f0  
//

Instance: PreQualDBda7044cc9c5d3a1c5e4cb5c88ee081f0  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1999-03-11
* vaccineType.coding.code = #TetanusToxoid
* vaccineType.coding.display = "Tetanus Toxoid"
* commercialName = "TT vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "PT Bio Farma (Persero)"
* responsibleNRA.text = "National Agency of Drug and Food Control Indonesia"
* index.value = "da7044cc9c5d3a1c5e4cb5c88ee081f0  "
* manufacturerReference = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) 
* responsibleNRAReference = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* productReference = Reference(TetanusToxoidProductda7044cc9c5d3a1c5e4cb5c88ee081f0  ) 

Instance: TetanusToxoidProductda7044cc9c5d3a1c5e4cb5c88ee081f0  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "TT vaccine"
* manufacturer = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) // PT Bio Farma (Persero)
* doseQuantity =  10 'doses'
* classification = #TetanusToxoid
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualda7044cc9c5d3a1c5e4cb5c88ee081f0  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* validityPeriod.start = 1999-03-11
* product  = Reference(TetanusToxoidProductda7044cc9c5d3a1c5e4cb5c88ee081f0  ) 

// Source Record Row //: 259
//  Date of Prequalification: (11/03/1999)
//  Vaccine Type: (Tetanus Toxoid)
//  Commercial Name: (TT vaccine)
//  Presentation: (Vial)
//  No. of doses: (20)
//  Manufacturer: (PT Bio Farma (Persero))
//  Responsible NRA: (National Agency of Drug and Food Control Indonesia)
//  md5(ROW): f8b5e42854cc1ae2255649171e9a8e5c  
//

Instance: PreQualDBf8b5e42854cc1ae2255649171e9a8e5c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 1999-03-11
* vaccineType.coding.code = #TetanusToxoid
* vaccineType.coding.display = "Tetanus Toxoid"
* commercialName = "TT vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 20
* manufacturer.text = "PT Bio Farma (Persero)"
* responsibleNRA.text = "National Agency of Drug and Food Control Indonesia"
* index.value = "f8b5e42854cc1ae2255649171e9a8e5c  "
* manufacturerReference = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) 
* responsibleNRAReference = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* productReference = Reference(TetanusToxoidProductf8b5e42854cc1ae2255649171e9a8e5c  ) 

Instance: TetanusToxoidProductf8b5e42854cc1ae2255649171e9a8e5c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "TT vaccine"
* manufacturer = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) // PT Bio Farma (Persero)
* doseQuantity =  20 'doses'
* classification = #TetanusToxoid
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualf8b5e42854cc1ae2255649171e9a8e5c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* validityPeriod.start = 1999-03-11
* product  = Reference(TetanusToxoidProductf8b5e42854cc1ae2255649171e9a8e5c  ) 

// Source Record Row //: 260
//  Date of Prequalification: (29/10/2003)
//  Vaccine Type: (Tetanus Toxoid)
//  Commercial Name: (TT vaccine)
//  Presentation: (Uniject)
//  No. of doses: (1)
//  Manufacturer: (PT Bio Farma (Persero))
//  Responsible NRA: (National Agency of Drug and Food Control Indonesia)
//  md5(ROW): d0dc36feabc50a33cc8f2f89d2342919  
//

Instance: PreQualDBd0dc36feabc50a33cc8f2f89d2342919  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2003-10-29
* vaccineType.coding.code = #TetanusToxoid
* vaccineType.coding.display = "Tetanus Toxoid"
* commercialName = "TT vaccine"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Uniject
* presentation.coding.display = "Uniject"
* numDoses = 1
* manufacturer.text = "PT Bio Farma (Persero)"
* responsibleNRA.text = "National Agency of Drug and Food Control Indonesia"
* index.value = "d0dc36feabc50a33cc8f2f89d2342919  "
* manufacturerReference = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) 
* responsibleNRAReference = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* productReference = Reference(TetanusToxoidProductd0dc36feabc50a33cc8f2f89d2342919  ) 

Instance: TetanusToxoidProductd0dc36feabc50a33cc8f2f89d2342919  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "TT vaccine"
* manufacturer = Reference(Manufacturer3ad507e03b3c8420f83f895f7122255f  ) // PT Bio Farma (Persero)
* doseQuantity =  1 'doses'
* classification = #TetanusToxoid
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Uniject

Instance: PreQuald0dc36feabc50a33cc8f2f89d2342919  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9899e21a11ed6ac7b548ef6171579c60  ) // National Agency of Drug and Food Control Indonesia
* validityPeriod.start = 2003-10-29
* product  = Reference(TetanusToxoidProductd0dc36feabc50a33cc8f2f89d2342919  ) 

// Source Record Row //: 261
//  Date of Prequalification: (22/12/2017)
//  Vaccine Type: (Typhoid (Conjugate))
//  Commercial Name: (Typbar-TCV)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Bharat Biotech International Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): c8a79556c41225d558dae1807a41b38f  
//

Instance: PreQualDBc8a79556c41225d558dae1807a41b38f  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2017-12-22
* vaccineType.coding.code = #TyphoidConjugate
* vaccineType.coding.display = "Typhoid (Conjugate)"
* commercialName = "Typbar-TCV"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Bharat Biotech International Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "c8a79556c41225d558dae1807a41b38f  "
* manufacturerReference = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(TyphoidConjugateProductc8a79556c41225d558dae1807a41b38f  ) 

Instance: TyphoidConjugateProductc8a79556c41225d558dae1807a41b38f  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Typbar-TCV"
* manufacturer = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) // Bharat Biotech International Limited
* doseQuantity =  1 'doses'
* classification = #TyphoidConjugate
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualc8a79556c41225d558dae1807a41b38f  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2017-12-22
* product  = Reference(TyphoidConjugateProductc8a79556c41225d558dae1807a41b38f  ) 

// Source Record Row //: 262
//  Date of Prequalification: (22/12/2017)
//  Vaccine Type: (Typhoid (Conjugate))
//  Commercial Name: (Typbar-TCV)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Bharat Biotech International Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 1bd8cf70f560d4ac1a937963c2fd44ba  
//

Instance: PreQualDB1bd8cf70f560d4ac1a937963c2fd44ba  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2017-12-22
* vaccineType.coding.code = #TyphoidConjugate
* vaccineType.coding.display = "Typhoid (Conjugate)"
* commercialName = "Typbar-TCV"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Bharat Biotech International Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "1bd8cf70f560d4ac1a937963c2fd44ba  "
* manufacturerReference = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(TyphoidConjugateProduct1bd8cf70f560d4ac1a937963c2fd44ba  ) 

Instance: TyphoidConjugateProduct1bd8cf70f560d4ac1a937963c2fd44ba  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Typbar-TCV"
* manufacturer = Reference(Manufacturer23f34f1a92ebdeb8c55ddd34c31ad564  ) // Bharat Biotech International Limited
* doseQuantity =  5 'doses'
* classification = #TyphoidConjugate
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual1bd8cf70f560d4ac1a937963c2fd44ba  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2017-12-22
* product  = Reference(TyphoidConjugateProduct1bd8cf70f560d4ac1a937963c2fd44ba  ) 

// Source Record Row //: 263
//  Date of Prequalification: (04/12/2020)
//  Vaccine Type: (Typhoid (Conjugate))
//  Commercial Name: (TYPHIBEV®)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 2ae65ee169c9a71896965301d90f4ee2  
//

Instance: PreQualDB2ae65ee169c9a71896965301d90f4ee2  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2020-12-04
* vaccineType.coding.code = #TyphoidConjugate
* vaccineType.coding.display = "Typhoid (Conjugate)"
* commercialName = "TYPHIBEV®"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "2ae65ee169c9a71896965301d90f4ee2  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(TyphoidConjugateProduct2ae65ee169c9a71896965301d90f4ee2  ) 

Instance: TyphoidConjugateProduct2ae65ee169c9a71896965301d90f4ee2  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "TYPHIBEV®"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  1 'doses'
* classification = #TyphoidConjugate
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual2ae65ee169c9a71896965301d90f4ee2  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2020-12-04
* product  = Reference(TyphoidConjugateProduct2ae65ee169c9a71896965301d90f4ee2  ) 

// Source Record Row //: 264
//  Date of Prequalification: (04/12/2020)
//  Vaccine Type: (Typhoid (Conjugate))
//  Commercial Name: (TYPHIBEV®)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Biological E. Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 888fc7936a47fcc7c2f59c465bb8e7ed  
//

Instance: PreQualDB888fc7936a47fcc7c2f59c465bb8e7ed  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2020-12-04
* vaccineType.coding.code = #TyphoidConjugate
* vaccineType.coding.display = "Typhoid (Conjugate)"
* commercialName = "TYPHIBEV®"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Biological E. Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "888fc7936a47fcc7c2f59c465bb8e7ed  "
* manufacturerReference = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(TyphoidConjugateProduct888fc7936a47fcc7c2f59c465bb8e7ed  ) 

Instance: TyphoidConjugateProduct888fc7936a47fcc7c2f59c465bb8e7ed  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "TYPHIBEV®"
* manufacturer = Reference(Manufacturer54a4cbdf74f251158fb034e8f5e1ff5b  ) // Biological E. Limited
* doseQuantity =  5 'doses'
* classification = #TyphoidConjugate
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual888fc7936a47fcc7c2f59c465bb8e7ed  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2020-12-04
* product  = Reference(TyphoidConjugateProduct888fc7936a47fcc7c2f59c465bb8e7ed  ) 

// Source Record Row //: 265
//  Date of Prequalification: (03/11/2022)
//  Vaccine Type: (Varicella)
//  Commercial Name: (Varicella Vaccine, Live)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Sinovac (Dalian) Vaccine Technology Co., Ltd.)
//  Responsible NRA: (National Medical Products Administration)
//  md5(ROW): 0997806769699913a3f450d32a1932b4  
//

Instance: PreQualDB0997806769699913a3f450d32a1932b4  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2022-11-03
* vaccineType.coding.code = #Varicella
* vaccineType.coding.display = "Varicella"
* commercialName = "Varicella Vaccine, Live"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Sinovac (Dalian) Vaccine Technology Co., Ltd."
* responsibleNRA.text = "National Medical Products Administration"
* index.value = "0997806769699913a3f450d32a1932b4  "
* manufacturerReference = Reference(Manufacturer8c96b2e988e99fecb160f675715f893a  ) 
* responsibleNRAReference = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* productReference = Reference(VaricellaProduct0997806769699913a3f450d32a1932b4  ) 

Instance: VaricellaProduct0997806769699913a3f450d32a1932b4  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Varicella Vaccine, Live"
* manufacturer = Reference(Manufacturer8c96b2e988e99fecb160f675715f893a  ) // Sinovac (Dalian) Vaccine Technology Co., Ltd.
* doseQuantity =  1 'doses'
* classification = #Varicella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual0997806769699913a3f450d32a1932b4  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* validityPeriod.start = 2022-11-03
* product  = Reference(VaricellaProduct0997806769699913a3f450d32a1932b4  ) 

// Source Record Row //: 266
//  Date of Prequalification: (09/02/2018)
//  Vaccine Type: (Varicella)
//  Commercial Name: (Varivax)
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (1)
//  Manufacturer: (Merck Sharp & Dohme LLC)
//  Responsible NRA: (CBER/FDA)
//  md5(ROW): 640db8992fe6d85bb1aed3872583dd5c  
//

Instance: PreQualDB640db8992fe6d85bb1aed3872583dd5c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2018-02-09
* vaccineType.coding.code = #Varicella
* vaccineType.coding.display = "Varicella"
* commercialName = "Varivax"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 1
* manufacturer.text = "Merck Sharp & Dohme LLC"
* responsibleNRA.text = "CBER/FDA"
* index.value = "640db8992fe6d85bb1aed3872583dd5c  "
* manufacturerReference = Reference(Manufacturer764b91fadf395103d4ce901372cc0882  ) 
* responsibleNRAReference = Reference(Holder9d7db6151eea8bf9048690e4b4504c90  ) // CBER/FDA
* productReference = Reference(VaricellaProduct640db8992fe6d85bb1aed3872583dd5c  ) 

Instance: VaricellaProduct640db8992fe6d85bb1aed3872583dd5c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Varivax"
* manufacturer = Reference(Manufacturer764b91fadf395103d4ce901372cc0882  ) // Merck Sharp & Dohme LLC
* doseQuantity =  1 'doses'
* classification = #Varicella
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient

Instance: PreQual640db8992fe6d85bb1aed3872583dd5c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder9d7db6151eea8bf9048690e4b4504c90  ) // CBER/FDA
* validityPeriod.start = 2018-02-09
* product  = Reference(VaricellaProduct640db8992fe6d85bb1aed3872583dd5c  ) 

// Source Record Row //: 267
//  Date of Prequalification: (30/06/2011)
//  Vaccine Type: (Influenza, seasonal (Trivalent))
//  Commercial Name: (Vaxigrip)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Sanofi Pasteur)
//  Responsible NRA: (Agence nationale de sécurité du médicament et des produits de santé)
//  md5(ROW): 60da9ef23c1068c0b6922abd7e25ff17  
//

Instance: PreQualDB60da9ef23c1068c0b6922abd7e25ff17  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2011-06-30
* vaccineType.coding.code = #InfluenzaseasonalTrivale
* vaccineType.coding.display = "Influenza, seasonal (Trivalent)"
* commercialName = "Vaxigrip"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Sanofi Pasteur"
* responsibleNRA.text = "Agence nationale de sécurité du médicament et des produits de santé"
* index.value = "60da9ef23c1068c0b6922abd7e25ff17  "
* manufacturerReference = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) 
* responsibleNRAReference = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* productReference = Reference(InfluenzaseasonalTrivaleProduct60da9ef23c1068c0b6922abd7e25ff17  ) 

Instance: InfluenzaseasonalTrivaleProduct60da9ef23c1068c0b6922abd7e25ff17  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Vaxigrip"
* manufacturer = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) // Sanofi Pasteur
* doseQuantity =  10 'doses'
* classification = #InfluenzaseasonalTrivale
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual60da9ef23c1068c0b6922abd7e25ff17  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* validityPeriod.start = 2011-06-30
* product  = Reference(InfluenzaseasonalTrivaleProduct60da9ef23c1068c0b6922abd7e25ff17  ) 

// Source Record Row //: 268
//  Date of Prequalification: (15/10/2020)
//  Vaccine Type: (Influenza, seasonal (Quadrivalent))
//  Commercial Name: (VaxigripTetra)
//  Presentation: (Vial)
//  No. of doses: (10)
//  Manufacturer: (Sanofi Pasteur)
//  Responsible NRA: (Agence nationale de sécurité du médicament et des produits de santé)
//  md5(ROW): a39febbd4fc1b31f1ea3e43bc91baea0  
//

Instance: PreQualDBa39febbd4fc1b31f1ea3e43bc91baea0  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2020-10-15
* vaccineType.coding.code = #InfluenzaseasonalQuadriv
* vaccineType.coding.display = "Influenza, seasonal (Quadrivalent)"
* commercialName = "VaxigripTetra"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 10
* manufacturer.text = "Sanofi Pasteur"
* responsibleNRA.text = "Agence nationale de sécurité du médicament et des produits de santé"
* index.value = "a39febbd4fc1b31f1ea3e43bc91baea0  "
* manufacturerReference = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) 
* responsibleNRAReference = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* productReference = Reference(InfluenzaseasonalQuadrivProducta39febbd4fc1b31f1ea3e43bc91baea0  ) 

Instance: InfluenzaseasonalQuadrivProducta39febbd4fc1b31f1ea3e43bc91baea0  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "VaxigripTetra"
* manufacturer = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) // Sanofi Pasteur
* doseQuantity =  10 'doses'
* classification = #InfluenzaseasonalQuadriv
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuala39febbd4fc1b31f1ea3e43bc91baea0  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* validityPeriod.start = 2020-10-15
* product  = Reference(InfluenzaseasonalQuadrivProducta39febbd4fc1b31f1ea3e43bc91baea0  ) 

// Source Record Row //: 269
//  Date of Prequalification: (06/02/2019)
//  Vaccine Type: (Rabies)
//  Commercial Name: (VaxiRab N)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Zydus Lifesciences Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): 3a0b2112f0d5e10d24b6063b5e91a025  
//

Instance: PreQualDB3a0b2112f0d5e10d24b6063b5e91a025  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2019-02-06
* vaccineType.coding.code = #Rabies
* vaccineType.coding.display = "Rabies"
* commercialName = "VaxiRab N"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Zydus Lifesciences Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "3a0b2112f0d5e10d24b6063b5e91a025  "
* manufacturerReference = Reference(Manufacturer71815e49a163acdd61581f32aa32c1b8  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(RabiesProduct3a0b2112f0d5e10d24b6063b5e91a025  ) 

Instance: RabiesProduct3a0b2112f0d5e10d24b6063b5e91a025  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "VaxiRab N"
* manufacturer = Reference(Manufacturer71815e49a163acdd61581f32aa32c1b8  ) // Zydus Lifesciences Limited
* doseQuantity =  1 'doses'
* classification = #Rabies
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual3a0b2112f0d5e10d24b6063b5e91a025  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2019-02-06
* product  = Reference(RabiesProduct3a0b2112f0d5e10d24b6063b5e91a025  ) 

// Source Record Row //: 270
//  Date of Prequalification: (22/06/2005)
//  Vaccine Type: (Rabies)
//  Commercial Name: (VERORAB)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Sanofi Pasteur)
//  Responsible NRA: (Agence nationale de sécurité du médicament et des produits de santé)
//  md5(ROW): e3f874e7b89ed3e777f03ede68bb6fe5  
//

Instance: PreQualDBe3f874e7b89ed3e777f03ede68bb6fe5  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2005-06-22
* vaccineType.coding.code = #Rabies
* vaccineType.coding.display = "Rabies"
* commercialName = "VERORAB"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Sanofi Pasteur"
* responsibleNRA.text = "Agence nationale de sécurité du médicament et des produits de santé"
* index.value = "e3f874e7b89ed3e777f03ede68bb6fe5  "
* manufacturerReference = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) 
* responsibleNRAReference = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* productReference = Reference(RabiesProducte3f874e7b89ed3e777f03ede68bb6fe5  ) 

Instance: RabiesProducte3f874e7b89ed3e777f03ede68bb6fe5  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "VERORAB"
* manufacturer = Reference(Manufacturere6f45c0f69a7b4cecd7421c4515ea3c5  ) // Sanofi Pasteur
* doseQuantity =  1 'doses'
* classification = #Rabies
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQuale3f874e7b89ed3e777f03ede68bb6fe5  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holdera1ed2fb3196a19ac1010392bdc5e8646  ) // Agence nationale de sécurité du médicament et des produits de santé
* validityPeriod.start = 2005-06-22
* product  = Reference(RabiesProducte3f874e7b89ed3e777f03ede68bb6fe5  ) 

// Source Record Row //: 271
//  Date of Prequalification: (02/08/2024)
//  Vaccine Type: (Human Papillomavirus (Bivalent))
//  Commercial Name: (Walrinvax®)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Yuxi Zerun Biotechnology Co., Ltd)
//  Responsible NRA: (National Medical Products Administration)
//  md5(ROW): 2ce0838fa87a21625f2bb12e269b26a2  
//

Instance: PreQualDB2ce0838fa87a21625f2bb12e269b26a2  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-08-02
* vaccineType.coding.code = #HumanPapillomavirusBival
* vaccineType.coding.display = "Human Papillomavirus (Bivalent)"
* commercialName = "Walrinvax®"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Yuxi Zerun Biotechnology Co., Ltd"
* responsibleNRA.text = "National Medical Products Administration"
* index.value = "2ce0838fa87a21625f2bb12e269b26a2  "
* manufacturerReference = Reference(Manufacturer04d9a670e03eceddfeaf6cf84699e754  ) 
* responsibleNRAReference = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* productReference = Reference(HumanPapillomavirusBivalProduct2ce0838fa87a21625f2bb12e269b26a2  ) 

Instance: HumanPapillomavirusBivalProduct2ce0838fa87a21625f2bb12e269b26a2  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Walrinvax®"
* manufacturer = Reference(Manufacturer04d9a670e03eceddfeaf6cf84699e754  ) // Yuxi Zerun Biotechnology Co., Ltd
* doseQuantity =  1 'doses'
* classification = #HumanPapillomavirusBival
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual2ce0838fa87a21625f2bb12e269b26a2  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder6f85b90926148cce1ad5a1fa8afe673a  ) // National Medical Products Administration
* validityPeriod.start = 2024-08-02
* product  = Reference(HumanPapillomavirusBivalProduct2ce0838fa87a21625f2bb12e269b26a2  ) 

// Source Record Row //: 272
//  Date of Prequalification: (17/10/2001)
//  Vaccine Type: (Yellow Fever)
//  Commercial Name: (Yellow Fever)
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (5)
//  Manufacturer: (Bio-Manguinhos/Fiocruz)
//  Responsible NRA: (Agencia Nacional da Vigilancia Sanitaria)
//  md5(ROW): ab01f006f8b24113f4a28cb50bfe6d9d  
//

Instance: PreQualDBab01f006f8b24113f4a28cb50bfe6d9d  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2001-10-17
* vaccineType.coding.code = #YellowFever
* vaccineType.coding.display = "Yellow Fever"
* commercialName = "Yellow Fever"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 5
* manufacturer.text = "Bio-Manguinhos/Fiocruz"
* responsibleNRA.text = "Agencia Nacional da Vigilancia Sanitaria"
* index.value = "ab01f006f8b24113f4a28cb50bfe6d9d  "
* manufacturerReference = Reference(Manufacturer2633085cce399745d9a840a0e7459e1a  ) 
* responsibleNRAReference = Reference(Holder18181d26c8e4df1d6fc819c02c55b8e6  ) // Agencia Nacional da Vigilancia Sanitaria
* productReference = Reference(YellowFeverProductab01f006f8b24113f4a28cb50bfe6d9d  ) 

Instance: YellowFeverProductab01f006f8b24113f4a28cb50bfe6d9d  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Yellow Fever"
* manufacturer = Reference(Manufacturer2633085cce399745d9a840a0e7459e1a  ) // Bio-Manguinhos/Fiocruz
* doseQuantity =  5 'doses'
* classification = #YellowFever
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient

Instance: PreQualab01f006f8b24113f4a28cb50bfe6d9d  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder18181d26c8e4df1d6fc819c02c55b8e6  ) // Agencia Nacional da Vigilancia Sanitaria
* validityPeriod.start = 2001-10-17
* product  = Reference(YellowFeverProductab01f006f8b24113f4a28cb50bfe6d9d  ) 

// Source Record Row //: 273
//  Date of Prequalification: (10/12/2007)
//  Vaccine Type: (Yellow Fever)
//  Commercial Name: (Yellow Fever)
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (10)
//  Manufacturer: (Bio-Manguinhos/Fiocruz)
//  Responsible NRA: (Agencia Nacional da Vigilancia Sanitaria)
//  md5(ROW): 5f0639d8e4d52afef089aa7148c5060c  
//

Instance: PreQualDB5f0639d8e4d52afef089aa7148c5060c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2007-12-10
* vaccineType.coding.code = #YellowFever
* vaccineType.coding.display = "Yellow Fever"
* commercialName = "Yellow Fever"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 10
* manufacturer.text = "Bio-Manguinhos/Fiocruz"
* responsibleNRA.text = "Agencia Nacional da Vigilancia Sanitaria"
* index.value = "5f0639d8e4d52afef089aa7148c5060c  "
* manufacturerReference = Reference(Manufacturer2633085cce399745d9a840a0e7459e1a  ) 
* responsibleNRAReference = Reference(Holder18181d26c8e4df1d6fc819c02c55b8e6  ) // Agencia Nacional da Vigilancia Sanitaria
* productReference = Reference(YellowFeverProduct5f0639d8e4d52afef089aa7148c5060c  ) 

Instance: YellowFeverProduct5f0639d8e4d52afef089aa7148c5060c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Yellow Fever"
* manufacturer = Reference(Manufacturer2633085cce399745d9a840a0e7459e1a  ) // Bio-Manguinhos/Fiocruz
* doseQuantity =  10 'doses'
* classification = #YellowFever
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient

Instance: PreQual5f0639d8e4d52afef089aa7148c5060c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder18181d26c8e4df1d6fc819c02c55b8e6  ) // Agencia Nacional da Vigilancia Sanitaria
* validityPeriod.start = 2007-12-10
* product  = Reference(YellowFeverProduct5f0639d8e4d52afef089aa7148c5060c  ) 

// Source Record Row //: 274
//  Date of Prequalification: (17/10/2001)
//  Vaccine Type: (Yellow Fever)
//  Commercial Name: (Yellow Fever)
//  Presentation: (Two vial set (active + excipient))
//  No. of doses: (50)
//  Manufacturer: (Bio-Manguinhos/Fiocruz)
//  Responsible NRA: (Agencia Nacional da Vigilancia Sanitaria)
//  md5(ROW): e0534dbc71a6cc09f56dce25216c538c  
//

Instance: PreQualDBe0534dbc71a6cc09f56dce25216c538c  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2001-10-17
* vaccineType.coding.code = #YellowFever
* vaccineType.coding.display = "Yellow Fever"
* commercialName = "Yellow Fever"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Twovialsetactiveexcipient
* presentation.coding.display = "Two vial set (active + excipient)"
* numDoses = 50
* manufacturer.text = "Bio-Manguinhos/Fiocruz"
* responsibleNRA.text = "Agencia Nacional da Vigilancia Sanitaria"
* index.value = "e0534dbc71a6cc09f56dce25216c538c  "
* manufacturerReference = Reference(Manufacturer2633085cce399745d9a840a0e7459e1a  ) 
* responsibleNRAReference = Reference(Holder18181d26c8e4df1d6fc819c02c55b8e6  ) // Agencia Nacional da Vigilancia Sanitaria
* productReference = Reference(YellowFeverProducte0534dbc71a6cc09f56dce25216c538c  ) 

Instance: YellowFeverProducte0534dbc71a6cc09f56dce25216c538c  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Yellow Fever"
* manufacturer = Reference(Manufacturer2633085cce399745d9a840a0e7459e1a  ) // Bio-Manguinhos/Fiocruz
* doseQuantity =  50 'doses'
* classification = #YellowFever
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Twovialsetactiveexcipient

Instance: PreQuale0534dbc71a6cc09f56dce25216c538c  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder18181d26c8e4df1d6fc819c02c55b8e6  ) // Agencia Nacional da Vigilancia Sanitaria
* validityPeriod.start = 2001-10-17
* product  = Reference(YellowFeverProducte0534dbc71a6cc09f56dce25216c538c  ) 

// Source Record Row //: 275
//  Date of Prequalification: (27/04/2021)
//  Vaccine Type: (Ebola vaccine (Ad26.ZEBOV-GP [recombinant]))
//  Commercial Name: (Zabdeno)
//  Presentation: (Vial)
//  No. of doses: (1)
//  Manufacturer: (Janssen Cilag International N.V.)
//  Responsible NRA: (European Medicines Agency)
//  md5(ROW): 72c1ff5266fc6bf3683b0076c250cbff  
//

Instance: PreQualDB72c1ff5266fc6bf3683b0076c250cbff  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2021-04-27
* vaccineType.coding.code = #EbolavaccineAd26ZEBOVGPr
* vaccineType.coding.display = "Ebola vaccine (Ad26.ZEBOV-GP [recombinant])"
* commercialName = "Zabdeno"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 1
* manufacturer.text = "Janssen Cilag International N.V."
* responsibleNRA.text = "European Medicines Agency"
* index.value = "72c1ff5266fc6bf3683b0076c250cbff  "
* manufacturerReference = Reference(Manufactureraca8ee84737803adc7e1b19a498b8fb9  ) 
* responsibleNRAReference = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* productReference = Reference(EbolavaccineAd26ZEBOVGPrProduct72c1ff5266fc6bf3683b0076c250cbff  ) 

Instance: EbolavaccineAd26ZEBOVGPrProduct72c1ff5266fc6bf3683b0076c250cbff  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "Zabdeno"
* manufacturer = Reference(Manufactureraca8ee84737803adc7e1b19a498b8fb9  ) // Janssen Cilag International N.V.
* doseQuantity =  1 'doses'
* classification = #EbolavaccineAd26ZEBOVGPr
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQual72c1ff5266fc6bf3683b0076c250cbff  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holder06fc63d243e39d8519007322a0fddc52  ) // European Medicines Agency
* validityPeriod.start = 2021-04-27
* product  = Reference(EbolavaccineAd26ZEBOVGPrProduct72c1ff5266fc6bf3683b0076c250cbff  ) 

// Source Record Row //: 276
//  Date of Prequalification: (21/10/2024)
//  Vaccine Type: (Typhoid (Conjugate))
//  Commercial Name: (ZyVac®)
//  Presentation: (Vial)
//  No. of doses: (5)
//  Manufacturer: (Zydus Lifesciences Limited)
//  Responsible NRA: (Central Drugs Standard Control Organization)
//  md5(ROW): aa2deeb320b1ef154bbde64ba6ce78fe  
//

Instance: PreQualDBaa2deeb320b1ef154bbde64ba6ce78fe  
InstanceOf: PreQualDBwithIds
* dateOfPrequal = 2024-10-21
* vaccineType.coding.code = #TyphoidConjugate
* vaccineType.coding.display = "Typhoid (Conjugate)"
* commercialName = "ZyVac®"
* presentation.coding.system = "https://extranet.who.int/prequal/vaccines/prequalified-vaccines"
* presentation.coding.code = #Vial
* presentation.coding.display = "Vial"
* numDoses = 5
* manufacturer.text = "Zydus Lifesciences Limited"
* responsibleNRA.text = "Central Drugs Standard Control Organization"
* index.value = "aa2deeb320b1ef154bbde64ba6ce78fe  "
* manufacturerReference = Reference(Manufacturer71815e49a163acdd61581f32aa32c1b8  ) 
* responsibleNRAReference = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* productReference = Reference(TyphoidConjugateProductaa2deeb320b1ef154bbde64ba6ce78fe  ) 

Instance: TyphoidConjugateProductaa2deeb320b1ef154bbde64ba6ce78fe  
InstanceOf: $Product
Usage: #example
* status = #active
* name
  * nameType = #official
  * value = "ZyVac®"
* manufacturer = Reference(Manufacturer71815e49a163acdd61581f32aa32c1b8  ) // Zydus Lifesciences Limited
* doseQuantity =  5 'doses'
* classification = #TyphoidConjugate
* unitOfUse.coding.code = #doses
* dosageForm.coding.code = #Vial

Instance: PreQualaa2deeb320b1ef154bbde64ba6ce78fe  
InstanceOf: $ProductAuthorization
Usage: #example
* status = #active
* type = #prequal
* jurisdiction.coding.display = "WHO"
* holder = Reference(Holderf79f23b4c5122fd96b2c87cc385157fc  ) // Central Drugs Standard Control Organization
* validityPeriod.start = 2024-10-21
* product  = Reference(TyphoidConjugateProductaa2deeb320b1ef154bbde64ba6ce78fe  ) 
