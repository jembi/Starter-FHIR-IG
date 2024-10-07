library ViralLoad version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include FHIRCommon version '4.0.1'
include HIVCommon called HIVC

parameter "Measurement Period" Interval<DateTime>

context Patient

define "Denominator":
  false

define "Numerator":
  exists ( HIVC.ViralLoadResult ( "Measurement Period" ) )