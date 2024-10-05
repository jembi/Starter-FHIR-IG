library OutpatientViralLoad version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

include fhir.cqf.common.FHIRCommon

codesystem "Observation Category Codes": 'http://terminology.hl7.org/CodeSystem/observation-category'
codesystem "SNOMED CT Codes": 'http://snomed.info/sct'
codesystem "Encounter Class Codes": 'http://terminology.hl7.org/CodeSystem/v3-ActCode'

code "Laboratory Observation Category": 'laboratory' from "Observation Category Codes"
code "Laboratory Observation Code": '315124004' from "SNOMED CT Codes"
code "Encounter Class Outpatient": 'AMB' from "Encounter Class Codes"

parameter "Measurement Period" Interval<DateTime>

context Patient

define "Outpatient:
  ["target-facility-encounter"] E
    where E.status = 'finished'
      and E.period during "Measurement Period" 
      and E.class in "Encounter Class Outpatient"

define "Initial Population":
  exists ("Outpatient")

define "Denominator":
  true

define "HIV Viral Load":
  exists(["viral-load-count-observation"] Result
    where Result.category in "Laboratory Observation Category"
      and Result.status in { 'final' }
      and Result.effective during "Measurement Period")

define "Numerator":
  exists ("HIV Viral Load")