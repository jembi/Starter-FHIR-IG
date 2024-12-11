Instance: BreastfeedingStatusProprietaryLogicalModel
InstanceOf: StructureDefinition
Usage: #definition
Title: "Breastfeeding Status Proprietary Logical Model"
Description: "Requirements to capture breastfeding status."

* experimental = true
* status = #active
* name = "BreastfeedingStatusProprietaryLogicalModel"
* url = "http://jembi.org/fhir/StructureDefinition/BreastfeedingStatusProprietaryLogicalModel"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "http://jembi.org/fhir/StructureDefinition/BreastfeedingStatusProprietaryLogicalModel"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Base"
* derivation = #specialization
* fhirVersion = #4.0.1

* mapping[+].identity = "FHIR-R4"
* mapping[=].name = "FHIR Release 4"

* differential.element[+].id = "BreastfeedingStatusProprietaryLogicalModel"
* differential.element[=].path = "BreastfeedingStatusProprietaryLogicalModel"
* differential.element[=].definition = "A sample data dictionary describing the breastfeeding status proprietary message structure."
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "."

* differential.element[+].id = "BreastfeedingStatusProprietaryLogicalModel.observationStatus"
* differential.element[=].path = "BreastfeedingStatusProprietaryLogicalModel.observationStatus"
* differential.element[=].short = "Status"
* differential.element[=].definition = "Observation status"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Observation.status"

* differential.element[+].id = "BreastfeedingStatusProprietaryLogicalModel.code"
* differential.element[=].path = "BreastfeedingStatusProprietaryLogicalModel.code"
* differential.element[=].short = "Code"
* differential.element[=].definition = "Observation code"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Observation.code"

* differential.element[+].id = "BreastfeedingStatusProprietaryLogicalModel.patient"
* differential.element[=].path = "BreastfeedingStatusProprietaryLogicalModel.patient"
* differential.element[=].short = "Subject"
* differential.element[=].definition = "Observation subject"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Observation.subject.ofType(Patient)"

* differential.element[+].id = "BreastfeedingStatusProprietaryLogicalModel.encounter"
* differential.element[=].path = "BreastfeedingStatusProprietaryLogicalModel.encounter"
* differential.element[=].short = "Encounter"
* differential.element[=].definition = "Observation encounter"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Observation.encounter"

* differential.element[+].id = "BreastfeedingStatusProprietaryLogicalModel.performer"
* differential.element[=].path = "BreastfeedingStatusProprietaryLogicalModel.performer"
* differential.element[=].short = "Performer"
* differential.element[=].definition = "Observation performer"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Observation.performer.ofType(Practitioner)"

* differential.element[+].id = "BreastfeedingStatusProprietaryLogicalModel.breastFeedingStatus"
* differential.element[=].path = "BreastfeedingStatusProprietaryLogicalModel.breastFeedingStatus"
* differential.element[=].short = "Breastfeeding Status"
* differential.element[=].definition = "Observation value"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Observation.value.ofType(CodeableConcept)"

* differential.element[+].id = "BreastfeedingStatusProprietaryLogicalModel.date"
* differential.element[=].path = "BreastfeedingStatusProprietaryLogicalModel.date"
* differential.element[=].short = "Date"
* differential.element[=].definition = "Observation Date"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Observation.effective.ofType(dateTime)"