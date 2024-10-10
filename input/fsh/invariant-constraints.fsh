Invariant: Extension-MaritalStatusAndEffectiveDateExtension-1
Description: "If valueCodeableConcept.coding.code for the extension \"MaritalStatus\" is \"Other\" then the value for CodeableConcept.text SHALL be present."
Expression: "value.coding.where(system = 'https://build.fhir.org/ig/jembi/Starter-FHIR-IG/CodeSystem/cs-marital-status' and code = 'Other').exists() implies value.text.exists()"
Severity: #error