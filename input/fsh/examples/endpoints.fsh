Instance: ValidatePatientResourceInFHIR
InstanceOf: Endpoint
Usage: #definition
Title: "Validate Patient Resource in FHIR."
Description: 
    "FHIR uses its $validate operation to ensure that data provided in the Patient Resource is compliant with the specified FHIR Profile."
* status = #active
* connectionType = $EndpointConnectionType#hl7-fhir-rest
* name = "$validate"
* description = "The $validate operation checks whether the suppplied content will be accepted by the server, based on the constraints applied to one or more profiles referenced by the Resource containing the data."
* payload[+]
  * type = $EndpointPayloadType#any
  * mimeType[+] = #application/fhir+json
* address = "http://server.url/fhir/Patient/$validate"

Instance: MPIForPatientIssuedByCR
InstanceOf: Endpoint
Usage: #definition
Title: "Master Patient Index identifier issued by the Client Registry."
Description: 
    "Interoperability layer receives a MPI as part of the response from the CR when creating new patients."
* status = #active
* connectionType = $EndpointConnectionTypeCodeSystem#IL-rest
* name = "IL endpoint name"
* description = "The endpoint used for XXX."
* payload[+]
  * type = $EndpointPayloadType#any
  * mimeType[+] = #application/json
* address = "http://server.url/IL/endpoint"

Instance: FHIRResourceProcessResponse
InstanceOf: Endpoint
Usage: #definition
Title: "Response issued by FHIR after CRUD requests."
Description: 
    "Interoperability layer receives an outcome response for each CRUD request."
* status = #active
* connectionType = $EndpointConnectionTypeCodeSystem#IL-rest
* name = "IL endpoint name"
* description = "The endpoint used for XXX. See https://www.hl7.org/fhir/http.html."
* payload[+]
  * type = $EndpointPayloadType#any
  * mimeType[+] = #application/fhir+json
* address = "http://server.url/IL/endpoint"