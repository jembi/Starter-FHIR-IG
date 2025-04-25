<style>
  {% include liquid-templates.css %}
</style>

### Use Case Narrative

#### Transmission of Lab Results

##### Primary Actors 
- <a href="ActorDefinition-InteroperabilityLayerActorDefinitionExample.html">IL</a>

##### Secondary Actors
- <a href="ActorDefinition-PIMSActorDefinitionExample.html">PIMS</a>
- <a href="ActorDefinition-IPMSActorDefinitionExample.html">IPMS</a>
- <a href="ActorDefinition-MFLActorDefinitionExample.html">Master Facility List (MFL)</a>
- <a href="ActorDefinition-OmangActorDefinitionExample.html">Omang</a>
- <a href="ActorDefinition-BDRSActorDefinitionExample.html">Birth and Death Registration System (BDRS)</a>
- <a href="ActorDefinition-SHRActorDefinitionExample.html">SHR</a>
- <a href="ActorDefinition-ClientRegistryActorDefinitionExample.html">Open Client Registry (CR)</a>

##### Dependencies
- Active connection to IL.

##### Description
- An interoperability layer facilitates information exchange of clinical laboratory orders between the electronic medical record and the laboratory information system, via the longitudinal record system (SHR). 

##### Preconditions
- Queries are sent between interfacing systems and the interoperability layer to update and store new data.

##### Ordinary Sequence
1. PIMS/IPMS send captured orders to the interoperability layer and store them in the SHR
1. MFL update the facility information in the SHR
1. Patient demographic data is queried from the omang system as well as the deaths and births register.
1. Updated lab order details with results are received by the interoperability layer and stored in the SHR
1. PIMS pings the interoperability layer for lab test results
1. Available results in the SHR are pulled to PIMS.

##### Postconditions
- Lab orders, lab test results, facility information and patient information updated and stored in the SHR.

##### Assumptions
- Each and every order that is created is assigned an identifier by IPMS.
- Lab orders are assigned identifiers by the system.
- No data is pushed to IPMS from SHR, only a pull is allowed.

##### Exceptions
1. Unidentifiable orders and order results sent to the interoperability layer are rejected.

<br />

### Use Case Diagrams

#### Data Transmission Layer
<figure>
  {% include DataTransmissionLayer.svg %}
</figure>