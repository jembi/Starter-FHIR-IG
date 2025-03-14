library ViralLoadStatus

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
//include fhir.cqf.common.FHIRCommon version '4.0.1'
include HIVCommon called HIVC
include LocalCommon called LOCALC

parameter "Measurement Period" Interval<DateTime>
default Interval[@2023-12-01, @2023-12-31] //For testing only

context Patient

define "Most Recent Viral Load Date":
  LOCALC.ObservationDate(LOCALC.MostRecent ( HIVC.ViralLoadResult ( "Measurement Period" ) ))

define "Total Viral Load Observations":
  Count ( HIVC.ViralLoadResult ( "Measurement Period" ) )

define "Most Recent Viral Load Observation":
  LOCALC.MostRecent ( HIVC.ViralLoadResult ( "Measurement Period" ) )

define "Most Recent Viral Load Indication":
  SuppressionStatus(LOCALC.MostRecent(HIVC.ViralLoadResult("Measurement Period")))

define function SuppressionStatus(obs FHIR.Observation):
  if ( obs.value as Quantity ).value > 1000 then 'Unsuppressed'
    else if ( obs.value as Quantity ).value <= 1000 then 'Suppressed' 
    else null