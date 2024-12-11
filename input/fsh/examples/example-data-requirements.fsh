/*Instance: InitiatedARTDataRequirementsLibrary
InstanceOf: CQFMModuleDefinitionLibrary
Usage: #inline
* extension[logicDefinition][+].extension[libraryName].valueString = "InitiatedARTLibrary"
* extension[logicDefinition][=].extension[name].valueString = "HIV+ Patients Observation"
* extension[logicDefinition][=].extension[statement].valueString = "define \"HIV+ Patients Observation\": HIVC.HIVPostivePatients ( \"Measurement Period\" )"
* extension[logicDefinition][=].extension[displaySequence].valueInteger = 0

* extension[logicDefinition][+].extension[libraryName].valueString = "InitiatedARTLibrary"
* extension[logicDefinition][=].extension[name].valueString = "Initial Population"
* extension[logicDefinition][=].extension[statement].valueString = "define \"Initial Population\": exists ( \"HIV+ Patients Observation\" )"
* extension[logicDefinition][=].extension[displaySequence].valueInteger = 1

* extension[logicDefinition][+].extension[libraryName].valueString = "InitiatedARTLibrary"
* extension[logicDefinition][=].extension[name].valueString = "Denominator"
* extension[logicDefinition][=].extension[statement].valueString = "define \"Denominator\": \"Initial Population\""
* extension[logicDefinition][=].extension[displaySequence].valueInteger = 2

* extension[logicDefinition][+].extension[libraryName].valueString = "InitiatedARTLibrary"
* extension[logicDefinition][=].extension[name].valueString = "ART Patients Initiated on ART"
* extension[logicDefinition][=].extension[statement].valueString = "define \"ART Patients Initiated on ART\": HIVC.InitiatedART ( \"Measurement Period\" )"
* extension[logicDefinition][=].extension[displaySequence].valueInteger = 3

* extension[logicDefinition][+].extension[libraryName].valueString = "InitiatedARTLibrary"
* extension[logicDefinition][=].extension[name].valueString = "Numerator"
* extension[logicDefinition][=].extension[statement].valueString = "define \"Numerator\": exists ( \"ART Patients Initiated on ART\" )"
* extension[logicDefinition][=].extension[displaySequence].valueInteger = 4

* name = "InitiatedARTDataRequirementsLibrary"
* status = #active
* experimental = true
* type = $LibraryTypeCodeSystem#module-definition

* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Library FHIRHelpers"
* relatedArtifact[=].resource = "http://jembi.org/fhir/Library/FHIRHelpers|4.0.1"

* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Library FHIRCommon"
* relatedArtifact[=].resource = "http://jembi.org/fhir/Library/FHIRCommon|4.0.1"

* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Library HIVCommon"
* relatedArtifact[=].resource = "http://jembi.org/fhir/Library/FHIRCommon|0.1.0"

* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Value set HIV Test Types"
* relatedArtifact[=].resource = "http://jembi.org/fhir/ValueSet/hiv-test-type-value-set"
*/