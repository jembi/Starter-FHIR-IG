Instance: CSVPatientLogicalModel
InstanceOf: StructureDefinition
Usage: #definition
Title: "CSV Patient Logical Model"
Description: "Requirements to register a CSV patient."

* experimental = true
* status = #active
* name = "CSVPatientLogicalModel"
* url = "http://jembi.org/fhir/StructureDefinition/CSVPatientLogicalModel"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "http://jembi.org/fhir/StructureDefinition/CSVPatientLogicalModel"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Base"
* derivation = #specialization
* fhirVersion = #4.0.1

* mapping[+].identity = "FHIR-R4"
* mapping[=].name = "FHIR Release 4"

* differential.element[+].id = "CSVPatientLogicalModel"
* differential.element[=].path = "CSVPatientLogicalModel"
* differential.element[=].definition = "A sample data dictionary describing a CSV patient message structure."
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "."

* differential.element[+].id = "CSVPatientLogicalModel.record"
* differential.element[=].path = "CSVPatientLogicalModel.record"
* differential.element[=].short = "Record"
* differential.element[=].definition = "CSV Record"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 1
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "."
* differential.element[=].mustSupport = true
* differential.element[=].isSummary = true

* differential.element[+].id = "CSVPatientLogicalModel.record.name"
* differential.element[=].path = "CSVPatientLogicalModel.record.name"
* differential.element[=].short = "Full Name"
* differential.element[=].definition = "Patient full name"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.name.text"
* differential.element[=].mustSupport = true
* differential.element[=].isSummary = true

* differential.element[+].id = "CSVPatientLogicalModel.record.phone"
* differential.element[=].path = "CSVPatientLogicalModel.record.phone"
* differential.element[=].short = "Phone"
* differential.element[=].definition = "Patient phone number"
* differential.element[=].type.code = #string
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.telecom.where(system = 'phone')"
* differential.element[=].mustSupport = true
* differential.element[=].isSummary = true

* differential.element[+].id = "CSVPatientLogicalModel.record.date_of_birth"
* differential.element[=].path = "CSVPatientLogicalModel.record.date_of_birth"
* differential.element[=].short = "Date of birth"
* differential.element[=].definition = "Patient date of birth"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.birthDate"
* differential.element[=].mustSupport = true
* differential.element[=].isSummary = true

* differential.element[+].id = "CSVPatientLogicalModel.record.sex"
* differential.element[=].path = "CSVPatientLogicalModel.record.sex"
* differential.element[=].short = "Sex"
* differential.element[=].definition = "Patient sex"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.gender"
* differential.element[=].mustSupport = true
* differential.element[=].isSummary = true