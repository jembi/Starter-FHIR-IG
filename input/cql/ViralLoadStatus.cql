library ViralLoadStatus version '0.1.0'

using FHIR version '4.0.1'

include fhir.cqf.common.FHIRHelpers version '4.0.1'
include fhir.cqf.common.FHIRCommon
include HIVCommon called HIVC
include LocalCommon called LOCALC

parameter "Measurement Period" Interval<DateTime>

context Patient

define "Most Recent Viral Load":
  LOCALC.MostRecent ( HIVC.ViralLoadResult ( "Measurement Period" ) )