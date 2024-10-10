library HIVCommon version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include FHIRCommon version '4.0.1'

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

context Patient

define function ViralLoadResult(period Interval<DateTime>):
  [Observation: "HIV Viral Load Observation Code"] O
    where exists ( O.category C
        where C = "Laboratory Observation Category"
    )
      and O.status = 'final'
      and ( O.value as Quantity ).value is not null
      and ( ( O.effective as dateTime ).value during period
          or ( O.effective as Period ) starts during period
      )

define function HIVPostivePatients(period Interval<DateTime>):
  [Observation: code in "HIV Test Types"] O
    where ( O.value as CodeableConcept ) = "HIV+ Code"
      and ( ( O.effective as dateTime ).value during period
          or ( O.effective as Period ) starts during period
      )

define function InitiatedART(period Interval<DateTime>):
  [Observation: "ART Status Code"] O
    where ( O.value as CodeableConcept ) = "Initiated ART Code"
      and ( ( O.effective as dateTime ).value during period
          or ( O.effective as Period ) starts during period
      )