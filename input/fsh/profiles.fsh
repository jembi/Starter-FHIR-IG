Profile: TestPatient
Parent: Patient
Id: test-patient
Title: "Patient"

* insert DescriptionForProfilesInstantiatingLogicalModels(Patient Logical Model, Patient)

   // Note: This is for demonstrable purposes only!

* ^experimental = true
* ^status = #active

* ^mapping[+].identity = "PatientLogicalModel"
* ^mapping[=].name = "Patient Logical Model"
* ^mapping[=].uri = "http://jembi.org/fhir/StructureDefinition/PatientLogicalModel"

//* extension contains LogicalModelReferenceExtension named LogicalModel 1..1
//* extension[LogicalModel].valueReference = Reference(PatientLogicalModel)

* identifier 0..* MS
* identifier
  * ^definition = "reason(s) why this should be supported."
* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing the identifier based on the system value, false)

* identifier contains
    MRN 1..1

* identifier[MRN].value 0..1 MS
  * ^definition = "reason(s) why this should be supported."

* identifier[MRN].system = $MRN 

* name 1..*
  * insert Mappings(PatientLogicalModel, name)

* name.given 1..2
  * insert Mappings(PatientLogicalModel, name.firstName)
  * insert Mappings(PatientLogicalModel, name.middleName)
  
* maritalStatus 0..1 MS
  * ^definition = "reason(s) why this should be supported."
  * SU // to ensure that the ALL data elements (incl. the below extension) within maritalStatus are included in GET requests.
  * insert Mappings(PatientLogicalModel, maritalStatus)

  * extension contains MaritalStatusDateExtension named EffectiveDate 1..1
  * extension[EffectiveDate]
    * insert Mappings(PatientLogicalModel, maritalStatus.effectiveDate)

* link 0..* MS
  * ^definition = "reason(s) why this should be supported."
* link.other only Reference(TestRelatedPerson)
  * insert Mappings(PatientLogicalModel, relatedPerson)

Profile: TestRelatedPerson
Parent: RelatedPerson
Id: test-patient-relationship
Title: "Related Person"

* insert DescriptionForProfilesInstantiatingLogicalModels(Related Person Logical Model, RelatedPerson)

    //Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active

* ^mapping[+].identity = "RelatedPersonLogicalModel"
* ^mapping[=].name = "Related Person Logical Model"
* ^mapping[=].uri = "http://jembi.org/fhir/StructureDefinition/RelatedPersonLogicalModel"

//* extension contains LogicalModelReferenceExtension named LogicalModel 1..1
//* extension[LogicalModel].valueReference = Reference(RelatedPersonLogicalModel)

* name 1..*
  * insert Mappings(RelatedPersonLogicalModel, name)
  
* name.given 1..2
  * insert Mappings(RelatedPersonLogicalModel, name.firstName)
  * insert Mappings(RelatedPersonLogicalModel, name.middleName)

* relationship 1..1
  * insert Mappings(RelatedPersonLogicalModel, relationshipType)

* extension contains MaritalStatusAndEffectiveDateExtension named MaritalStatus 0..1 MS
  * insert EmptyMapping(RelatedPersonLogicalModel)
  * ^mapping[=].comment = "See extension \"Patient Marital Status and Effective Date\""

Profile: StrictCoding
Parent: Coding
Id: strict-coding
Title: "Strict Coding"
Description: "Strict requirements for elements using the Coding data types."
* ^experimental = true
* ^status = #active
* system 1..1
* code 1..1

Profile: StrictQuantity
Parent: Quantity
Id: strict-quantity
Title: "Strict Quantity"
Description: "Strict requirements for quantity-based measurements."
* ^experimental = true
* ^status = #active
* value 1..1
* unit 1..1
* system 1..1
* code 1..1

Profile: GenericObservation
Parent: Observation
Id: generic-observation
Title: "Observation - Generic"
Description: "Base Observation elements that are inherited by other Observation profiles."
* ^experimental = true
* ^status = #active
* code.coding only StrictCoding
* subject 1..1
* subject only Reference(TestPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* effective[x] 1..1
* effective[x] only dateTime or Period
* performer 1..*
* performer only Reference(ServiceProvider or GeneralPractitioner)
* category 0..*
* category ^definition =
    "reason(s) why this should be supported."

* valueCodeableConcept.coding only StrictCoding

Profile: TargetFacilityEncounter
Parent: Encounter
Id: target-facility-encounter
Title: "Encounter - Initiated By The Facility Providing the Service" 
Description: "Represents the current facility at which the patient is receiving health services."
* ^experimental = true
* ^status = #active
* subject 1..1
* class 1..
* subject only Reference(TestPatient)
* period 1..1
* period.start 1..1
* period.end 1..1
* serviceProvider 1..1
* serviceProvider only Reference(ServiceProvider)

Profile: ServiceProvider
Parent: Organization
Id: organization
Title: "Organization"
Description: "Organization providing health related services."
* ^experimental = true
* ^status = #active
* identifier 1..*

* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing the identifier based on the system value, false)

* identifier contains
    HIN 1..1

* identifier[HIN]
  * value 1..1
  * system 1..1
  * system = $HIN

* active 1..1
* name 1..1

* address 1..1
* address.state 1..1
* address.city 1..1
* address.district 0..1
* address.line 0..* MS
* address.line ^definition =
    "reason(s) why this should be supported."

Profile: GeneralPractitioner
Parent: Practitioner
Id: practitioner
Title: "Practitioner - General Practitioner"
Description: 
    "Represents the practitioner who participated in the observation."
* ^experimental = true
* ^status = #active
* name 1..*
* name.given 1..*
* name.family 1..1
* name.prefix 0..* MS
* name.prefix ^definition =
    "reason(s) why this should be supported."
* telecom 1..*

Profile: ConfirmedHIVPositive
Parent: GenericObservation
Id: confirmed-hiv-positive-observation
Title: "Observation - Confirmed HIV positive"
Description: "Represents the date the patient was confirmed HIV positive."
* ^experimental = true
* ^status = #active
* category 1..1
* code from HIVTestType (required)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from HIVTestResultsValueSet (required)
* basedOn 0..1 MS
* basedOn ^definition = "reason(s) why this should be supported."
* basedOn only Reference(ViralLoadServiceRequest)

Profile: GenericDrugDispensation
Parent: MedicationDispense
Id: generic-medication-dispense
Title: "Medication Dispense - Generic"
Description: "Base Medication Request elements that are inherited by other Medication Request profiles."
* ^experimental = true
* ^status = #active
* status 1..1
* medicationCodeableConcept.text 1..1
* medicationCodeableConcept.coding only StrictCoding

* subject 1..1 
* subject only Reference(TestPatient)

* context 1..1 
* context only Reference(TargetFacilityEncounter)

* quantity 1..1
* quantity.value 1..1
* quantity.unit 1..1
* quantity.code 1..1
* quantity.system 1..1

* daysSupply 1..1
* daysSupply.value 1..1
* daysSupply.unit 1..1
* daysSupply.code 1..1
* daysSupply.system 1..1

* whenHandedOver 0..1
* whenHandedOver ^definition =
    "reason(s) why this should be supported."

Profile: ARVMedicationAdministration
Parent: MedicationAdministration
Id: arv-medication-administration
Title: "Medication Administration - For Prescribed ARV Medication"
Description: "Used to record the medication administration period for prescribed ARV medication."
* ^experimental = true
* ^status = #active
* status 1..1
* request 1..1
* medication[x] only Reference
* medicationReference only Reference(ARVMedication)

* request only Reference(ARVMedicationRequest)
* subject 1..1
* subject only Reference(TestPatient)
* context 1..1
* context only Reference(TargetFacilityEncounter)
* effective[x] only Period
* effectivePeriod 1..1
  * start 0..1 MS
  * start ^definition =
    "reason(s) why this should be supported."
  * end 1..1
* note 0..* MS
* note ^definition =
    "reason(s) why this should be supported."

Profile: ARVMedicationRequest
Parent: MedicationRequest
Id: arv-medication-request
Title: "Medication Request - ARV"
Description: "Used to record requests for ARV medication that are prescribed to a patient."
* ^experimental = true
* ^status = #active
* medication[x] only Reference
* medicationReference only Reference(ARVMedication)
* dispenseRequest.quantity = $OrderableDrugForm_UNIT#TAB
* dispenseRequest.quantity.unit = "TAB"

Profile: ARVMedication
Parent: Medication
Id: arv-regimen-medication
Title: "Medication - Represents an ARV Regimen"
Description: "Used to record the ARV regimen that will be prescribed to the patient."
* ^experimental = true
* ^status = #active
* code 1..1
* code.coding only StrictCoding
* code from ARVTreatmentValueSet (extensible)
* code.text 1..1

Profile: ARTFollowupStatusObservation
Parent: GenericObservation
Id: art-followup-status-observation
Title: "Observation - ART Follow-up Status"
Description: "Represents the patient's current ART follow-up status."
* ^experimental = true
* ^status = #active
* category 1..1
* category = $OBSERVATION_CATEGORY#therapy
* code = $LNC#47248-0
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from ARTFollowUpStatusValueSet (required)
* valueCodeableConcept.extension contains ObservedDateExtension named ObservedDate 0..1 MS
* valueCodeableConcept.extension[ObservedDate] ^definition =
    "reason(s) why this should be supported."

Profile: BreastfeedingStatus
Parent: GenericObservation
Id: breastfeeding-status-observation
Title: "Observation - Breastfeeding Status"
Description: "Represents whether the patient is currently breatfeeding."
* ^experimental = true
* ^status = #active
* category 1..1
* category = $OBSERVATION_CATEGORY#exam
* code = $LNC#63895-7
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from BreastfeedingStatusValueSet (extensible)

Profile: HIVStatusConsent
Parent: Consent
Id: hiv-status-consent
Title: "Consent - HIV Status"
Description: "Represents the patient's consent to have their HIV status disclosed."
* ^experimental = true
* ^status = #active
* patient 1..1
* patient only Reference(TestPatient)
* dateTime 1..1
* category 1..1
* organization 1..1
* organization only Reference(ServiceProvider)
* source[x] MS
  * ^definition = "reason(s) why this should be supported."
* policyRule 1..1
* provision 0..1 MS
  * ^definition = "reason(s) why this should be supported."
  * type 0..1 MS
    * ^definition = "reason(s) why this should be supported."
  * actor 0..* MS
    * ^definition = "reason(s) why this should be supported."
  * action 0..* MS
    * ^definition = "reason(s) why this should be supported."
  * data 1..*
  * period 0..1 MS
    * ^definition = "reason(s) why this should be supported."


Profile: ViralLoadResultObservation
Parent: Observation
Id: viral-load-count-observation
Title: "Observation - Viral Load Result"
Description: "Represents the patient's Viral Load Result."
* meta 1..1
* meta.security 1..*

* insert Slice(meta.security, reasons why this should be supported, value, code, open, Slicing meta.security based on the code value, false)

* meta.security contains
    VeryRestricted 1..1

* meta.security[VeryRestricted] 1..1
* meta.security[VeryRestricted].code 1..1
* meta.security[VeryRestricted].code = #V
* meta.security[VeryRestricted].system 1..1
* meta.security[VeryRestricted].system = $ConfidentialityV3CodeSystem

* code = $SCT#315124004
* effectiveDateTime 1..1
* value[x] only StrictQuantity
* valueQuantity 1..1
* valueQuantity = $UCUM_UNIT#1/mL
* valueQuantity.unit 1..1
* valueQuantity.unit = "copies/mL"
* subject 1..1
* subject only Reference(TestPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)

Profile: ViralLoadServiceRequest
Parent: ServiceRequest
Id: vl-service-request
Title: "Service Request - PCR HIV Test"
Description: "Represents the service request for PCR HIV testing."
* meta 1..1
* meta.security 1..*

* insert Slice(meta.security, reasons why this should be supported, value, code, open, Slicing meta.security based on the code value, false)

* meta.security contains
    Normal 1..1

* meta.security[Normal] 1..1
* meta.security[Normal].code 1..1
* meta.security[Normal].code = #N
* meta.security[Normal].system 1..1
* meta.security[Normal].system = $ConfidentialityV3CodeSystem

* code 1..1
* code = $LNC#9836-8
* category 1..1
* category = $LNC#LP94892-4

* subject 1..1
* subject only Reference(TestPatient)

* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)

* requester 1..1
* requester only Reference(ServiceProvider or GeneralPractitioner)

* performer 1..1
* performer only Reference(ServiceProvider or GeneralPractitioner)

* authoredOn 1..1

* priority 1..1

Profile: ViralLoadDiagnosticReport
Parent: DiagnosticReport
Id: viral-load-diagnostic-report
Title: "Diagnostic Report - Viral Load"
Description: "Represents the results for viral load."
* meta 1..1
* meta.security 1..*

* insert Slice(meta.security, reasons why this should be supported, value, code, open, Slicing meta.security based on the code value, false)

* meta.security contains
    VeryRestricted 1..1

* meta.security[VeryRestricted] 1..1
* meta.security[VeryRestricted].code 1..1
* meta.security[VeryRestricted].code = #V
* meta.security[VeryRestricted].system 1..1
* meta.security[VeryRestricted].system = $ConfidentialityV3CodeSystem

* category 1..1
* category = $LNC#11502-2
* code = $LNC#25836-8
* result 1..1
* result only Reference(ViralLoadResultObservation)
* basedOn 1..1
* basedOn only Reference(ViralLoadServiceRequest)
* subject 1..1
* subject only Reference(TestPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* performer 1..1
* performer only Reference(ServiceProvider or GeneralPractitioner)