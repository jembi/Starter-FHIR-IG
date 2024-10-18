Instance: InitiatedARTMeasure
InstanceOf: CQFMProportionMeasure
Title: "Measure - HIV+ Patients Initiated on ART"
Description: "Reports on all HIV+ patients who have been initiated on ART within the reporting period"
Usage: #example
* meta
  * profile[+] = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/computable-measure-cqfm"

* extension[effectiveDataRequirements].valueCanonical = Canonical(InitiatedARTDataRequirementsLibrary)
* extension[populationBasis].valueCode = #boolean
  
* title = "Measure - HIV+ Patients Initiated on ART"
* description = "Reports on all HIV+ patients who have been initiated on ART within the reporting period"
* url = "http://jembi.org/fhir/Measure/InitiatedARTMeasure"
* status = #draft
* experimental = true
* name = "InitiatedARTMeasure"
* publisher = "Jembi Health Systems"
* version = "0.1.0"
* scoring = $MeasureScoring#proportion
* library = Canonical(InitiatedARTLibrary)
* subjectCodeableConcept = $ResourceTypes#Patient
* effectivePeriod
  * start = "2023-12-01"
  * end = "2023-12-31"
* type = $MeasureType#process
* improvementNotation = $MeasureImprovementNotation#increase
* contained = InitiatedARTDataRequirementsLibrary

* group[+]
  * population[initialPopulation]
    * id = "Initiated.ART.IP"
    * criteria.expression = "Initial Population"
    * criteria.language = #text/cql-identifier
    * description = "Initial Population"

  * population[denominator]
    * id = "Initiated.ART.D"
    * criteria.expression = "Denominator"
    * criteria.language = #text/cql-identifier
    * description = "Count all patients who tested positive for HIV within the reporting period."

  * population[numerator]
    * id = "Initiated.ART.N"
    * criteria.expression = "Numerator"
    * criteria.language = #text/cql-identifier
    * description = "Count all HIV+ patients who have been initiated on ART within the reporting period."