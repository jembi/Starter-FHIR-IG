library OutpatientViralLoad version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

include fhir.cqf.common.FHIRCommon

codesystem "Observation Category Codes": 'http://terminology.hl7.org/CodeSystem/observation-category'
codesystem "SNOMED CT Codes": 'http://snomed.info/sct'
codesystem "Encounter Class Codes": 'http://terminology.hl7.org/CodeSystem/v3-ActCode'

code "Laboratory Observation Category": 'laboratory' from "Observation Category Codes"
code "Observation HIV Viral Load Code": '315124004' from "SNOMED CT Codes"
code "Encounter Class Outpatient": 'AMB' from "Encounter Class Codes"

context Patient

define "Outpatient":
  [Encounter] E
    where E.status = 'finished'
      and E.period starts 30 days or less before Today() 
      and E.class in "Encounter Class Outpatient"

define "Initial Population":
  exists ("Outpatient")

define "Denominator":
  true

define "HivViralLoad":
  [Observation: "Observation HIV Viral Load Code"] O
    where O.category in "Laboratory Observation Category"
      and O.status = 'final'
      and (
        (O.effective as dateTime).value 30 days or less before Today()
          or (O.effective as Period) starts 30 days or less before Today()
      )

define "Numerator":
  exists ("HivViralLoad")