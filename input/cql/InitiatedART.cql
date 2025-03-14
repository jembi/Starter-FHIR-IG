library InitiatedART

using FHIR version '4.0.1'

include HIVCommon called HIVC

parameter "Measurement Period" Interval<Date>
//default Interval[@2023-12-01, @2023-12-31] //For testing only

context Patient

define "Initial Population":
  exists ( HIVC.HIVPostivePatients ( "Measurement Period" ) )

define "Denominator":
  true

define "Numerator":
  exists ( HIVC.InitiatedART ( "Measurement Period" ) )