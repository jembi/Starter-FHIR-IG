Instance: LOINCCodesToProprietary
InstanceOf: ConceptMap
Title: "ConceptMap to and from LOINC to Proprietary"
Description: "Mapping to and from proprietary concepts to LOINC."
Usage: #definition

* name = "LOINCCodesToProprietary"
* description = "Mapping to and from proprietary concepts to LOINC."
* title = "ConceptMap to and from LOINC to Proprietary"
* status = #active
* experimental = true
* date = "2024-08-30"

* group[+]
  * source = $YesNoCodeSystem
  * target = $LNC
  * insert ElementMap(true, LA29252-6, equivalent)
  * insert ElementMap(false, LA29253-4, equivalent)

* group[+]
  * source = $LNC
  * target = $YesNoCodeSystem
  * insert ElementMap(LA29252-6, true, equivalent)
  * insert ElementMap(LA29253-4, false, equivalent)