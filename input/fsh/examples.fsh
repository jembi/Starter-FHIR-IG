Instance: PatientExample1
InstanceOf: TestPatient
Usage: #example
Title: "Patient - Marital Status Captured"
Description: "Patient documented as married."
* name[+].given[+] = "John"
* name[=].given[+] = "Doe"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M
* maritalStatus.extension[MaritalStatusDate].valueDate = "1999-01-01"

Instance: PatientExample2
InstanceOf: TestPatient
Usage: #example
Title: "Patient - Marital Status Not Captured (Example 1)"
Description: "Patient marital status not documented."
* name[+].given[+] = "John"
* name[=].given[+] = "Doe"

Instance: PatientExample3
InstanceOf: TestPatient
Usage: #example
Title: "Patient - Marital Status Not Captured (Example 2)"
Description: "
    Patient marital status not documented but includes a Mother relationship.
    
    Note: Includes patient relation."

* name[+].given[+] = "John"
* name[=].given[+] = "Doe"
* link[+].type = #seealso
* link[=].other = Reference(MotherRelatedPersonExample1)

Instance: MotherRelatedPersonExample1
InstanceOf: TestPatientRelation
Usage: #example
Title: "Related Person - Mother Relationship (Example 1)"
Description: "Marital status documented using a HL7 code."

* name[+].given[+] = "Jane"
* name[=].given[+] = "Smith"
* patient = Reference(PatientExample3)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH
* extension[MaritalStatusAndEffectiveDate][+].extension[MaritalStatus].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#D
* extension[MaritalStatusAndEffectiveDate][=].extension[MaritalStatusDate].valueDate = "1999-01-01"

Instance: MotherRelatedPerson2
InstanceOf: TestPatientRelation
Usage: #example
Title: "Related Person - Mother Relationship (Example 2)"
Description: "Marital status documented using a proprietary code."

* name[+].given[+] = "Jane"
* name[=].given[+] = "Smith"
* patient = Reference(PatientExample3)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH
* extension[MaritalStatusAndEffectiveDate][+].extension[MaritalStatus].valueCodeableConcept = http://example.com/fhir/CodeSystem/cs-marital-status#Other
* extension[MaritalStatusAndEffectiveDate][=].extension[MaritalStatus].valueCodeableConcept.text = "Some other code/reason"
* extension[MaritalStatusAndEffectiveDate][=].extension[MaritalStatusDate].valueDate = "1999-01-01"