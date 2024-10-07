library LocalCommon version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include FHIRCommon version '4.0.1'

context Patient

define function MostRecent(observations List<Observation>):
  Last(observations O
      sort by effective.value
  )

define function MostRecent(encounters List<Encounter>):
  Last(encounters O
      sort by period.start
  )

define function ObservationDate(observation FHIR.Observation):
  observation O
    return O.effective.value