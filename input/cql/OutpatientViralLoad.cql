library OutpatientViralLoad version '0.1.0'

using FHIR version '4.0.1'

include fhir.cqf.common.FHIRHelpers version '4.0.1'
include fhir.cqf.common.FHIRCommon
include HIVCommon called HIVC

codesystem "Encounter Class Codes": 'http://terminology.hl7.org/CodeSystem/v3-ActCode'

code "Outpatient Encounter Class": 'AMB' from "Encounter Class Codes"

parameter "Measurement Period" Interval<DateTime>

context Patient

define "Outpatient":
  [Encounter: class ~ "Outpatient Encounter Class"] E
    where E.period during "Measurement Period"
      and E.status = 'finished'

define "Initial Population":
  exists ( "Outpatient" )

define "Denominator":
  true

define "Numerator":
  exists ( HIVC.ViralLoadResult ( "Measurement Period" ) )