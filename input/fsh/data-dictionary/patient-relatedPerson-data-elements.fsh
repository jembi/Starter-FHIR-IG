/*Logical:      ExamplePatientRelationLogicalModel
Description: "
    Data elements for the person related to the patient.

    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active
* ^name = "ExamplePatientRelationLogicalModel"

* firstName 1..1 string "First name" "Person first name"
  * ^isSummary = true
* middleName 1..1 string "Middle name" "Person middle name"
  * ^isSummary = true
* relationshipType 1..1 Coding "Relationship type" "How is the person related to the patient"
  * ^isSummary = true
* relationshipType from http://terminology.hl7.org/ValueSet/v3-RoleCodee (preferred)
* maritalStatus 0..1 BackboneElement "Marital status" "Related person marital status"
  * ^isSummary = true
  * status 1..1 CodeableConcept "Status" "A marital status"
  * status from http://hl7.org/fhir/ValueSet/marital-status (extensible)
  * effectiveDate 1..1 date "Effective date" "Date when status came into effect"
* patientRelatedTo 1..1 Reference "Patient related to" "the patient who this person is related to"

Mapping:      ExamplePatientRelationLogicalModel-to-RelatedPerson
Source:       ExamplePatientRelationLogicalModel
Target:       "RelatedPerson"
* -> "RelatedPerson"
* firstName -> "RelatedPerson.name.given"
* middleName -> "RelatedPerson.name.given"
* relationshipType -> "RelatedPerson.relationship"
* maritalStatus -> "RelatedPerson.extension"
* maritalStatus.status -> "RelatedPerson.extension.extension"
* maritalStatus.effectiveDate -> "RelatedPerson.extension.extension"
* patientRelatedTo -> "RelatedPerson.patient"*/