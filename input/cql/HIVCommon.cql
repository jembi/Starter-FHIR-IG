/*library HIVCommon version '0.1.0'

using FHIR version '4.0.1'

include fhir.cqf.common.FHIRHelpers version '4.0.1'

include fhir.cqf.common.FHIRCommon

codesystem "Observation Category Codes": 'http://terminology.hl7.org/CodeSystem/observation-category'
codesystem "SNOMED CT Codes": 'http://snomed.info/sct'

code "Laboratory Observation Category": 'laboratory' from "Observation Category Codes"
code "HIV Viral Load Observation Code": '315124004' from "SNOMED CT Codes"

parameter "Measurement Period" Interval<DateTime>

context Patient

define "HIV Viral Load":
  [Observation: code ~ "HIV Viral Load Observation Code"] O
    where exists (O.category C where C ~ "Laboratory Observation Category")
      and O.status = 'final'
      and (
        (O.effective as dateTime).value during "Measurement Period" 
          or (O.effective as Period) starts during "Measurement Period"
      )*/