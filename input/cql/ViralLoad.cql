library ViralLoad

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
//include fhir.cqf.common.FHIRCommon version '4.0.1'
include HIVCommon called HIVC

parameter "Measurement Period" Interval<DateTime>
default Interval[@2023-12-01, @2023-12-31] //For testing only


context Patient

define "Denominator":
  false

define "Viral Load Results":
  HIVC.ViralLoadResult ( "Measurement Period" )

define "Numerator":
  exists ( "Viral Load Results" )