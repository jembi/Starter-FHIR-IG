Instance: PatientExample1
InstanceOf: TestPatient
Usage: #example
Title: "Patient - Example 1 (Marital Status Captured)"
Description: "Patient documented as married."
* name[+].given[firstName] = "John"
* name[=].given[middleName] = "Doe"

* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M
* maritalStatus.extension[EffectiveDate].valueDate = "1999-01-01"

Instance: PatientExample2
InstanceOf: TestPatient
Usage: #example
Title: "Patient - Example 2 (Marital Status Not Captured)"
Description: "Patient marital status not documented."
* name[+].given[firstName] = "John"
* name[=].given[middleName] = "Doe"

Instance: PatientExample3
InstanceOf: TestPatient
Usage: #example
Title: "Patient - Example 3 (Marital Status Not Captured)"
Description: "Patient marital status not documented but includes a Mother relationship.
    
    Note: Includes patient relation."

* name[+].given[firstName] = "John"
* name[=].given[middleName] = "Doe"

* link[+].type = #seealso
* link[=].other = Reference(MotherRelatedPersonExample1)

Instance: MotherRelatedPersonExample1
InstanceOf: TestRelatedPerson
Usage: #example
Title: "Related Person - Mother Relationship (Example 1)"
Description: "Marital status documented using a HL7 code."

* name[+].given[firstName] = "Jane"
* name[=].given[middleName] = "Smith"
* patient = Reference(PatientExample3)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH
* extension[MaritalStatus][+].extension[Status].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#D
* extension[MaritalStatus][=].extension[EffectiveDate].valueDate = "1999-01-01"

Instance: MotherRelatedPerson2
InstanceOf: TestRelatedPerson
Usage: #example
Title: "Related Person - Mother Relationship (Example 2)"
Description: "Marital status documented using a proprietary code."

* name[+].given[firstName] = "Jane"
* name[=].given[middleName] = "Smith"
* patient = Reference(PatientExample3)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH
* extension[MaritalStatus][+].extension[Status][+].valueCodeableConcept = http://jembi.org/fhir/CodeSystem/cs-marital-status#Other
* extension[MaritalStatus][=].extension[Status][=].valueCodeableConcept.text = "Some other code/reason"
* extension[MaritalStatus][=].extension[EffectiveDate].valueDate = "1999-01-01"