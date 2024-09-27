Instance: LogicalModelPatientExample1
InstanceOf: ExamplePatientLogicalModel
Usage: #example
Title: "Patient - Marital Status Captured"
Description: "Patient documented as married.
    
    Note: Implements the logical model \"ExamplePatientLogicalModel\"."

* patientName[+].firstName = "John"
* patientName[=].middleName = "Doe"
* patientMaritalStatus
  * status = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M
  * effectiveDate.extension[+].valueDate = "1999-01-01"
  * effectiveDate.extension[=].url = "http://example.com/fhir/StructureDefinition/marital-status-date"

Instance: LogicalModelPatientExample2
InstanceOf: ExamplePatientLogicalModel
Usage: #example
Title: "Patient - Marital Status Not Captured (Example 1)"
Description: "Patient marital status not documented.

    Note: Implements the logical model \"ExamplePatientLogicalModel\"."

* patientName[+].firstName = "John"
* patientName[=].middleName = "Doe"