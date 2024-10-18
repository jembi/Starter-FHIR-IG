Instance: InitiatedARTDataRequirementsLibrary
InstanceOf: Library
Usage: #inline
* extension[+]
  * url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
  * extension[+]
    * url = "libraryName"
    * valueString = "InitiatedARTLibrary"
  * extension[+]
    * url = "name"
    * valueString = "HIV+ Patients Observation"
  * extension[+]
    * url = "statement"
    * valueString = "define \"HIV+ Patients Observation\": HIVC.HIVPostivePatients ( \"Measurement Period\" )"
  * extension[+]
    * url = "displaySequence"
    * valueInteger = 0

/**extension[+].extension[libraryName].valueString = "InitiatedARTLibrary"
* extension[=].extension[name].valueString = "Initial Population"
* extension[=].extension[statement].valueString = "define \"Initial Population\": exists ( \"HIV+ Patients Observation\" )"
* extension[=].extension[displaySequence].valueInteger = 1

* extension[+].extension[libraryName].valueString = "InitiatedARTLibrary"
* extension[=].extension[name].valueString = "Denominator"
* extension[=].extension[statement].valueString = "define \"Denominator\": \"Initial Population\""
* extension[=].extension[displaySequence].valueInteger = 2

* extension[+].extension[libraryName].valueString = "InitiatedARTLibrary"
* extension[=].extension[name].valueString = "ART Patients Initiated on ART"
* extension[=].extension[statement].valueString = "define \"ART Patients Initiated on ART\": HIVC.InitiatedART ( \"Measurement Period\" )"
* extension[=].extension[displaySequence].valueInteger = 3

* extension[+].extension[libraryName].valueString = "InitiatedARTLibrary"
* extension[=].extension[name].valueString = "Numerator"
* extension[=].extension[statement].valueString = "define \"Numerator\": exists ( \"ART Patients Initiated on ART\" )"
* extension[=].extension[displaySequence].valueInteger = 4*/

* name = "InitiatedARTDataRequirements"
* status = #draft
* experimental = true
* type = $LibraryTypeCodeSystem#module-definition

* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Library FHIRHelpers"
* relatedArtifact[=].resource = "http://jembi.org/fhir/Library/FHIRHelpersLibrary|4.0.1"

* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Library FHIRCommon"
* relatedArtifact[=].resource = "http://jembi.org/fhir/Library/FHIRCommon|4.0.1"

* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Library HIVCommon"
* relatedArtifact[=].resource = "http://jembi.org/fhir/Library/FHIRCommon|0.1.0"

* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Value set HIV Test Types"
* relatedArtifact[=].resource = "http://jembi.org/fhir/ValueSet/hiv-test-type-value-set"