Logical: ExampleLogicalModel
Id: ExampleLogicalModel
Parent: Element
Description: "
    Exchange requirements example.

    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active
* ^name = "ExampleLogicalModel"

* name 1..* BackboneElement "Name" "Patient name"
  * ^isSummary = true
  * ^mustSupport = true
  * firstName 1..1 string "First name" "Patient first name"
  * middleName 0..1 string "Middle name" "Patient middle name"
* maritalStatus 0..1 BackboneElement "Marital status" "Patient marital status"
  * ^isSummary = true
  * ^mustSupport = true
  * status 1..1 CodeableConcept "Status" "A marital status"
  * status from http://hl7.org/fhir/ValueSet/marital-status (extensible)
  * effectiveDate 1..1 date "Effective date" "Date when status came into effect"
* personRelation 0..* BackboneElement "Person related to patient" "Person who is related to the patient"
  * ^isSummary = true
  * ^mustSupport = true
  * name 1..* BackboneElement "Name" "Patient name"
    * firstName 1..1 string "First name" "Person first name"
    * middleName 1..1 string "Middle name" "Person middle name"
  * relationshipType 1..1 Coding "Relationship type" "How is the person related to the patient"
  * relationshipType from http://terminology.hl7.org/ValueSet/v3-RoleCode (preferred)
  * maritalStatus 0..1 BackboneElement "Marital status" "Related person marital status"
    * ^isSummary = true
    * ^mustSupport = true
    * status 1..1 CodeableConcept "Status" "A marital status"
    * status from http://hl7.org/fhir/ValueSet/marital-status (extensible)
    * effectiveDate 1..1 date "Effective date" "Date when status came into effect"

Mapping: ExampleLogicalModel-to-Patient
Source: ExampleLogicalModel
Target: "Patient"
* -> "Patient"
* name -> "Patient.name"
* name.firstName -> "Patient.name.given"
* name.middleName -> "Patient.name.given"
* maritalStatus.status -> "Patient.maritalStatus"
* maritalStatus.effectiveDate -> "Patient.maritalStatus.extension"

Mapping: ExampleLogicalModel-to-RelatedPerson
Source: ExampleLogicalModel
Target: "RelatedPerson"
* -> "RelatedPerson"
* personRelation.name -> "RelatedPerson.name"
* personRelation.name.firstName -> "RelatedPerson.name.given"
* personRelation.name.middleName -> "RelatedPerson.name.given"
* personRelation.relationshipType -> "RelatedPerson.relationship"
* personRelation.maritalStatus -> "RelatedPerson.extension"
* personRelation.maritalStatus.status -> "RelatedPerson.extension.extension"
* personRelation.maritalStatus.effectiveDate -> "RelatedPerson.extension.extension"