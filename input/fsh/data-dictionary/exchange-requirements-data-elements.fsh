Logical: PatientLogicalModel
Id: PatientLogicalModel
Parent: Element
Title: "Patient Logical Model"
Description: "Exchange requirements example for the Patient Resource."

* ^experimental = true
* ^status = #active
* ^name = "PatientLogicalModel"

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
* relatedPerson 0..1 Reference "Related person" "Someone related to the patient"
  * ^isSummary = true
  * ^mustSupport = true
* relatedPerson = Reference(http://jembi.org/fhir/StructureDefinition/RelatedPersonLogicalModel)

Mapping: PatientLogicalModel-to-Patient
Source: PatientLogicalModel
Target: "Patient"
* -> "Patient"
* name -> "Patient.name"
* name.firstName -> "Patient.name.given"
* name.middleName -> "Patient.name.given"
* maritalStatus.status -> "Patient.maritalStatus"
* maritalStatus.effectiveDate -> "Patient.maritalStatus.extension"
* relatedPerson -> "Patient.link.other"

Logical: RelatedPersonLogicalModel
Id: RelatedPersonLogicalModel
Parent: Element
Title: "Related Person Logical Model"
Description: "Exchange requirements example for the RelatedPerson Resource."

* ^experimental = true
* ^status = #active
* ^name = "RelatedPersonLogicalModel"

* name 1..* BackboneElement "Name" "Patient name"
  * ^isSummary = true
  * ^mustSupport = true
  * firstName 1..1 string "First name" "Person first name"
  * middleName 0..1 string "Middle name" "Person middle name"
* relationship 0..1 BackboneElement "Relationship" "Person relationship with the patient"
  * ^isSummary = true
  * ^mustSupport = true
  * relationshipType 1..1 Coding "Relationship type" "How is the person related to the patient"
  * relationshipType from http://terminology.hl7.org/ValueSet/v3-RoleCode (preferred)
  * patientRelatedTo 1..1 Reference "Patient related to" "The patient who is the target of the relationship"
  * patientRelatedTo = Reference(http://jembi.org/fhir/StructureDefinition/PatientLogicalModel)
* maritalStatus 0..1 BackboneElement "Marital status" "Related person marital status"
  * ^isSummary = true
  * ^mustSupport = true
  * status 1..1 CodeableConcept "Status" "A marital status"
  * status from http://hl7.org/fhir/ValueSet/marital-status (extensible)
  * effectiveDate 1..1 date "Effective date" "Date when status came into effect"

Mapping: RelatedPersonLogicalModel-to-RelatedPerson
Source: RelatedPersonLogicalModel
Target: "RelatedPerson"
* -> "RelatedPerson"
* name -> "RelatedPerson.name"
* name.firstName -> "RelatedPerson.name.given"
* name.middleName -> "RelatedPerson.name.given"
* relationship.relationshipType -> "RelatedPerson.relationship"
* relationship.patientRelatedTo -> "RelatedPerson.patient"
* maritalStatus -> "RelatedPerson.extension"
* maritalStatus.status -> "RelatedPerson.extension.extension"
* maritalStatus.effectiveDate -> "RelatedPerson.extension.extension"