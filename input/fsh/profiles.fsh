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
* ^mapping[=].uri = "http://example.com/fhir/StructureDefinition/PatientLogicalModel"

* extension contains LogicalModelReferenceExtension named LogicalModel 1..1
* extension[LogicalModel].valueReference = Reference(PatientLogicalModel)

* name 1..*
  * insert Mappings(PatientLogicalModel, name)
* name.given 1..2

* insert Slice(name.given, reasons why this should be supported, value, id, open, Slicing name.given based on id, false)

* name.given contains
  firstName 1..1 MS and
  middleName 0..1 MS

* name.given[firstName]
  * id 1..1
  * id = "firstName"
  * insert Mappings(PatientLogicalModel, name.firstName)

* name.given[middleName]
  * id 1..1
  * id = "middleName"
  * insert Mappings(PatientLogicalModel, name.middleName)
  
* maritalStatus 0..1 MS
  * SU // to ensure that the ALL data elements (incl. the below extension) within maritalStatus are included in GET requests.
  * insert Mappings(PatientLogicalModel, maritalStatus)

  * extension contains MaritalStatusDateExtension named EffectiveDate 1..1
  * extension[EffectiveDate]
    * insert Mappings(PatientLogicalModel, maritalStatus.effectiveDate)

* link 0..* MS
* link.other only Reference(TestPatientRelation)
  * insert Mappings(PatientLogicalModel, relatedPerson)

Profile: TestPatientRelation
Parent: RelatedPerson
Id: test-patient-relationship
Title: "Related Person"
Description: "Patient Relation.

    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active

* ^mapping[+].identity = "RelatedPersonLogicalModel"
* ^mapping[=].name = "Related Person Logical Model"
* ^mapping[=].uri = "http://example.com/fhir/StructureDefinition/RelatedPersonLogicalModel"

* extension contains LogicalModelReferenceExtension named LogicalModel 1..1
* extension[LogicalModel].valueReference = Reference(RelatedPersonLogicalModel)

* name 1..*
  * insert Mappings(RelatedPersonLogicalModel, name)
* name.given 1..2

* insert Slice(name.given, reasons why this should be supported, value, id, open, Slicing name.given based on id, false)

* name.given contains
  firstName 1..1 MS and
  middleName 0..1 MS

* name.given[firstName]
  * id 1..1
  * id = "firstName"
  * insert Mappings(RelatedPersonLogicalModel, name.firstName)

* name.given[middleName]
  * id 1..1
  * id = "middleName"
  * insert Mappings(RelatedPersonLogicalModel, name.middleName)

* relationship 1..1
  * insert Mappings(RelatedPersonLogicalModel, relationship.relationshipType)

* patient
  * insert Mappings(RelatedPersonLogicalModel, relationship.patientRelatedTo)

* extension contains MaritalStatusAndEffectiveDateExtension named MaritalStatusAndEffectiveDate 0..1 MS

* extension[MaritalStatusAndEffectiveDate].extension[MaritalStatus]
  * insert Mappings(RelatedPersonLogicalModel, maritalStatus)

* extension[MaritalStatusAndEffectiveDate].extension[MaritalStatusDate]
  * insert Mappings(RelatedPersonLogicalModel, maritalStatus.effectiveDate)