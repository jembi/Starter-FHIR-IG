Instance: PIMSActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - PIMS"
Description: "Represents the system used to collect, manage, and track patient health records across healthcare facilities, supporting improved care, reporting, and decision-making."
* name = "PatientInformationManagementSystem"
* title = "Patient Information Management System (PIMS)"
* status = #active
* purpose = "To collect, organize, and store patient data in a way that is easily accessible and usable by healthcare providers."
* type = #system

Instance: OpenMRSActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - OpenMRS"
Description: "Represents an open-source electronic medical record system that is used to manage patient data, support HIV care, and strengthen health information systems across the country’s healthcare facilities."
* name = "OpenMRS"
* title = "OpenMRS"
* status = #active
* purpose = "Used as the main patient care system and electronic medical record (EMR) system, providing a platform to manage patient data and improve healthcare delivery, particularly in resource-constrained environments."
* type = #system

Instance: InteroperabilityLayerActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - Interoperability Layer"
Description: "Represents the architectural component responsible for coordinating transactions from one system to another during Health Information Exchange."
* name = "InteroperabilityLayer"
* title = "Interoperability Layer (IL)"
* status = #active
* purpose = "The Interoperability Layer plays a vital role in ensuring that both lab orders and diagnostic reports are stored in the Shared Health Record."
* type = #system

Instance: ClientRegistryActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - Client Registry"
Description: "Represents the system designed to uniquely identify individuals who receive healthcare services, often by maintaining a central record of patients and their demographics, assigning unique identifiers, and enabling healthcare workers to identify facilities where a patient has received care."
* name = "ClientRegistry"
* title = "Client Registry (CR)"
* status = #active
* purpose = "The client registry is important for the accurate and efficient identification and linking of patient records across different healthcare organizations within a health information exchange network."
* type = #system

Instance: SHRActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - Shared Health Record"
Description: "Represents the system that stores a defined set of normalized patient data, serving as a longitudinal health record across different facilities, ensuring continuity of care."
* name = "SharedHealthRecord"
* title = "Shared Health Record (SHR)"
* status = #active
* purpose = "To facilitate the exchange and access of patient health information across different healthcare settings, improving care delivery and decision-making."
* type = #system