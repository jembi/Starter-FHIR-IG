/*library InitiatedART version '1.0.1'

using FHIR version '4.0.1'

include HIVCommon called HIVC

parameter "Measurement Period" Interval<Date>
//default Interval[@2023-12-01, @2023-12-31] //For testing only

context Patient

define "Initial Population":
  exists ( HIVC.HIVPostivePatients ( "Measurement Period" ) )

define "Denominator":
  true

define "Numerator":
  exists ( HIVC.InitiatedART ( "Measurement Period" ) )
*/
library InitiatedART version '1.0.1'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
//include fhir.cqf.common.FHIRCommon version '4.0.1'


valueset "HIV Test Types": 'http://jembi.org/fhir/ValueSet/hiv-test-type-value-set'
valueset "ARV Drugs": 'http://jembi.org/fhir/ValueSet/arv-treatment-value-set'

codesystem "Observation Category Codes": 'http://terminology.hl7.org/CodeSystem/observation-category'
codesystem "SNOMED CT Codes": 'http://snomed.info/sct'
codesystem "LOINC Codes": 'http://loinc.org'

code "Laboratory Observation Category": 'laboratory' from "Observation Category Codes"
code "HIV Viral Load Observation Code": '315124004' from "SNOMED CT Codes"
code "HIV+ Code": 'LA24955-9' from "LOINC Codes"
code "Initiated ART Code": '63936-9' from "LOINC Codes"
code "ART Status Code": '47248-0' from "LOINC Codes"

parameter "Measurement Period" Interval<DateTime>

context Patient

define "Initial Population":
  exists ( [Observation: code in "HIV Test Types"] O
      where ( O.value as CodeableConcept ) = "HIV+ Code"
        and ( ( O.effective as dateTime ).value during "Measurement Period"
            or ( O.effective as Period ) starts during "Measurement Period"
        )
  )

define "Denominator":
  true

define "Numerator":
  exists ( [Observation: "ART Status Code"] O
      where ( O.value as CodeableConcept ) = "Initiated ART Code"
        and ( ( O.effective as dateTime ).value during "Measurement Period"
            or ( O.effective as Period ) starts during "Measurement Period"
        )
  )