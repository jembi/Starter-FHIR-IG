Instance: InitiatedARTMeasure
InstanceOf: CQFMComputableMeasure
Title: "HIV+ Patients Initiated on ART"
Description: "Reports on all HIV+ patients who have been initiated on ART within the reporting period"
Usage: #definition
* contained = InitiatedARTMeasureDataRequirements
//* meta
//  * profile[+] = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/computable-measure-cqfm"

//* contained = InitiatedARTDataRequirementsLibrary

/** extension[+]
  * url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-effectiveDataRequirements"
  * valueReference = Reference(InitiatedARTDataRequirementsLibrary)*/



* extension[+]
  * url = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-effectiveDataRequirements"
  * valueCanonical = Canonical(InitiatedARTMeasureDataRequirements)
  
* title = "HIV+ Patients Initiated on ART"
* description = "Reports on all HIV+ patients who have been initiated on ART within the reporting period"
//* url = "http://jembi.org/fhir/Measure/InitiatedARTMeasure"
* status = #active
* experimental = true
* name = "InitiatedARTMeasure"
* publisher = "Jembi Health Systems"
* version = "1.0.1"
//* scoring = $MeasureScoring#proportion
* library = Canonical(InitiatedART)
* subjectCodeableConcept = $ResourceTypes#Patient
/** effectivePeriod
  * start = "2023-12-01"
  * end = "2023-12-31"*/
//* type = $MeasureType#process
* improvementNotation = $MeasureImprovementNotation#increase

* group[+]
  * extension[+]
    * url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis"
    * valueCode = #boolean

  * extension[+]
    * url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-scoring"
    * valueCodeableConcept = $MeasureScoring#proportion

  * extension[+]
    * url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-type"
    * valueCodeableConcept = $MeasureType#outcome

  * population[+]
    * id = "Initiated.ART.IP"
    * code = #initial-population
    * criteria
      * expression = "Initial Population"
      * language = #text/cql-identifier
    * description = "Initial Population"

  * population[+]
    * id = "Initiated.ART.D"
    * code = #denominator
    * criteria
      * expression = "Denominator"
      * language = #text/cql-identifier
    * description = "Count all patients who tested positive for HIV within the reporting period."

  * population[+]
    * id = "Initiated.ART.N"
    * code = #numerator
    * criteria
      * expression = "Numerator"
      * language = #text/cql-identifier
    * description = "Count all HIV+ patients who have been initiated on ART within the reporting period."