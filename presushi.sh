#!/bin/bash
set -e




#  1:Date of Prequalification -> VDATE
#  2:Vaccine Type -> VAX, VAXTYPE
#  3:Commercial Name -> COMMERCIALNAME
#  4:Presentation -> PRESENTATION, PRESENTATIONCODE
#  5:No. of doses -> $5
#  6:Manufacturer -> MANUFACTURER, 
#  7:Responsible NRA  -> RESPONSIBLENRA




mkdir -p input/fsh/codesystems
mkdir -p input/fsh/examples
mkdir -p input/fsh/valuesets

#generate presentations


echo "Alias: \$presentation = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualPresentation
CodeSystem: PreQualPresentation
Title : \"WHO PreQualificaiton Vaccine Presentations\"
Description: \"WHO PreQualificaiton Vaccine Presentations\"

" >  input/fsh/codesystems/prequal_presentation.fsh

awk -vFPAT='([^,]*)|("[^"]+")' -vOFS=, '

  NR>1  {
    print gensub(/"/, "", "g" , $4)
  }' data/prequalified_vaccines.csv | \
    sort | \
    uniq | \
    awk  '{
    CMD="echo \""$0"\" | sed '\''s/[^[:alpha:]]//g'\''"
    CMD|getline CODE
    close(CMD)
    print "* #"CODE" \""$0"\""

}' >>  input/fsh/codesystems/prequal_presentation.fsh


echo "Alias: \$preQualPresentation = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualPresentation
ValueSet: PreQualPresentation
Title : \"WHO PreQualificaiton Presentation \"
Description: \"WHO PreQualificaiton Presentation\"


* include codes from system \$preQualPresentation

" >  input/fsh/valuesets/prequal_presentation.fsh

#generate vaccine type
echo "Alias: \$vaccinetype = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType
CodeSystem: PreQualVaccineType
Title : \"WHO PreQualificaiton Vaccine VaccineTypes\"
Description: \"WHO PreQualificaiton Vaccine VaccineTypes\"

" >  input/fsh/codesystems/preQualVaccineTypes.fsh

awk -vFPAT='([^,]*)|("[^"]+")' -vOFS=, '

  NR>1  {
    print gensub(/"/, "", "g" , $2)
  }' data/prequalified_vaccines.csv | \
    sort | \
    uniq | \
    awk  '{
    CMD="echo \""$0"\" | sed '\''s/[^[:alnum:]]//g'\''"
    CMD|getline CODE
    close(CMD)
    print "* #"CODE" \""$0"\""

}' >>  input/fsh/codesystems/preQualVaccineTypes.fsh


echo "Alias: \$preQualVaccineType = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualVaccineType
ValueSet: PreQualVaccineType
Title : \"WHO PreQualificaiton VaccineType \"
Description: \"WHO PreQualificaiton VaccineType\"


* include codes from system \$preQualVaccineType

" >  input/fsh/valuesets/PreQualVacccineTypes.fsh

#generate manufacturers




echo "Alias: \$orgType = http://terminology.hl7.org/CodeSystem/organization-type" >  input/fsh/examples/prequal_database_manufacturers.fsh

awk -vFPAT='([^,]*)|("[^"]+")' -vOFS=, '

  NR>1  {
    print gensub(/"/, "", "g" , $6)
  }' data/prequalified_vaccines.csv | \
    sort | \
    uniq | \
    awk  '{

  CMD="echo \""$0"\" | md5sum | sed '\''s/[\\s\\-]*//g'\''"
  CMD|getline MD5
  close(CMD)
  print ""
  print "Instance: Manufacturer"MD5
  print "InstanceOf: IHE.mCSD.Organization"
  print "Usage: #example"
  print "* active = true"
  print "* name = \""$0"\""
  print "* type = $orgType#other"

}' >>  input/fsh/examples/prequal_database_manufacturers.fsh


#generate prequal holder 
echo "Alias: \$orgType = http://terminology.hl7.org/CodeSystem/organization-type" >  input/fsh/examples/prequal_database_holders.fsh
awk -vFPAT='([^,]*)|("[^"]+")' -vOFS=, 'NR>1  {
    print gensub(/"/, "", "g" , $7)
}' data/prequalified_vaccines.csv | \
    sort | \
    uniq | \
    awk '{


  CMD="echo \""$0"\" | md5sum | sed '\''s/[\\s\\-]*//g'\''"
  CMD|getline MD5
  close(CMD)
  print ""
  print "Instance: Holder"MD5
  print "InstanceOf: IHE.mCSD.Organization"
  print "Usage: #example"
  print "* active = true"
  print "* name = \""$0"\""
  print "* type = $orgType#govt"
}' >>  input/fsh/examples/prequal_database_holders.fsh



mkdir -p input/fsh/codesystems
mkdir -p input/fsh/valuesets
if [  -f input/fsh/codesystems/prequal_database_products.fsh ]; then
    rm input/fsh/codesystems/prequal_database_products.fsh
fi

# generate Products and ProductAuthorizations
awk -vFPAT='([^,]*)|("[^"]+")' -vOFS=, '
NR > 1{


  VAX=gensub(/"/, "", "g" , $2)

  CMD="echo \""VAX"\" | sed '\''s/[^[:alnum:]]//g'\''"
  CMD|getline VAXTYPESRC
  close(CMD)
  VAXTYPE=substr(VAXTYPESRC,1,24)

  PRESENTATION=gensub(/"/, "", "g" , $4)
  CMD="echo \""PRESENTATION"\" | sed '\''s/[^[:alnum:]]//g'\''"
  CMD|getline PRESENTATIONCODE
  close(CMD)


  # change dd/mm/yyyy 2/3/2015 to yyyy/mm/dd 2015/3/2
  VDATE = gensub(/^([0-9]{1,2})\/([0-9]{1,2})\/([0-9]{4})/,"\\3-\\2-\\1","g",$1)

  MANUFACTURER=gensub(/"/, "", "g" , $6)
  CMD="echo \""MANUFACTURER"\" | md5sum | sed '\''s/[\\s\\-]*//g'\''"
  CMD|getline MD5MANUFACTURER
  close(CMD)

  HOLDER=gensub(/"/, "", "g" , $7)
  CMD="echo \""HOLDER"\" | md5sum | sed '\''s/[\\s\\-]*//g'\''"
  CMD|getline MD5HOLDER
  close(CMD)

  COMMERCIALNAME=gensub(/"/, "", "g" , $3)



#  1:Date of Prequalification -> VDATE (in FHIR dateTime format)
#  2:Vaccine Type -> VAX, VAXTYPE
#  3:Commercial Name -> COMMERCIALNAME
#  4:Presentation -> PRESENTATION, PRESENTATIONCODE
#  5:No. of doses -> $5
#  6:Manufacturer -> MANUFACTURER, MD5MANUFACTURER
#  7:Responsible NRA  -> HOLDER, MD5HOLDER

  MD5SRC=gensub(/"/, "", "g", $1) VAX COMMERCIALNAME PRESENTATION $5 MANUFACTURER HOLDER
  STRIPPED=gensub(/"/, "", "g" , MD5SRC)
  CMD="echo \""MD5SRC"\" | md5sum | sed '\''s/[\\s\\-]*//g'\''"
  CMD|getline MD5
  close(CMD)

  PRODID=VAXTYPE"Product"MD5

  print ""
  print "// Source Record Row //: " NR
  print "//  Date of Prequalification: ("$1")"
  print "//  Vaccine Type: ("VAX")"
  print "//  Commercial Name: ("COMMERCIALNAME")"
  print "//  Presentation: ("PRESENTATION")"
  print "//  No. of doses: ("$5")"
  print "//  Manufacturer: ("MANUFACTURER")"
  print "//  Responsible NRA: ("HOLDER")"
  print "//  md5(ROW): " MD5
  print "//"
  print ""
  print "Instance: PreQualDB"MD5
  print "InstanceOf: PreQualDBwithIds"
  print "* dateOfPrequal = "VDATE
  print "* vaccineType.coding.code = #"VAXTYPE
  print "* vaccineType.coding.display = \""VAX"\"" 
  print "* commercialName = \""COMMERCIALNAME"\""
  print "* presentation.coding.system = \"https://extranet.who.int/prequal/vaccines/prequalified-vaccines\""
  print "* presentation.coding.code = #"PRESENTATIONCODE
  print "* presentation.coding.display = \""PRESENTATION"\""
  if ( $5 ) {
    print "* numDoses = "$5
  }   
  print "* manufacturer.text = \""MANUFACTURER"\""
  print "* responsibleNRA.text = \""HOLDER"\""
  print "* index.value = \""MD5"\""
  print "* manufacturerReference = Reference(Manufacturer"MD5MANUFACTURER") "
  print "* responsibleNRAReference = Reference(Holder"MD5HOLDER") // "HOLDER
  print "* productReference = Reference("PRODID") " 
  print ""    
  print "Instance: "PRODID
  print "InstanceOf: $Product"
  print "Usage: #example"
  print "* status = #active"
  print "* name"
  print "  * nameType = #official"
  print "  * value = \""   COMMERCIALNAME  "\""
  print "* manufacturer = Reference(Manufacturer"MD5MANUFACTURER") // "MANUFACTURER
  if ( $5 ) {
    print "* doseQuantity =  " $5  " '\''doses'\''"
  }   
  print "* classification = #"VAXTYPE 
  print "* unitOfUse.coding.code = #doses"
  print "* dosageForm.coding.code = #"PRESENTATIONCODE
  print ""
  print "Instance: PreQual" MD5
  print "InstanceOf: $ProductAuthorization"
  print "Usage: #example"
  print "* status = #active"
  print "* type = #prequal"
  print "* jurisdiction.coding.display = \"WHO\""
  print "* holder = Reference(Holder"MD5HOLDER") // "HOLDER
  print "* validityPeriod.start = "VDATE
  print "* product  = Reference("PRODID") " 

}' data/prequalified_vaccines.csv >  input/fsh/examples/prequal_database_products.fsh




echo "Alias: \$PreQualProductIds = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualProductIds
CodeSystem: PreQualProductIds
Title : \"WHO PreQualificaiton Vaccine Product Ids\"
Description: \"WHO PreQualificaiton Vaccine Product Ids\"
* ^experimental = true
* ^caseSensitive = false
* ^name = \"PreQualProductIds\"
* ^status = #active


" > input/fsh/codesystems/prequal_database_products_identifiers.fsh

echo "
Alias: \$PreQualProductIds = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualProductIds
ValueSet: PreQualProductIds
Title : \"WHO PreQualificaiton Vaccine Product Ids\" 
Description: \"WHO PreQualificaiton Vaccine Product Ids\"
* include codes from system \$PreQualProductIds
" > input/fsh/valuesets/prequal_database_products_identifiers.fsh




# generate Products and ProductAuthorizations
awk -vFPAT='([^,]*)|("[^"]+")' -vOFS=, '
NR > 1{

#  1:Date of Prequalification -> VDATE (in FHIR dateTime format)
#  2:Vaccine Type -> VAX, VAXTYPE
#  3:Commercial Name -> COMMERCIALNAME
#  4:Presentation -> PRESENTATION, PRESENTATIONCODE
#  5:No. of doses -> $5
#  6:Manufacturer -> MANUFACTURER, MD5MANUFACTURER
#  7:Responsible NRA  -> HOLDER, MD5HOLDER

  VAX=gensub(/"/, "", "g" , $2)
  PRESENTATION=gensub(/"/, "", "g" , $4)

  # change dd/mm/yyyy 2/3/2015 to yyyy/mm/dd 2015/3/2
  VDATE = gensub(/^([0-9]{1,2})\/([0-9]{1,2})\/([0-9]{4})/,"\\3-\\2-\\1","g",$1)

  MANUFACTURER=gensub(/"/, "", "g" , $6)

  HOLDER=gensub(/"/, "", "g" , $7)

  COMMERCIALNAME=gensub(/"/, "", "g" , $3)


  MD5SRC=gensub(/"/, "", "g", $1) VAX COMMERCIALNAME PRESENTATION $5 MANUFACTURER HOLDER
  STRIPPED=gensub(/"/, "", "g" , MD5SRC)
  CMD="echo \""MD5SRC"\" | md5sum | sed '\''s/[\\s\\-]*//g'\''"
  CMD|getline MD5
  close(CMD)

  print "* #" MD5 "\"" MD5SRC"\""


}' data/prequalified_vaccines.csv >>  input/fsh/codesystems/prequal_database_products_identifiers.fsh


echo whaley well done in rolling up the sushi!


