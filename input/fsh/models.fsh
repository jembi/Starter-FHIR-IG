/*Instance: ExamplePatientProfileForLogicalModel
InstanceOf: StructureDefinition
Usage: #definition
Title: "Data Dictionary Resource"
Description: "
    A resource describing the data elements in the data dictionary.

    Note: This is for demonstrable purposes only!"

* experimental = true
* status = #active
* name = "ExamplePatientProfileForLogicalModel"
* url = "http://example.com/fhir/StructureDefinition/ExamplePatientProfileForLogicalModel"
* version = "1.0.1"
* kind = #resource
* abstract = false
* type = "test-patient"
* baseDefinition = "http://example.com/fhir/StructureDefinition/test-patient"
* derivation = #specialization
* fhirVersion = #5.0.0

* mapping[+].identity = "FHIR-R5"
* mapping[=].name = "FHIR Release 5"
* mapping[+].identity = "ExampleLogicalModel"
* mapping[=].name = "ExampleLogicalModel-DataDictionary"

* differential.element[+].id = "test-patient.name"
* differential.element[=].path = "test-patient.name"
* differential.element[=].short = "Patient name"
* differential.element[=].definition = "Patient name"
* differential.element[=].type.code = #HumanName
* differential.element[=].min = 1
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "FHIR-R5"
* differential.element[=].mapping[=].map = "test-patient.name"
* differential.element[=].mapping[+].identity = "ExampleLogicalModel"
* differential.element[=].mapping[=].map = "test-patient.name"

* differential.element[+].id = "test-patient.name.firstName"
* differential.element[=].path = "test-patient.name.firstName"
* differential.element[=].short = "Patient first name"
* differential.element[=].definition = "Patient first name"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R5"
* differential.element[=].mapping[=].map = "test-patient.name.given"
* differential.element[=].mapping[+].identity = "ExampleLogicalModel"
* differential.element[=].mapping[=].map = "test-patient.name.firstName"

* differential.element[+].id = "test-patient.name.middleName"
* differential.element[=].path = "test-patient.name.middleName"
* differential.element[=].short = "Patient middle name"
* differential.element[=].definition = "Patient middle name"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R5"
* differential.element[=].mapping[=].map = "test-patient.name.given"
* differential.element[=].mapping[+].identity = "ExampleLogicalModel"
* differential.element[=].mapping[=].map = "test-patient.name.middleName"

* differential.element[+].id = "test-patient.maritalStatus"
* differential.element[=].path = "test-patient.maritalStatus"
* differential.element[=].short = "Patient marital status"
* differential.element[=].definition = "Patient marital status"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mustSupport = true
* differential.element[=].isSummary = true
* differential.element[=].mapping[+].identity = "FHIR-R5"
* differential.element[=].mapping[=].map = "."
* differential.element[=].mapping[+].identity = "ExampleLogicalModel"
* differential.element[=].mapping[=].map = "test-patient.maritalStatus"

* differential.element[+].id = "test-patient.maritalStatus.status"
* differential.element[=].path = "test-patient.maritalStatus.status"
* differential.element[=].short = "Status"
* differential.element[=].definition = "A marital status"
* differential.element[=].type.code = #CodeableConcept
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R5"
* differential.element[=].mapping[=].map = "test-patient.maritalStatus"
* differential.element[=].mapping[+].identity = "ExampleLogicalModel"
* differential.element[=].mapping[=].map = "test-patient.maritalStatus.status"

* differential.element[+].id = "test-patient.maritalStatus.effectiveDate"
* differential.element[=].path = "test-patient.maritalStatus.effectiveDate"
* differential.element[=].short = "Patient marital status - Effective Date"
* differential.element[=].definition = "Date when status came into effect"
* differential.element[=].type.code = #date
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R5"
* differential.element[=].mapping[=].map = "test-patient.maritalStatus.extension"
* differential.element[=].mapping[+].identity = "ExampleLogicalModel"
* differential.element[=].mapping[=].map = "test-patient.maritalStatus.effectiveDate"*/