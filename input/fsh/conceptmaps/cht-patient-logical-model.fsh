/*Instance: CHTPatientToLogicalModel
InstanceOf: ConceptMap
Title: "ConceptMap to and from the logical model to CHT Patient"
Description: "Mapping to and from CHT patient concepts to logical model."
Usage: #definition

* name = "CHTPatientToLogicalModel"
* description = "Mapping to and from CHT patient concepts to logical model."
* title = "ConceptMap to and from the logical model to CHT Patient"
* status = #draft
* experimental = true
* date = "2024-11-01"

* group[+]
  * source = $CHTLogicalModelCodeSystem
  * target = $CHTPatientCodeSystem
  * insert ElementMap(logicalId, _id, equivalent)
  * insert ElementMap(businessId, patient_id, equivalent)

* group[+]
  * source = $CHTPatientCodeSystem
  * target = $CHTLogicalModelCodeSystem
  * insert ElementMap(_id, logicalId, equivalent)
  * insert ElementMap(patient_id, businessId, equivalent)*/