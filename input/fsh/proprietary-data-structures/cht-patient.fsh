Instance: CHTPatientLogicalModel
InstanceOf: StructureDefinition
Usage: #definition
Title: "CHT Patient Logical Model"
Description: "Requirements to register a CHT patient."

* experimental = true
* status = #draft
* name = "CHTPatientLogicalModel"
* url = "http://jembi.org/fhir/StructureDefinition/CHTPatientLogicalModel"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "http://jembi.org/fhir/StructureDefinition/CHTPatientLogicalModel"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Base"
* derivation = #specialization
* fhirVersion = #4.0.1

* mapping[+].identity = "FHIR-R4"
* mapping[=].name = "FHIR Release 4"

* differential.element[+].id = "CHTPatientLogicalModel"
* differential.element[=].path = "CHTPatientLogicalModel"
* differential.element[=].definition = "A sample data dictionary describing the CHT patient message structure."
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "."

* differential.element[+].id = "CHTPatientLogicalModel._id"
* differential.element[=].path = "CHTPatientLogicalModel._id"
* differential.element[=].short = "Logical ID"
* differential.element[=].definition = "Patient Logical ID"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.id"

* differential.element[+].id = "CHTPatientLogicalModel.name"
* differential.element[=].path = "CHTPatientLogicalModel.name"
* differential.element[=].short = "Name"
* differential.element[=].definition = "Patient name"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.name.text"

* differential.element[+].id = "CHTPatientLogicalModel.phone"
* differential.element[=].path = "CHTPatientLogicalModel.phone"
* differential.element[=].short = "Phone"
* differential.element[=].definition = "Patient phone number"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.telecom.where(system = 'phone')"

* differential.element[+].id = "CHTPatientLogicalModel.date_of_birth"
* differential.element[=].path = "CHTPatientLogicalModel.date_of_birth"
* differential.element[=].short = "Date of birth"
* differential.element[=].definition = "Patient date of birth"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.birthDate"

* differential.element[+].id = "CHTPatientLogicalModel.sex"
* differential.element[=].path = "CHTPatientLogicalModel.sex"
* differential.element[=].short = "Sex"
* differential.element[=].definition = "Patient sex"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.gender"

* differential.element[+].id = "CHTPatientLogicalModel.patient_id"
* differential.element[=].path = "CHTPatientLogicalModel.patient_id"
* differential.element[=].short = "Business identifier"
* differential.element[=].definition = "Patient business identifier"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.identifier"