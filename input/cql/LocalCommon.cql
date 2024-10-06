library LocalCommon version '0.1.0'

using FHIR version '4.0.1'

include fhir.cqf.common.FHIRHelpers version '4.0.1'
include fhir.cqf.common.FHIRCommon

context Patient

define function MostRecent(observations List<Observation>):
  Last(observations O
      sort by effective
  )