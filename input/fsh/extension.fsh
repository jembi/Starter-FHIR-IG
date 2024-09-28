Extension: MaritalStatusDateExtension
Id: marital-status-date
Title: "Patient Marital Status Date"
Description: "An extension to capture the date for when the marital status came into effect.
    
    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active
* value[x] only date
* valueDate 1..1
* ^context[+].type = #element
* ^context[=].expression = "PatientLogicalModel.maritalStatus.effectiveDate"
* ^context[+].type = #element
* ^context[=].expression = "RelatedPersonLogicalModel.maritalStatus.effectiveDate"
* ^context[+].type = #element
* ^context[=].expression = "Patient.maritalStatus"
* ^context[+].type = #element
* ^context[=].expression = "Patient.maritalStatus.extension"
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson.extension"

Extension: MaritalStatusAndEffectiveDateExtension
Id: marital-status-and-effective-date
Title: "Patient Marital Status and Effective Date"
Description: "An extension to capture the marital status and the effective date for when the marital status came into effect.

    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active
* . SU // to ensure that both extensions are included in GET requests.
* extension contains MaritalStatusExtension named MaritalStatus 1..1
* extension[MaritalStatus] obeys Extension-MaritalStatusAndEffectiveDateExtension-1

* extension contains MaritalStatusDateExtension named MaritalStatusDate 1..1
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson"

Extension: MaritalStatusExtension
Id: marital-status
Title: "Patient Marital Status"
Description: "An extension to capture the marital status.

    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active
* value[x] only CodeableConcept

* valueCodeableConcept from http://hl7.org/fhir/ValueSet/marital-status (extensible)
* valueCodeableConcept 1..1
* valueCodeableConcept ^binding.extension[+].extension[+].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #extensible
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://example.com/fhir/ValueSet/vs-marital-status"
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "A demonstrable list of codes for marital status."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson.extension"

Extension: LogicalModelReferenceExtension
Id: logical-model
Title: "Logical Model Reference"
Description: "An extension to capture a reference to a logical model.
    
    Note: This is for demonstrable purposes only!"
Context: Patient, RelatedPerson

* ^experimental = true
* ^status = #active
* . SU // to ensure that all data elements are included in GET requests.
* value[x] only Reference
* valueReference 1..1