Logical: PatientLogicalModel
Id: PatientLogicalModel
Parent: Base
Title: "Patient Logical Model"
Description: "Exchange requirements example for the Patient Resource."

* ^experimental = true
* ^status = #active
* ^name = "PatientLogicalModel"

* name 1..* BackboneElement "Name" "Patient name"
  * ^isSummary = true
  //* ^mustSupport = true
  * firstName 1..1 string "First name" "Patient first name"
  * middleName 0..1 string "Middle name" "Patient middle name"
* maritalStatus 0..1 BackboneElement "Marital status" "Patient marital status"
  * ^isSummary = true
  //* ^mustSupport = true
  * status 1..1 CodeableConcept "Status" "A marital status"
  * status from http://hl7.org/fhir/ValueSet/marital-status (extensible)
  * effectiveDate 1..1 date "Effective date" "Date when status came into effect"
* relatedPerson 0..1 http://jembi.org/fhir/StructureDefinition/RelatedPersonLogicalModel "Related person" "Someone related to the patient"
  * ^isSummary = true
  //* ^mustSupport = true

Mapping: PatientLogicalModel-to-Patient
Source: PatientLogicalModel
Id: patientLm-fhir-patient
Target: "Patient"
Title: "PatientLogicalModel to Patient Mapping"
* -> "Patient"
* name -> "Patient.name"
* name.firstName -> "Patient.name.given"
* name.middleName -> "Patient.name.given"
* maritalStatus.status -> "Patient.maritalStatus"
* maritalStatus.effectiveDate -> "Patient.maritalStatus.extension"
* relatedPerson -> "Patient.link.other"

Logical: RelatedPersonLogicalModel
Id: RelatedPersonLogicalModel
Parent: Base
Title: "Related Person Logical Model"
Description: "Exchange requirements example for the RelatedPerson Resource."

* ^experimental = true
* ^status = #active
* ^name = "RelatedPersonLogicalModel"

* name 1..* BackboneElement "Name" "Patient name"
  * ^isSummary = true
  //* ^mustSupport = true
  * firstName 1..1 string "First name" "Person first name"
  * middleName 0..1 string "Middle name" "Person middle name"
* relationshipType 1..1 CodeableConcept "Relationship type" "How is the person related to the patient"
  * ^isSummary = true
  //* ^mustSupport = true
* relationshipType from http://terminology.hl7.org/ValueSet/v3-RoleCode (preferred)
* maritalStatus 0..1 BackboneElement "Marital status" "Related person marital status"
  * ^isSummary = true
  //* ^mustSupport = true
  * status 1..1 CodeableConcept "Status" "A marital status"
  * status from http://hl7.org/fhir/ValueSet/marital-status (extensible)
  * effectiveDate 1..1 date "Effective date" "Date when status came into effect"

Mapping: RelatedPersonLogicalModel-to-RelatedPerson
Source: RelatedPersonLogicalModel
Id: relatedPersonLm-fhir-relatedPerson
Target: "RelatedPerson"
Title: "RelatedPersonLogicalModel to RelatedPerson Mapping"
* -> "RelatedPerson"
* name -> "RelatedPerson.name"
* name.firstName -> "RelatedPerson.name.given"
* name.middleName -> "RelatedPerson.name.given"
* relationshipType -> "RelatedPerson.relationship"
* maritalStatus -> "RelatedPerson.extension"
* maritalStatus.status -> "RelatedPerson.extension.extension"
* maritalStatus.effectiveDate -> "RelatedPerson.extension.extension"