/*Instance:   AllPatientIdentifiers
InstanceOf: ViewDefinition
Title: "SQL - List all Patients and their Identifiers"
Description: "A SQL query to find all patients and list out their identifiers (server-generated and business)."
Usage:  #definition
* name = "all_patients"
* status = #active
* experimental = true
* resource = #Patient

* select[+]
  * column[+]
    * description = "The patient's server identifier"
    * name = "patient_id"
    * path = "id"
    * type = "id"

* select[+]
  * forEach = "identifier"
  * column[+]
    * description = "The patient's business identifiers"
    * name = "identifier"
    * path = "value"
    * type = "string"*/