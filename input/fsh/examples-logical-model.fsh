Instance: LogicalModelPatientExample1
InstanceOf: PatientLogicalModel
Usage: #example
Title: "Patient - Example 1 (Marital Status Captured)"
Description: "Patient documented as married."

* name[+].firstName = "John"
* name[=].middleName = "Doe"
* maritalStatus
  * status = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M
  * effectiveDate.extension[+].valueDate = "1999-01-01"
  * effectiveDate.extension[=].url = "http://example.com/fhir/StructureDefinition/marital-status-date"

Instance: LogicalModelPatientExample2
InstanceOf: PatientLogicalModel
Usage: #example
Title: "Patient - Example 2 (Marital Status Not Captured)"
Description: "Patient marital status not documented."

* name[+].firstName = "John"
* name[=].middleName = "Doe"

Instance: LogicalModelPatientExample3
InstanceOf: PatientLogicalModel
Usage: #example
Title: "Patient - Example 3 (Marital Status Not Captured)"
Description: "Patient marital status not documented but includes a Mother relationship.
    
    Note: Includes patient relation."

* name[+].firstName = "John"
* name[=].middleName = "Doe"

* relatedPerson = Reference(http://example.com/fhir/StructureDefinition/RelatedPersonLogicalModel)

Instance: RelatedPersonLogicalModelExample1
InstanceOf: RelatedPersonLogicalModel
Usage: #example
Title: "Related Person - Mother Relationship (Example 1)"
Description: "Marital status documented using a HL7 code."

* name[+].firstName = "Jane"
* name[=].middleName = "Smith"
* relationship.patientRelatedTo = Reference(http://example.com/fhir/StructureDefinition/PatientLogicalModel)
* relationship.relationshipType = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH
* maritalStatus
  * status = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M
  * effectiveDate.extension[+].valueDate = "1999-01-01"
  * effectiveDate.extension[=].url = "http://example.com/fhir/StructureDefinition/marital-status-date"

Instance: RelatedPersonLogicalModelExample2
InstanceOf: RelatedPersonLogicalModel
Usage: #example
Title: "Related Person - Mother Relationship (Example 2)"
Description: "Marital status documented using a proprietary code."

* name[+].firstName = "Jane"
* name[=].middleName = "Smith"
* relationship.patientRelatedTo = Reference(http://example.com/fhir/StructureDefinition/PatientLogicalModel)
* relationship.relationshipType = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH
* maritalStatus
  * status = http://example.com/fhir/CodeSystem/cs-marital-status#Other
  * status.text = "Some other code/reason"
  * effectiveDate.extension[+].valueDate = "1999-01-01"
  * effectiveDate.extension[=].url = "http://example.com/fhir/StructureDefinition/marital-status-date"