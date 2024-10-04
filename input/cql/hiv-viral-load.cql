//A CQL example to fetch all HIV viral load results that fall within a reporting period.

library Outpatient-Viral-Load version '1.0.0'

using FHIR version '5.0.0'

include fhir.cqf.common.FHIRHelpers version '4.0.1'

codesystem "Observation Category Codes": 'http://terminology.hl7.org/CodeSystem/observation-category'
codesystem "SNOMED CT Codes": 'http://snomed.info/sct'

valueset "Encounter Ambulatory": 'http://terminology.hl7.org/ValueSet/encounter-class'

code "Laboratory Observation Category": 'laboratory' from "Observation Category Codes"
code "Laboratory Observation Code": '315124004' from "SNOMED CT Codes"

parameter "Measurement Period" Interval<DateTime>

context Patient

define "Outpatient:
  (
    [Encounter: "Encounter Ambulatory"]
  ) Encounter
    where Encounter.status = 'finished'
      and Encounter.Period during "Measurement Period"
      and Encounter.class = 'AMB'

define "Initial Population":
  exists ("Outpatient")

define "Denominator":
  true

define "HIV Viral Load":
  [Observation] Result
    where exists (Result.category ObsCategory where ObsCategory ~ "Laboratory Observation Category" and Result.code ObsCode where ObsCode ~ "Laboratory Observation Code")
      and Result.status in { 'final' }
      and Result.effective during "Measurement Period"

define "Numerator":
  exists ("HIV Viral Load")