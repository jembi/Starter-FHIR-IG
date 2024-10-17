Instance: InitiatedARTMeasure
InstanceOf: http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/proportion-measure-cqfm
Title: "Measure - HIV+ Patients Initiated on ART"
Description: "Reports on all HIV+ patients who have been initiated on ART within the reporting period"
Usage: #definition
* status = #active
* experimental = true
* name = "InitiatedARTMeasure"
* publisher = "Jembi Health Systems"
* version = "0.1.0"
* scoring = http://terminology.hl7.org/CodeSystem/measure-scoring#proportion
//* title = "Measure - HIV+ Patients Initiated on ART"
//* description = "Reports on all HIV+ patients who have been initiated on ART within the reporting period"
* library = Canonical(InitiatedARTLibrary)
* subjectCodeableConcept = http://hl7.org/fhir/resource-types#Patient

* group[+]
  * population[initialPopulation]
    * id = "Initiated.ART.IP"
    * criteria.expression = "Initial Population"
    * criteria.language = #text/cql-identifier
    * description = "Initial Population"

  * population[denominator]
    * id = "Initiated.ART.MP"
    * criteria.expression = "Denominator"
    * criteria.language = #text/cql-identifier
    * description = "Denominator"

  * population[numerator]
    * id = "Initiated.ART.MO"
    * criteria.expression = "Numerator"
    * criteria.language = #text/cql-identifier
    * description = "Numerator"