Instance: RegisterNewPatient
InstanceOf: ExampleScenario
Usage: #definition
* name = "RegisterNewPatient"
* title = "Register New Patient"
* version = "1"
* status = #active
* experimental = false
* purpose = "This serves to demonstrate the creation of a patient record, when using a Client Registry (CR) and a FHIR datastore."

* insert ScenarioActor(PoS, system, Point of Service, The entity that registers the patient.)
* actor[=]
  * extension[+].valueReference = Reference(PIMSActorDefinitionExample)
  * extension[=].url = "http://jembi.org/fhir/StructureDefinition/actor-reference"
  * extension[+].valueReference = Reference(OpenMRSActorDefinitionExample)
  * extension[=].url = "http://jembi.org/fhir/StructureDefinition/actor-reference"

* insert ScenarioActor(IL, system, Interoperability Layer, The entity that receives the registration request submitted by PoS entity.)
* actor[=]
  * extension[+].valueReference = Reference(InteroperabilityLayerActorDefinitionExample)
  * extension[=].url = "http://jembi.org/fhir/StructureDefinition/actor-reference"

* insert ScenarioActor(CR, system, Client Registry, The entity that stores PII and demographic information for the patient included in the Patient Resource submitted by the PoS entity.)
* actor[=]
  * extension[+].valueReference = Reference(ClientRegistryActorDefinitionExample)
  * extension[=].url = "http://jembi.org/fhir/StructureDefinition/actor-reference"

* insert ScenarioActor(FHIR, system, FHIR Server, The entity that stores a restricted version of the Patient Resource submitted by the PoS entity.)
* actor[=]
  * extension[+].valueReference = Reference(SHRActorDefinitionExample)
  * extension[=].url = "http://jembi.org/fhir/StructureDefinition/actor-reference"

* insert ScenarioInstance(rnp.01, Patient, Data Supplying Patient Resource, The Patient involved in the scenario., TestPatient, PatientExample1)
* insert ScenarioInstance(rnp.02, Patient, Restricted Patient Resource, The restricted Patient Resource excl. all PII., RestrictedPatient, RestrictedPatientExample1)
* insert ScenarioInstance(rnp.03, Endpoint, FHIR Validation outcome, The validation outcome as issued by the FHIR server., Endpoint, ValidatePatientResourceInFHIR)
* insert ScenarioInstance(rnp.04, Endpoint, Assigned Master Patient Index identifier, A Master Patient Index identifier assigned by the CR when new patients are created., Endpoint, MPIForPatientIssuedByCR)
* insert ScenarioInstance(rnp.05, Endpoint, Outcome response, FHIR issues an outcome response to each CRUD request., Endpoint, FHIRResourceProcessResponse)

* insert ScenarioProcess(1, Register Patient in CR, 
    PoS entity has submitted a create patient request which contains the Data Supplying Patient Resource.,
CR entity has stored the patient's personal information and sent a response back to the IL which inlcudes a MPI identifier.)

* process[=].step[=].process[+]
  * title = "Register Patient in CR"
  * description = "This scenario demonstrates the process of storing the patient's personal information in the CR, acquired from the Patient Resource and returning a Master Patient Index (MPI) identifier for the patient."

  * insert ScenarioProcessStep(1.1, Patient resource, PoS, IL, Patient personal information)
  * step[=]
    * operation
      * type = $RestfulInteractionCodeSystem#update
      * request
        * instanceReference = "rnp.01"

  * insert ScenarioProcessStep(1.2, Get patient data, IL, IL, Mediator extracts the patient data from the Patient Resource which includes all personal identifiers.)
  * step[=]
    * operation
      * initiatorActive = true

  * insert ScenarioProcessStep(1.3, Validate patient data for compliance, IL, FHIR, Request for FHIR's $validate operation to check that the supplied data is compliant with the Data Supplying Patient Resource Profile. FHIR's $validate operation validates the message structure and its data to ensure that the supplied data is compliant with the Data Supplying Patient Resource Profile.)
  * step[=]
    * operation
      * type = $RestfulInteractionCodeSystem#operation
      * request
        * instanceReference = "rnp.01"
      * response
        * instanceReference = "rnp.03"

  * insert ScenarioProcessStep(1.4, Validation success: Send patient data, IL, CR, Patient Resource is sent to the CR for processing. The CR associates a MPI with the patient record and stores it. )
  * step[=]
    * operation
      * type = $ScenarioOpTypeCodeSystem#CREATE
      * request
        * instanceReference = "rnp.01"
      * response
        * instanceReference = "rnp.04"

  * insert ScenarioProcessStep(1.5, Success: Invoke FHIR mediator, IL, IL, Pass the data to the mediator responsible for calling the endpoint for creating the new patient data in FHIR.)

* insert ScenarioProcess(2, Register Patient in FHIR, 
    CR has provided a MPI identifier in its response sent back to the IL.,
    FHIR entity has processed the Restricted Patient Resource that documents the MPI for re-identification purposes.)

* process[=].step[=].process[+]
  * title = "Register Patient in FHIR"
  * description = "This scenario demonstrates the process of storing a restricted version of the Patient Resource which excludes all PII to ensure patient privacy. This Patient Resource includes the MPI identifier issued by the CR so that the IL can reassociate the clinical information (FHIR) with the PII (CR) during GET requests."

  * insert ScenarioProcessStep(2.1, Remove all PII and business identifiers, IL, IL, Remove all demographic information and business identifiers from the Patient Resource as required by the Restricted Patient Resource Profile.)
  * step[=]
    * operation
      * initiatorActive = true

  * insert ScenarioProcessStep(2.2, Update Resource.meta, IL, IL, Replace the existing meta.profile value with the structure definition URL for the Restricted Patient Resource Profile.)
  * step[=]
    * operation
      * initiatorActive = false
 

  * insert ScenarioProcessStep(2.3, Add the MPI identifier, IL, IL, Add the MPI assigned by the CR as a business identifier in the Restricted Patient Resource.)
  * step[=]
    * operation
      * initiatorActive = true
 

  * insert ScenarioProcessStep(2.4, Set the Restricted Patient Resource literal ID, IL, IL, Set the literal ID in the Restricted Patient Resource to the same value as the ID that was included in the Patient Resource that was submitted by the PoS entity.)
  * step[=]
    * operation
      * initiatorActive = false

  * insert ScenarioProcessStep(2.5, Send data for consumption, IL, FHIR, Patient Resource is sent to the FHIR server for further processing.)
  * step[=]
    * operation
      * receiverActive = true
      * request
        * instanceReference = "rnp.02"
      * response
        * instanceReference = "rnp.05"
  
  * insert ScenarioProcessStep(2.6, Success: Invoke IL mediator, IL, IL, Pass the data to the mediator responsible for calling the endpoint that must send a response back the PoS system who initiated the create patient request.)

* insert ScenarioProcess(3, Respond to Create Patient Request, 
    FHIR entity has processed the request to create the patient record and has issued an outcome response.,
    IL entity has received the outcome response from FHIR and forwarded the response to the PoS system.)

* process[=].step[=].process[+]
  * title = "Respond to Create Patient Request"
  * description = "This scenario demonstrates the process for responding to the PoS sytem who issued the create patient request."

  * insert ScenarioProcessStep(3.1, Response, IL, PoS, Mediator responds to the create patient request.)
  * step[=]
    * operation
      * request
        * instanceReference = "rnp.05"
  
  * insert ScenarioProcessStep(3.2, Log the outcome, PoS, PoS, PoS entity logs the outcome issued by the FHIR entity.)
  * step[=]
    * operation
      * receiverActive = true