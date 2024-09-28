Profile: TestPatient
Parent: Patient
Id: test-patient
Title: "Patient"
Description: "A patient profile representing the patient exchange requirements in the Logical Model \"Patient Logical Model\".

    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active

* extension contains LogicalModelReferenceExtension named LogicalModel 1..1
* extension[LogicalModel].valueReference = Reference(PatientLogicalModel)

* name 1..*
* name.given 1..2

* insert Slice(name.given, reasons why this should be supported, value, id, open, Slicing name.given based on id, false)

* name.given contains
  firstName 1..1 MS and
  middleName 0..1 MS

* name.given[firstName]
  * id 1..1
  * id = "patientFirstName"

* name.given[middleName] ^definition =
    "Represents a data element described as a requirement in the logical model"
  * id 1..1
  * id = "patientMiddleName"
  
* maritalStatus 0..1 MS
  * SU // to ensure that the ALL data elements (incl. the below extension) within maritalStatus are included in GET requests.

  * extension contains MaritalStatusDateExtension named EffectiveDate 1..1

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