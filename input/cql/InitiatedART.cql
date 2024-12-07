library InitiatedART version '1.0.1'

using FHIR version '4.0.1'

include fhir.cqf.common.FHIRHelpers version '4.0.1'
include fhir.cqf.common.FHIRCommon version '4.0.1'
include HIVCommon called HIVC

parameter "Measurement Period" Interval<DateTime>
//default Interval[@2023-12-01, @2023-12-31] //For testing only

context Patient

define "Initial Population":
  exists ( HIVC.HIVPostivePatients ( "Measurement Period" ) )

define "Denominator":
  true

define "Numerator":
  exists ( HIVC.InitiatedART ( "Measurement Period" ) )