Profile: TestPatient
Parent: Patient
Id: test-patient
Title: "Patient"
Description: "A patient profile representing the patient exchange requirements in the Logical Model \"ExampleLogicalModel\".

    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active

* insert SliceForResolve(meta.profile, reasons why this should be supported, open, Slicing meta based on the profile value, false)
* meta.profile contains
    LogicalModel 0..1 MS

* meta.profile[LogicalModel] ^definition =
    "reason(s) why this should be supported."
* meta.profile[LogicalModel].value = "http://example.com/fhir/StructureDefinition/ExampleLogicalModel"

* name 1..* MS
  * ^definition = "Patient name. Maps to ExampleLogicalModel.patient.name"
  * ^short = "Name"
* name.given 1..2
* maritalStatus 0..1 MS
  * SU // to ensure that the ALL data elements (incl. the below extension) within maritalStatus are included in GET requests.
  * extension contains MaritalStatusDateExtension named MaritalStatusDate 1..1

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