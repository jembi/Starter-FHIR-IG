Instance: LogicalModelPatientExample1
InstanceOf: PatientLogicalModel
Usage: #example
Title: "Logical Model: Patient - Example 1 (Marital Status Captured)"
Description: "Patient documented as married."

* name[+].firstName = "John"
* name[=].middleName = "Doe"
* maritalStatus
  * status = $MaritalStatusV3CodeSystem#M
  * effectiveDate.extension[+].valueDate = "1999-01-01"
  * effectiveDate.extension[=].url = "http://jembi.org/fhir/StructureDefinition/marital-status-date"

Instance: LogicalModelPatientExample2
InstanceOf: PatientLogicalModel
Usage: #example
Title: "Logical Model: Patient - Example 2 (Marital Status Not Captured)"
Description: "Patient marital status not documented."

* name[+].firstName = "John"
* name[=].middleName = "Doe"

Instance: LogicalModelPatientExample3
InstanceOf: PatientLogicalModel
Usage: #example
Title: "Logical Model: Patient - Example 3 (Marital Status Not Captured)"
Description: "Patient marital status not documented but includes a Mother relationship.
    
    Note: Includes patient relation."

* name[+].firstName = "John"
* name[=].middleName = "Doe"

* relatedPerson[+].name[+].firstName = "Jane"
* relatedPerson[=].name[=].middleName = "Smith"
* relatedPerson[=].relationshipType = $RoleCodeV3CodeSystem#MTH
* relatedPerson[=].maritalStatus
  * status = $MaritalStatusV3CodeSystem#M
  * effectiveDate.extension[+].valueDate = "1999-01-01"
  * effectiveDate.extension[=].url = "http://jembi.org/fhir/StructureDefinition/marital-status-date"

Instance: RelatedPersonLogicalModelExample1
InstanceOf: RelatedPersonLogicalModel
Usage: #example
Title: "Logical Model: Related Person - Mother Relationship (Example 1)"
Description: "Marital status documented using a HL7 code."

* name[+].firstName = "Jane"
* name[=].middleName = "Smith"
* relationshipType = $RoleCodeV3CodeSystem#MTH
* maritalStatus
  * status = $MaritalStatusV3CodeSystem#M
  * effectiveDate.extension[+].valueDate = "1999-01-01"
  * effectiveDate.extension[=].url = "http://jembi.org/fhir/StructureDefinition/marital-status-date"

Instance: RelatedPersonLogicalModelExample2
InstanceOf: RelatedPersonLogicalModel
Usage: #example
Title: "Logical Model: Related Person - Mother Relationship (Example 2)"
Description: "Marital status documented using a proprietary code."

* name[+].firstName = "Jane"
* name[=].middleName = "Smith"
* relationshipType = $RoleCodeV3CodeSystem#MTH
* maritalStatus
  * status = $MaritalStatusCodeSystem#Other
  * status.text = "Some other code/reason"
  * effectiveDate.extension[+].valueDate = "1999-01-01"
  * effectiveDate.extension[=].url = "http://jembi.org/fhir/StructureDefinition/marital-status-date"