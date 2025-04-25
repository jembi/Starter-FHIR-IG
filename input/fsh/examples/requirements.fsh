Instance: InteroperabilityLayerRequirements
InstanceOf: SampleRequirements
Usage: #example
Title: "Interoperability Layer Requirements"
Description: "Interoperability Layer Functional Requirements"
* extension[RequirementsType].valueCodeableConcept = $RequirementsTypeCodeSystem#functional
* name = "InteroperabilityLayerRequirements"
* status = #active
* actor[Primary] = Canonical(InteroperabilityLayerActorDefinitionExample)
* actor[Secondary][+] = Canonical(SHRActorDefinitionExample)
* actor[Secondary][+] = Canonical(PIMSActorDefinitionExample)
* statement[+]
  * key = "STARTER.IG.FR-IL.001"
  * requirement = "Should be able to cache and store data from various interfacing systems in the shared health record (SHR)."
* statement[+]
  * key = "STARTER.IG.FR-IL.002"
  * requirement = "Should be able to synchronise and update data set in the interoperability layer with other systems such as the MPI."
* statement[+]
  * key = "STARTER.IG.FR-IL.003"
  * requirement = "Should be able to ping IPMS for available lab test results and pull them to the SHR."
* statement[+]
  * key = "STARTER.IG.FR-IL.004"
  * requirement = "Should be able to update SHR with results from IPMS and push the updated record to PIMS."

Instance: NonFunctionalRequirements
InstanceOf: SampleRequirements
Usage: #example
Title: "Non Functional Requirements"
Description: "Non Functional Requirements"
* extension[RequirementsType].valueCodeableConcept = $RequirementsTypeCodeSystem#non-functional
* name = "NonFunctionalRequirements"
* status = #active
* statement[+]
  * key = "STARTER.IG.NFR.001"
  * requirement = "The system should be able to be recovered 1 hour from downtime."
* statement[+]
  * key = "STARTER.IG.NFR.002"
  * requirement = "The data should be shared/transmitted over a secure layer (Interoperability Layer)."
* statement[+]
  * key = "STARTER.IG.NFR.003"
  * requirement = "The system should be scalable."
* statement[+]
  * key = "STARTER.IG.NFR.004"
  * requirement = "For performance - On average the system should have a cumulative down time of 1 hour per month."
* statement[+]
  * key = "STARTER.IG.NFR.005"
  * requirement = "For performance - The system should have 99.9% uptime."
* statement[+]
  * key = "STARTER.IG.NFR.006"
  * requirement = "For performance - System should have a quick response time to end user queries."
* statement[+]
  * key = "STARTER.IG.NFR.007"
  * requirement = "For security - The system shall detect and log all users, authorized or not, who access (create, read, update or delete) in accordance to the Botswana Data Protection Act 2018."
* statement[+]
  * key = "STARTER.IG.NFR.008"
  * requirement = "For browser compatibility - The components  of the HIE shall be compatible with Google Chrome version  and  FireFox  version and later."
* statement[+]
  * key = "STARTER.IG.NFR.009"
  * requirement = "For browser compatibility - If a public user is attempting to access the system without a compatible browser, the system shall display a message to the user that identifies the compatibility requirements necessary to access the system."
* statement[+]
  * key = "STARTER.IG.NFR.010"
  * requirement = "For maintainability - The software shall exhibit high maintainability to facilitate efficient and timely modifications, updates, and enhancements, ensuring that changes can be made with minimal impact on existing functionality." 

Instance: ClientRegistryRequirements
InstanceOf: SampleRequirements
Usage: #example
Title: "Client Registry Requirements"
Description: "Client Registry Functional Requirements"
* extension[RequirementsType].valueCodeableConcept = $RequirementsTypeCodeSystem#functional
* name = "ClientRegistryRequirements"
* status = #active
* actor[Primary] = Canonical(ClientRegistryActorDefinitionExample)
* actor[Secondary][+] = Canonical(SHRActorDefinitionExample)
* statement[+]
  * key = "STARTER.IG.FR-CR.001"
  * requirement = "Should be able to support configurable entity matching, a service to assist in identifying duplicate patients."
* statement[+]
  * key = "STARTER.IG.FR-CR.002"
  * requirement = "Should be able to support patient linking and de-duplication."
* statement[+]
  * key = "STARTER.IG.FR-CR.003"
  * requirement = "Should be able to support the ability to track and monitor inbound/outbound transactions."
* statement[+]
  * key = "STARTER.IG.FR-CR.004"
  * requirement = "Should be able to support synchronization of client IDs with a Shared Health Record (SHR)."
* statement[+]
  * key = "STARTER.IG.FR-CR.005"
  * requirement = "Should be able to manage a full audit log of changes to data as well as configurations as well as users."
* statement[+]
  * key = "STARTER.IG.FR-CR.006"
  * requirement = "Should have functions including user management and access controls."
* statement[+]
  * key = "STARTER.IG.FR-CR.007"
  * requirement = "Should be able to persist the parent/child relationship, birth order, and multi-birth indicator."
* statement[+]
  * key = "STARTER.IG.FR-CR.008"
  * requirement = "Should support a UI to review and manually adjudicate uncertain (“potential”) matches, and override incorrect matches."
* statement[+]
  * key = "STARTER.IG.FR-CR.009"
  * requirement = "Should support configurable attributes that form a patient record and are used for matching."
* statement[+]
  * key = "STARTER.IG.FR-CR.010"
  * requirement = "Should support configurable attributes to make it easy to add attributes to the schema."
* statement[+]
  * key = "STARTER.IG.FR-CR.011"
  * requirement = "Should support configurable attributes to make it easy to remove attributes from the default model (or start over from scratch)."

Instance: OpenMRSRequirements
InstanceOf: SampleRequirements
Usage: #example
Title: "OpenMRS Requirements"
Description: "OpenMRS Functional Requirements"
* extension[RequirementsType].valueCodeableConcept = $RequirementsTypeCodeSystem#functional
* name = "OpenMRSRequirements"
* status = #active
* actor[Primary] = Canonical(OpenMRSActorDefinitionExample)
* actor[Secondary][+] = Canonical(ClientRegistryActorDefinitionExample)
* actor[Secondary][+] = Canonical(SHRActorDefinitionExample)
* statement[+]
  * key = "STARTER.IG.FR-OMRS.001"
  * requirement = "Must be able to create new patients and save patient details in the CR/MPI."
* statement[+]
  * key = "STARTER.IG.FR-OMRS.002"
  * requirement = "Must be able to create lab orders after validating patient details against CR."
* statement[+]
  * key = "STARTER.IG.FR-OMRS.003"
  * requirement = "Should be able to send lab orders to the SHR through the PIMS service layer."
* statement[+]
  * key = "STARTER.IG.FR-OMRS.004"
  * requirement = "Should be able to update lab records in the SHR with specimen details."
* statement[+]
  * key = "STARTER.IG.FR-OMRS.005"
  * requirement = "Should be able to query the shared health record for available lab order results."
* statement[+]
  * key = "STARTER.IG.FR-OMRS.006"
  * requirement = "Should be able to store lab results."