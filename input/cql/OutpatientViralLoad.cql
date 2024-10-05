//A CQL example to fetch all HIV viral load results that fall within a reporting period.

library OutpatientViralLoad version '1.0.0'

include fhir.cqf.common.FHIRCommon

include FHIRHelpers version '4.0.1'

codesystem "Observation Category Codes": 'http://terminology.hl7.org/CodeSystem/observation-category'
codesystem "SNOMED CT Codes": 'http://snomed.info/sct'
codesystem "Encounter Class Codes": 'http://terminology.hl7.org/CodeSystem/v3-ActCode'

code "Laboratory Observation Category": 'laboratory' from "Observation Category Codes"
code "Laboratory Observation Code": '315124004' from "SNOMED CT Codes"
code "Encounter Class Outpatient": 'AMB' from "Encounter Class Codes"

parameter "Measurement Period" Interval<DateTime>

context Patient

define "Outpatient:
  Encounter E
    where E.status = 'finished'
      and E.period during "Measurement Period"
      and E.class in "Encounter Class Outpatient"

define "Initial Population":
  exists ("Outpatient")

define "Denominator":
  true

define "HIV Viral Load":
  exists([Observation: "Laboratory Observation Code"] Result
    where Result.category in "Laboratory Observation Category"
      and Result.status in { 'final' }
      and Result.effective during "Measurement Period")

define "Numerator":
  exists ("HIV Viral Load")