Logical: ExamplePatientLogicalModel
Id: ExamplePatientLogicalModel
Parent: Element
Description: "Exchange requirements example for the Patient Resource.

    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active
* ^name = "ExampleLogicalModel"

* patientName 1..* BackboneElement "Name" "Patient name"
  * firstName 1..1 string "First name" "Patient first name"
  * middleName 0..1 string "Middle name" "Patient middle name"
* patientMaritalStatus 0..1 BackboneElement "Marital status" "Patient marital status"
  * ^isSummary = true
  * ^mustSupport = true
  * status 1..1 CodeableConcept "Status" "A marital status"
  * status from http://hl7.org/fhir/ValueSet/marital-status (extensible)
  * effectiveDate 1..1 date "Effective date" "Date when status came into effect"

Mapping: ExampleLogicalModel-to-Patient
Source: ExamplePatientLogicalModel
Target: "Patient"
* -> "Patient"
* patientName -> "Patient.name"
* patientName.firstName -> "Patient.name.given"
* patientName.middleName -> "Patient.name.given"
* patientMaritalStatus.status -> "Patient.maritalStatus"
* patientMaritalStatus.effectiveDate -> "Patient.maritalStatus.extension"

Logical: ExampleRelatedPersonLogicalModel
Id: ExampleRelatedPersonLogicalModel
Parent: Element
Description: "Exchange requirements example for the RelatedPerson Resource.

    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active
* ^name = "ExampleLogicalModel"

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

Mapping: ExampleLogicalModel-to-RelatedPerson
Source: ExampleRelatedPersonLogicalModel
Target: "RelatedPerson"
* -> "RelatedPerson"
* name -> "RelatedPerson.name"
* name.firstName -> "RelatedPerson.name.given"
* name.middleName -> "RelatedPerson.name.given"
* relationshipType -> "RelatedPerson.relationship"
* maritalStatus -> "RelatedPerson.extension"
* maritalStatus.status -> "RelatedPerson.extension.extension"
* maritalStatus.effectiveDate -> "RelatedPerson.extension.extension"