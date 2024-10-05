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

* name 1..*
  * insert Mappings(PatientLogicalModel, name)
* name.given 1..2

* insert Slice(name.given, reasons why this should be supported, value, id, open, Slicing name.given based on id, false)

* name.given contains
  firstName 1..1 MS and
  middleName 0..1 MS

* name.given[firstName]
  * id 1..1
  * id = "firstName"
  * insert Mappings(PatientLogicalModel, name.firstName)

* name.given[middleName]
  * id 1..1
  * id = "middleName"
  * insert Mappings(PatientLogicalModel, name.middleName)
  
* maritalStatus 0..1 MS
  * SU // to ensure that the ALL data elements (incl. the below extension) within maritalStatus are included in GET requests.
  * insert Mappings(PatientLogicalModel, maritalStatus)

  * extension contains MaritalStatusDateExtension named EffectiveDate 1..1
  * extension[EffectiveDate]
    * insert Mappings(PatientLogicalModel, maritalStatus.effectiveDate)

* link 0..* MS
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

* insert Slice(name.given, reasons why this should be supported, value, id, open, Slicing name.given based on id, false)

* name.given contains
  firstName 1..1 MS and
  middleName 0..1 MS

* name.given[firstName]
  * id 1..1
  * id = "firstName"
  * insert Mappings(RelatedPersonLogicalModel, name.firstName)

* name.given[middleName]
  * id 1..1
  * id = "middleName"
  * insert Mappings(RelatedPersonLogicalModel, name.middleName)

* relationship 1..1
  * insert Mappings(RelatedPersonLogicalModel, relationship.relationshipType)

* patient
  * insert Mappings(RelatedPersonLogicalModel, relationship.patientRelatedTo)

* extension contains MaritalStatusAndEffectiveDateExtension named MaritalStatus 0..1 MS
  * insert EmptyMapping(RelatedPersonLogicalModel)
  * ^mapping[=].comment = "See extension \"Patient Marital Status and Effective Date\""

Profile: StrictCoding
Parent: Coding
Id: strict-coding
Title: "Strict Coding"
Description: "Strict requirements for elements using the Coding data types."
* system 1..1
* code 1..1

Profile: StrictQuantity
Parent: Quantity
Id: strict-quantity
Title: "Strict Quantity"
Description: "Strict requirements for quantity-based measurements."
* value 1..1
* unit 1..1
* system 1..1
* code 1..1

Profile: GenericObservation
Parent: Observation
Id: generic-observation
Title: "Observation - Generic"
Description: "Base Observation elements that are inherited by other Observation profiles."
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

Profile: ViralLoadResultObservation
Parent: GenericObservation
Id: viral-load-count-observation
Title: "Observation - Viral Load Result"
Description: "Represents the patient's Viral Load Result."
* category 1..1
* category = $OBSERVATION_CATEGORY#laboratory
* code = $SCT#315124004

* value[x] only StrictQuantity
* valueQuantity 1..1
* valueQuantity = $UCUM_UNIT#1/mL
* valueQuantity.unit = "copies/mL"

Profile: TargetFacilityEncounter
Parent: Encounter
Id: target-facility-encounter
Title: "Encounter - Initiated By The Facility Providing the Service" 
Description: "Represents the current facility at which the patient is receiving health services."
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
* name 1..*
* name.given 1..*
* name.family 1..1
* name.prefix 0..* MS
* name.prefix ^definition =
    "reason(s) why this should be supported."
* telecom 1..*