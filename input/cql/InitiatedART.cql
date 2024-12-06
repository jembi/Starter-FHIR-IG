library InitiatedART version '1.0.1'

using FHIR version '4.0.1'

//include FHIRHelpers version '4.0.1'
//include FHIRCommon version '4.0.1'
include HIVCommon called HIVC

parameter "Measurement Period" Interval<DateTime>
//default Interval[@2023-12-01, @2023-12-31] //For testing only

context Patient

//define "HIV+ Patients Observation":
//  HIVC.HIVPostivePatients ( "Measurement Period" )

define "Initial Population":
  HIVC.HIVPostivePatients ( "Measurement Period" )
  //exists ( "HIV+ Patients Observation" )

define "Denominator":
  //"Initial Population"
  true

//define "ART Patients Initiated on ART":
//  HIVC.InitiatedART ( "Measurement Period" )

define "Numerator":
  //exists ( "ART Patients Initiated on ART" )
  exists ( HIVC.InitiatedART ( "Measurement Period" ) )