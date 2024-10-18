Instance: InitiatedARTDataRequirementsLibrary
InstanceOf: CRMIModuleDefinitionLibrary
Usage: #inline
* extension[logicDefinition][+].extension[libraryName].valueString = "InitiatedARTLibrary"
* extension[logicDefinition][=].extension[name].valueString = "HIV+ Patients Observation"
* extension[logicDefinition][=].extension[statement].valueString = "define \"HIV+ Patients Observation\": HIVC.HIVPostivePatients ( \"Measurement Period\" )"
* extension[logicDefinition][=].extension[displaySequence].valueInteger = 0
* name = "InitiatedARTDataRequirements"
* status = #active
//* experimental = true
* type = $LibraryTypeCodeSystem#module-definition