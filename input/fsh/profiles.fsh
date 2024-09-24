Profile: TestPatient
Parent: Patient
Id: test-patient
Title: "Patient"
Description: "
    Test Patient.

    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #draft
* name 1..*
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
Description: "
    Patient Relation.

    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #draft
* name 1..*
* name.given 1..*
* relationship 1..1
* extension contains MaritalStatusAndEffectiveDateExtension named MaritalStatusAndEffectiveDate 0..* MS