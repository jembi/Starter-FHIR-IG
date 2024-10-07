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

Instance:  ConfirmedHIVPositiveExample
InstanceOf:  ConfirmedHIVPositive
Usage: #example
Title: "Observation - Confirmed HIV positive After PCR Testing"
Description: "Represents the patient's PCR HIV test result."
* status = #final
* category = $OBSERVATION_CATEGORY#laboratory
* code = $LNC#9836-8
* code.text = "HIV PCR test"
* valueCodeableConcept = $LNC#LA24959-1
* subject = Reference(PatientExample1)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(CurrentServiceProviderExample)
* effectiveDateTime = "2024-01-25"
//* basedOn = Reference(PCRHIVTestExample)

Instance: ARVMedicationAdministrationExample
InstanceOf: ARVMedicationAdministration
Usage: #example
Title: "Medication Administration - For Prescribed ARV Medication"
Description: "Used to record the medication administration period for prescribed ARV medication."
* status = #completed
* subject = Reference(PatientExample1)
* context = Reference(GeneralEncounterExample)
* request = Reference(ARVMedicationRequestInitiatedARTExample)
* effectivePeriod.start = "2012-12-09"
* effectivePeriod.end = "2013-04-08"
* note.authorReference = Reference(GeneralPractitionerExample)
* note.text = "Dose end date for a 90 day dispensation of 1j (TDF + 3TC + DTG)"
* note.time = "2012-12-09T13:28:17-05:00"
* medicationReference = Reference(ARVMedicationExample)

Instance: ARVMedicationRequestInitiatedARTExample
InstanceOf: ARVMedicationRequest
Usage: #example
Title: "Medication Request - ARV Prescribed to a Patient Who Initiated ART"
Description: "This is to record requests for medication that are prescribed to a patient (Initiated on ART)."
* authoredOn = "2023-10-11T17:21:33-08:00"
* status = #completed
* intent = #order
* subject = Reference(PatientExample1)
* encounter = Reference(GeneralEncounterExample)
* medicationReference = Reference(ARVMedicationExample)
* dispenseRequest.quantity = $OrderableDrugForm_UNIT#TAB 
* dispenseRequest.quantity.unit = "TAB"
* dispenseRequest.quantity.value = 90

Instance: ARVMedicationExample
InstanceOf: ARVMedication
Usage: #example
Title: "Medication - Represents an ARV Regimen"
Description: "Used to record the ARV regimen that will be prescribed to the patient."
* code = $LNC#LP21306-3
* code.text = "ABC"

Instance: GeneralPractitionerExample
InstanceOf: GeneralPractitioner
Usage: #example
Title: "Practitioner - General Practitioner"
Description: 
"Represents the practitioners who participated in the observation."
* name[+].prefix[+] = "Dr"
* name[=].given[+] = "Tom"
* name[=].given[+] = "Junes"
* name[=].family = "Smith"
* telecom[+].system = #phone
* telecom[=].value = "27537652509"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "someone@something.org"
* telecom[=].use = #home

Instance: InitiatedArtARTFollowupStatusExample
InstanceOf: ARTFollowupStatusObservation
Usage: #example
Title: "Observation - Initiated On ART"
Description: "Indicates that the patient is initiated on ART."
* status = #final
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#47248-0
* subject = Reference(PatientExample1)
* encounter = Reference(GeneralEncounterExample)
* valueCodeableConcept = $LNC#63936-9
* effectiveDateTime = "2024-01-25"
* performer = Reference(CurrentServiceProviderExample)