CodeSystem: CSMaritalStatus
Id: cs-marital-status
Title: "Marital Status"
Description: "A list of codes for marital status.
    
    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* #Other "Other"

ValueSet: VSMaritalStatus
Id: vs-marital-status
Title: "Marital Status"
Description: "A list of codes for marital status.
    
    Note: This is for demonstrable purposes only!"
* ^experimental = true
* ^status = #active
* include codes from system CSMaritalStatus

/*CodeSystem: CSLogicalModel
Id: cs-logical-model
Title: "Logical Model"
Description: "A list of codes for identifying logical models.
    
    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* #PatientLogicalModel "Patient Logical Model"

ValueSet: VSLogicalModel
Id: vs-logical-model
Title: "Logical Model"
Description: "A list of codes for identifying logical models.
    
    Note: This is for demonstrable purposes only!"

* ^experimental = true
* ^status = #active
* include codes from system CSLogicalModel*/