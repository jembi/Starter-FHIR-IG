Instance: InitiatedARTMeasureDataRequirements
InstanceOf: CRMIModuleDefinitionLibrary
Usage: #inline
* status = #active
* extension[logicDefinition][+].extension[libraryName].valueString = "InitiatedART"
* extension[logicDefinition][=].extension[name].valueString = "Initial Population"
* extension[logicDefinition][=].extension[statement].valueString = "define \"Initial Population\":\n  exists ( HIVC.HIVPostivePatients ( \"Measurement Period\" ) )"
* extension[logicDefinition][=].extension[displaySequence].valueInteger = 0

* extension[logicDefinition][+].extension[libraryName].valueString = "InitiatedART"
* extension[logicDefinition][=].extension[name].valueString = "Denominator"
* extension[logicDefinition][=].extension[statement].valueString = "define \"Denominator\":\n  true"
* extension[logicDefinition][=].extension[displaySequence].valueInteger = 1

* extension[logicDefinition][+].extension[libraryName].valueString = "InitiatedART"
* extension[logicDefinition][=].extension[name].valueString = "Numerator"
* extension[logicDefinition][=].extension[statement].valueString = "define \"Numerator\":\n  exists ( HIVC.InitiatedART ( \"Measurement Period\" ) )"
* extension[logicDefinition][=].extension[displaySequence].valueInteger = 2