library ViralLoad version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include FHIRCommon version '4.0.1'
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