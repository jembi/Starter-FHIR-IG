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

Instance: SuppressedViralLoadResultExample
InstanceOf: ViralLoadResultObservation
Usage: #example
Title: "Observation - Suppressed Viral Load Result"
Description: "Represents the patient's viral load result as suppressed."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $SCT#315124004
* code.text = "Human immunodeficiency virus viral load"
* subject = Reference(PatientExample1)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueQuantity = $UCUM_UNIT#1/mL
* valueQuantity.value = 900
* valueQuantity.unit = "copies/mL"

Instance: UnsuppressedViralLoadResultExample
InstanceOf: ViralLoadResultObservation
Usage: #example
Title: "Observation - Unsuppressed Viral Load Result"
Description: "Represents the patient's viral load result as unsuppressed followed by enhanced adherence counselling."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $SCT#315124004
* code.text = "Human immunodeficiency virus viral load"
* subject = Reference(PatientExample1)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2023-12-11"
* performer = Reference(CurrentServiceProviderExample)
* valueQuantity = $UCUM_UNIT#1/mL
* valueQuantity.value = 1001
* valueQuantity.unit = "copies/mL"

Instance: GeneralEncounterExample
InstanceOf: TargetFacilityEncounter
Usage: #example
Title: "Encounter - Referencing a General Patient"
Description: "Represents the current facility at which the patient is receiving health services."
* class = $EncounterClassCodeSystem#AMB
* status = #finished
* subject = Reference(PatientExample1)
* period.start = "2012-12-09"
* period.end = "2012-12-09"
* serviceProvider = Reference(CurrentServiceProviderExample)

Instance: CurrentServiceProviderExample
InstanceOf: ServiceProvider
Usage: #example
Title: "Organization - Current Facility"
Description: "Current organization providing health related services."
* active = true
* name = "Meshwalkiya Health Center"
* address[+].line[+] = "Meshulekia"
* address[=].city = "Kirkos"
* address[=].state = "Addis Ababa"
* address[=].district = "Kirkos woreda 9"

Instance: OutpatientViralLoadLibrary
InstanceOf: Library
Title: "CQL - Outpatient Viral Load"
Description: "CQL Measure that reports on all outpatient's (Numerator) whose HIV viral load has been completed within the reporting period (Denominator)."
* content.id = "ig-loader-OutpatientViralLoad.cql"
* status = #active
* type = $LibraryTypeCodeSystem#logic-Library