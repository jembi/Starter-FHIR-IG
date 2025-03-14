library OutpatientViralLoad

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
//include fhir.cqf.common.FHIRCommon version '4.0.1'
include HIVCommon called HIVC

codesystem "Encounter Class Codes": 'http://terminology.hl7.org/CodeSystem/v3-ActCode'

code "Outpatient Encounter Class": 'AMB' from "Encounter Class Codes"

parameter "Measurement Period" Interval<DateTime>
default Interval[@2023-12-01, @2023-12-31] //For testing only

context Patient

define "Outpatient":
  [Encounter: class = "Outpatient Encounter Class"] E
    where E.period during "Measurement Period"
      and E.status = 'finished'

define "Initial Population":
  exists ( "Outpatient" )

define "Denominator":
  "Initial Population"

define "Viral Load Results":
  HIVC.ViralLoadResult ( "Measurement Period")

define "Numerator":
  exists ( "Viral Load Results" )
  
