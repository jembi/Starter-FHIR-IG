CodeSystem: CSMaritalStatus
Id: cs-marital-status
Title: "Marital Status"
Description: "A list of codes for marital status."

* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* #Other "Other"

ValueSet: VSMaritalStatus
Id: vs-marital-status
Title: "Marital Status"
Description: "A list of codes for marital status."
* ^experimental = true
* ^status = #active
* include codes from system CSMaritalStatus

ValueSet: ConfirmedHIVPositiveValueSet
Id: confrirmed-hiv-positive-value-set
Title: "HIV Test Types"
Description: "HIV Test Types"
* ^experimental = false
* ^status = #active
* $LNC#9836-8 "HIV proviral DNA [Presence] in Blood by Probe with amplification"
* $LNC#89365-1 "HIV 1 and 2 Ab panel - Serum, Plasma or Blood by Rapid immunoassay"

ValueSet: HIVTestResultsValueSet
Id: hiv-test-results-value-set
Title: "HIV Test Results"
Description: "HIV Test Results"
* ^experimental = false
* ^status = #active
* $LNC#LA24959-1 "HIV Negative"
* $LNC#LA24955-9 "HIV-1 Positive"
* $LNC#LA11884-6 "Indeterminate"