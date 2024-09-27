Profile: TestPatient
Parent: Patient
Id: test-patient
Title: "Patient"
Description: "A patient profile representing the patient exchange requirements in the Logical Model \"Patient Logical Model\".

    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active

* extension contains LogicalModelCanonicalExtension named LogicalModelCanonical 0..1 MS
* extension[LogicalModelCanonical] 1..1
* extension[LogicalModelCanonical].valueCanonical = "http://example.com/fhir/StructureDefinition/PatientLogicalModel"

* name 1..* MS
  * extension contains MapProfileToLogicalModelExtension named Mapping 0..1 MS
  * extension[Mapping] 1..1
  * extension[Mapping].valueString = "PatientLogicalModel.name"
 
* name.given 1..2

* insert Slice(name.given, reasons why this should be supported, value, id, open, Slicing name.given based on id, false)

* name.given contains
  firstName 1..1 MS and
  middleName 0..1 MS

* name.given[firstName]
  * id 1..1
  * id = "patientFirstName"
  * extension contains MapProfileToLogicalModelExtension named Mapping 0..1 MS
  * extension[Mapping] 1..1
  * extension[Mapping].valueString = "PatientLogicalModel.name.firstName"

* name.given[middleName] ^definition =
    "Represents a data element described as a requirement in the logical model"
  * id 1..1
  * id = "patientMiddleName"
  * extension contains MapProfileToLogicalModelExtension named Mapping 0..1 MS
  * extension[Mapping] 1..1
  * extension[Mapping].valueString = "PatientLogicalModel.name.middleName"
  
* maritalStatus 0..1 MS
  * SU // to ensure that the ALL data elements (incl. the below extension) within maritalStatus are included in GET requests.
  * extension contains MapProfileToLogicalModelExtension named Mapping 0..1 MS
  * extension[Mapping] 1..1
  * extension[Mapping].valueString = "PatientLogicalModel.maritalStatus.status"

  * extension contains MaritalStatusEffectiveDateWithMappingExtension named MaritalStatus 1..1

* link 0..* MS
* link.other only Reference(TestPatientRelation)

Profile: TestPatientRelation
Parent: RelatedPerson
Id: test-patient-relationship
Title: "Related Person"
Description: "Patient Relation.

    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active
* name 1..*
* name.given 1..2
* relationship 1..1
* extension contains MaritalStatusAndEffectiveDateExtension named MaritalStatusAndEffectiveDate 0..1 MS