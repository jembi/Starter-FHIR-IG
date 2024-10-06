library ViralLoad version '0.1.0'

using FHIR version '4.0.1'

include fhir.cqf.common.FHIRHelpers version '4.0.1'

include fhir.cqf.common.FHIRCommon

include HIVCommon called HIVC

parameter "Measurement Period" Interval<DateTime>

context Patient

define "Denominator":
  false

define "Numerator":
  exists (HIVC.ViralLoadResult("Measurement Period"))