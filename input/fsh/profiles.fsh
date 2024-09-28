Profile: TestPatient
Parent: Patient
Id: test-patient
Title: "Patient"
Description: "A patient profile representing the patient exchange requirements in the Logical Model \"Patient Logical Model\".
This profile aims to instantiate the logical model identified in Patient.extension:LogicalModel.
Refer to the Mappings tab to see the data element associations between this profile and the Logical Model.

    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active

* ^mapping[+].identity = "PatientLogicalModel"
* ^mapping[=].name = "Patient Logical Model"

* extension contains LogicalModelReferenceExtension named LogicalModel 1..1
* extension[LogicalModel].valueReference = Reference(PatientLogicalModel)

* name 1..*
  * ^mapping[+].identity = "PatientLogicalModel"
  * ^mapping[=].map = "PatientLogicalModel.name"
* name.given 1..2

* insert Slice(name.given, reasons why this should be supported, value, id, open, Slicing name.given based on id, false)

* name.given contains
  firstName 1..1 MS and
  middleName 0..1 MS

* name.given[firstName]
  * id 1..1
  * id = "patientFirstName"
  * ^mapping[+].identity = "PatientLogicalModel"
  * ^mapping[=].map = "PatientLogicalModel.name.firstName"

* name.given[middleName]
  * id 1..1
  * id = "patientMiddleName"
  * ^mapping[+].identity = "PatientLogicalModel"
  * ^mapping[=].map = "PatientLogicalModel.name.middleName"
  
* maritalStatus 0..1 MS
  * SU // to ensure that the ALL data elements (incl. the below extension) within maritalStatus are included in GET requests.
  * ^mapping[+].identity = "PatientLogicalModel"
  * ^mapping[=].map = "PatientLogicalModel.maritalStatus"

  * extension contains MaritalStatusDateExtension named EffectiveDate 1..1
  * extension[EffectiveDate]
    * ^mapping[+].identity = "PatientLogicalModel"
    * ^mapping[=].map = "PatientLogicalModel.maritalStatus.effectiveDate"

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