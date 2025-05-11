Instance: HIVConceptsConceptMap
InstanceOf: ConceptMap
Title: "ConceptMap to and from the HIVConcepts CodeSystem"
Description: "Mapping to and from the HIVConcepts CodeSystem."
Usage: #definition

* name = "HIVConceptsConceptMap"
* description = "Mapping to and from the HIVConcepts CodeSystem."
* title = "ConceptMap to and from the HIVConcepts CodeSystem"
* status = #active
* experimental = true
* date = "2025-05-11"

* group[+]
  * source = $HIVConcepts
  * target = $AdministrativeGender
  * insert ElementMap(HIV.A.DE20, male, equivalent)
  * insert ElementMap(HIV.A.DE19, female, equivalent)
  * insert ElementMap(HIV.A.DE23, other, equivalent)

* group[+]
  * source = $AdministrativeGender
  * target = $HIVConcepts
  * insert ElementMap(male, HIV.A.DE20, equivalent)
  * insert ElementMap(female, HIV.A.DE19, equivalent)
  * insert ElementMap(other, HIV.A.DE23, equivalent)