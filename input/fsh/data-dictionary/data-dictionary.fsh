Instance: ExampleLogicalModel
InstanceOf: StructureDefinition
Title: "Data Dictionary"
Description: "
    Data dictionary represented as a logical Model.

    Note: This is for demonstrable purposes only!"

Usage: #definition
* experimental = true
* status = #draft
* name = "ExampleLogicalModel"
* url = "http://example.com/fhir/StructureDefinition/ExampleLogicalModel"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "http://example.com/fhir/StructureDefinition/ExampleLogicalModel"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Base"
* derivation = #specialization
* fhirVersion = #5.0.0

* mapping[+].identity = "FHIR-R5"
* mapping[=].name = "FHIR Release 5"

* differential.element[+].id = "sampleDataDictionary"
* differential.element[=].path = "ExampleLogicalModel"
* differential.element[=].definition = "A sample data dictionary describing an example use case"
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "FHIR-R5"
* differential.element[=].mapping[=].map = "."

/**
 Patient
*/
* differential.element[+].id = "patient"
* differential.element[=].path = "ExampleLogicalModel.patient"
* differential.element[=].short = "Patient Registration Data Elements"
* differential.element[=].definition = "Data elements used during patient registration"
* differential.element[=].type.code = #Resource
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R5"
* differential.element[=].mapping[=].map = "Patient"

* differential.element[+].id = "patientName"
* differential.element[=].path = "ExampleLogicalModel.patient.Name"
* differential.element[=].short = "Patient name"
* differential.element[=].definition = "Patient name"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 1
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "FHIR-R5"
* differential.element[=].mapping[=].map = "Patient.name"

* differential.element[+].id = "patientFirstName"
* differential.element[=].path = "ExampleLogicalModel.patient.Name.firstName"
* differential.element[=].short = "Patient first name"
* differential.element[=].definition = "Patient first name"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R5"
* differential.element[=].mapping[=].map = "Patient.name.given"

* differential.element[+].id = "patientMiddleName"
* differential.element[=].path = "ExampleLogicalModel.patient.Name.middleName"
* differential.element[=].short = "Patient middle name"
* differential.element[=].definition = "Patient middle name"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R5"
* differential.element[=].mapping[=].map = "Patient.name.given"

* differential.element[+].id = "patientMritalStatus"
* differential.element[=].path = "ExampleLogicalModel.patient.maritalStatus"
* differential.element[=].short = "Patient marital status"
* differential.element[=].definition = "Patient marital status"
* differential.element[=].type.code = #CodeableConcept
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mustSupport = true
* differential.element[=].isSummary = true
* differential.element[=].mapping[+].identity = "FHIR-R5"
* differential.element[=].mapping[=].map = "Patient.maritalStatus"

* differential.element[+].id = "patientMaritalStatusEffectiveDate"
* differential.element[=].path = "ExampleLogicalModel.patient.maritalStatus.effectiveDate"
* differential.element[=].short = "Patient marital status - Effective Date"
* differential.element[=].definition = "Patient marital status - effective date"
* differential.element[=].type.code = #Extension
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R5"
* differential.element[=].mapping[=].map = "Patient.maritalStatus.extension"