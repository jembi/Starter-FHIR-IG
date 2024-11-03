Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: FHIRR4PatientToCHTPatient
InstanceOf: StructureMap
Usage: #definition
* url = "http://jembi.org/fhir/StructureMap/FHIRR4PatientToCHTPatient"
* version = "1.0.1"
* name = "FHIRR4PatientToCHTPatient"
* status = #draft
* date = "2024-11-03T13:39:36+02:00"
* publisher = "Jembi Health Systems"
* contact[0].name = "Jembi Health Systems"
* contact[=].telecom[0].system = #url
* contact[=].telecom[=].value = "https://www.jembi.org/"
* contact[=].telecom[+].system = #email
* contact[=].telecom[=].value = "info@jembi.org"
* contact[+].name = "Richard Langford"
* contact[=].telecom.system = #email
* contact[=].telecom.value = "richard.langford@jembi.org"
* contact[=].telecom.use = #work
* jurisdiction = $m49.htm#001 "World"
* structure[0].url = "http://hl7.org/fhir/StructureDefinition/Patient"
* structure[=].mode = #source
* structure[+].url = "http://jembi.org/fhir/StructureDefinition/CHTPatientLogicalModel"
* structure[=].mode = #target
* group.name = "FHIRR4PatientToCHTPatient"
* group.typeMode = #none
* group.input[0].name = "src"
* group.input[=].type = "Patient"
* group.input[=].mode = #source
* group.input[+].name = "tgt"
* group.input[=].type = "CHTPatientLogicalModel"
* group.input[=].mode = #target
* group.rule[0].name = "SetPatientResourceId"
* group.rule[=].source.context = "src"
* group.rule[=].source.element = "id"
* group.rule[=].source.variable = "srcID"
* group.rule[=].target.context = "tgt"
* group.rule[=].target.contextType = #variable
* group.rule[=].target.element = "_id"
* group.rule[=].target.transform = #copy
* group.rule[=].target.parameter.valueId = "srcID"
* group.rule[+].name = "name"
* group.rule[=].source.context = "src"
* group.rule[=].source.element = "name"
* group.rule[=].source.variable = "srcName"
* group.rule[=].rule.name = "SetPatientFullName"
* group.rule[=].rule.source.context = "srcName"
* group.rule[=].rule.source.element = "text"
* group.rule[=].rule.source.variable = "name"
* group.rule[=].rule.target.context = "tgt"
* group.rule[=].rule.target.contextType = #variable
* group.rule[=].rule.target.element = "name"
* group.rule[=].rule.target.transform = #copy
* group.rule[=].rule.target.parameter.valueId = "name"
* group.rule[+].name = "telecom"
* group.rule[=].source.context = "src"
* group.rule[=].source.element = "telecom"
* group.rule[=].source.variable = "srcPhone"
* group.rule[=].rule.name = "SetPatientTelecomValue"
* group.rule[=].rule.source.context = "srcPhone"
* group.rule[=].rule.source.element = "value"
* group.rule[=].rule.source.variable = "phone"
* group.rule[=].rule.target.context = "tgt"
* group.rule[=].rule.target.contextType = #variable
* group.rule[=].rule.target.element = "phone"
* group.rule[=].rule.target.transform = #copy
* group.rule[=].rule.target.parameter.valueId = "phone"
* group.rule[+].name = "SetPatientBirthDate"
* group.rule[=].source.context = "src"
* group.rule[=].source.element = "birthDate"
* group.rule[=].source.variable = "dob"
* group.rule[=].target.context = "tgt"
* group.rule[=].target.contextType = #variable
* group.rule[=].target.element = "date_of_birth"
* group.rule[=].target.transform = #copy
* group.rule[=].target.parameter.valueId = "dob"
* group.rule[+].name = "SetPatientGender"
* group.rule[=].source.context = "src"
* group.rule[=].source.element = "gender"
* group.rule[=].source.variable = "gender"
* group.rule[=].target.context = "tgt"
* group.rule[=].target.contextType = #variable
* group.rule[=].target.element = "sex"
* group.rule[=].target.transform = #copy
* group.rule[=].target.parameter.valueId = "gender"
* group.rule[+].name = "identifier"
* group.rule[=].source.context = "src"
* group.rule[=].source.element = "identifier"
* group.rule[=].source.variable = "srcBusinessID"
* group.rule[=].rule.name = "SetBusinessIDValue"
* group.rule[=].rule.source.context = "srcBusinessID"
* group.rule[=].rule.source.element = "value"
* group.rule[=].rule.source.variable = "businessID"
* group.rule[=].rule.target.context = "tgt"
* group.rule[=].rule.target.contextType = #variable
* group.rule[=].rule.target.element = "patient_id"
* group.rule[=].rule.target.transform = #copy
* group.rule[=].rule.target.parameter.valueId = "businessID"