//A CQL example to fetch all HIV viral load results that fall within a reporting period.

library OutpatientViralLoad version '1.0.0'

include fhir.cqf.common.FHIRCommon

include FHIRHelpers version '4.0.1'

codesystem "Observation Category Codes": 'http://terminology.hl7.org/CodeSystem/observation-category'
codesystem "SNOMED CT Codes": 'http://snomed.info/sct'

valueset "Encounter Class": 'http://terminology.hl7.org/ValueSet/encounter-class'

code "Laboratory Observation Category": 'laboratory' from "Observation Category Codes"
code "Laboratory Observation Code": '315124004' from "SNOMED CT Codes"

parameter "Measurement Period" Interval<DateTime>

context Patient

define "Outpatient:
  (
    [Encounter: "Encounter Class"]
  ) Encounter
    where Encounter.status = 'finished'
      and Encounter.Period during "Measurement Period"
      and Encounter.class = 'AMB'

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