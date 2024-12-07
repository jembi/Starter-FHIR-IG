Instance: InitiatedARTMeasure
InstanceOf: CQFMProportionMeasure
Title: "HIV+ Patients Initiated on ART"
Description: "Reports on all HIV+ patients who have been initiated on ART within the reporting period"
Usage: #definition
//* meta
//  * profile[+] = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/computable-measure-cqfm"

//* contained = InitiatedARTDataRequirementsLibrary

/** extension[+]
  * url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-effectiveDataRequirements"
  * valueReference = Reference(InitiatedARTDataRequirementsLibrary)*/

//* extension[+]
//  * url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis"
//  * valueCode = #boolean
  
* title = "HIV+ Patients Initiated on ART"
* description = "Reports on all HIV+ patients who have been initiated on ART within the reporting period"
//* url = "http://jembi.org/fhir/Measure/InitiatedARTMeasure"
* status = #active
* experimental = true
* name = "InitiatedARTMeasure"
* publisher = "Jembi Health Systems"
* version = "1.0.1"
* scoring = $MeasureScoring#proportion
* library = Canonical(InitiatedART)
* subjectCodeableConcept = $ResourceTypes#Patient
/** effectivePeriod
  * start = "2023-12-01"
  * end = "2023-12-31"*/
* type = $MeasureType#process
* improvementNotation = $MeasureImprovementNotation#increase

* group[+]
  * population[initialPopulation]
    * id = "Initiated.ART.IP"
    * criteria
      * expression = "Initial Population"
      * language = #text/cql-identifier
    * description = "Initial Population"

  * population[denominator]
    * id = "Initiated.ART.D"
    * criteria
      * expression = "Denominator"
      * language = #text/cql-identifier
    * description = "Count all patients who tested positive for HIV within the reporting period."

  * population[numerator]
    * id = "Initiated.ART.N"
    * criteria
      * expression = "Numerator"
      * language = #text/cql-identifier
    * description = "Count all HIV+ patients who have been initiated on ART within the reporting period."