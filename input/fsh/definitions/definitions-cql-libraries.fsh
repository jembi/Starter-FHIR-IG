Instance: ViralLoadLibrary
InstanceOf: Library
Title: "CQL - Viral Load (All Patients)"
Description: "CQL Measure that reports on all patients who have a HIV viral load date within the reporting period."
Usage: #definition
* title = "CQL - Viral Load (All Patients)"
* description = "CQL Measure that reports on all patients who have a HIV viral load date within the reporting period.
    
    Numerator: Count all patients who have an HIV viral load result within the reporting period.

    Denominator: None."

* name = "ViralLoadLibrary"
* content.id = "ig-loader-ViralLoad.cql"
* status = #draft
* experimental = true
* type = $LibraryTypeCodeSystem#logic-library

Instance: HIVCommonLibrary
InstanceOf: Library
Title: "CQL - HIV Common"
Description: "Common CQL for HIV calculations."
Usage: #definition
//* extension[+]
//  * url = "http://hl7.org/fhir/StructureDefinition/cqf-modelInfoSettings"
//  * valueReference = Reference(StarterIGModelInfoSettings)

* title = "CQL - HIV Common"
* description = "Common CQL for HIV calculations."

* name = "HIVCommonLibrary"
* content.id = "ig-loader-HIVCommon.cql"

* status = #draft
* experimental = true
* type = $LibraryTypeCodeSystem#logic-library

Instance: LocalCommonLibrary
InstanceOf: Library
Title: "CQL - Local Common"
Description: "Common functions for all CQL calculations."
Usage: #definition
* title = "CQL - Local Common"
* description = "Common functions for all CQL calculations."

* name = "LocalCommonLibrary"
* content.id = "ig-loader-LocalCommon.cql"

* status = #draft
* experimental = true
* type = $LibraryTypeCodeSystem#logic-library

Instance: ViralLoadStatusLibrary
InstanceOf: Library
Title: "CQL - Most Recent Viral Load Status"
Description: "Checks for the most recent viral load and determines the suppression status."
Usage: #definition
* title = "CQL - Most Recent Viral Load Status"
* description = "Checks for the most recent viral load and determines the suppression status."

* name = "ViralLoadStatusLibrary"
* content.id = "ig-loader-ViralLoadStatus.cql"

* status = #draft
* experimental = true
* type = $LibraryTypeCodeSystem#logic-library

Instance: FHIRCommonLibrary
InstanceOf: Library
Title: "CQL - FHIRCommon"
Description: "Base FHIRCommon Include."
Usage: #definition
* title =  "CQL - FHIRCommon"
* description = "Base FHIRCommon Include."

* name = "FHIRCommonLibrary"
* content.id = "ig-loader-FHIRCommon.cql"

* status = #draft
* experimental = true
* type = $LibraryTypeCodeSystem#logic-library

Instance: FHIRHelpersLibrary
InstanceOf: Library
Title: "CQL - FHIRHelpers"
Description: "Base FHIRHelpers Include."
Usage: #definition
* title = "CQL - FHIRHelpers"
* description = "Base FHIRHelpers Include."

* name = "FHIRHelpersLibrary"
* content.id = "ig-loader-FHIRHelpers.cql"

* status = #draft
* experimental = true
* type = $LibraryTypeCodeSystem#logic-library

Instance: InitiatedARTLibrary
InstanceOf: Library
Title: "CQL - HIV+ Patients Initiated on ART"
Description: "CQL Measure that reports on all HIV+ patients who have been initiated on ART within the reporting period."
Usage: #definition

* title = "CQL - HIV+ Patients Initiated on ART"
* description = "CQL Measure that reports on all HIV+ patients who have been initiated on ART within the reporting period.
    
    Numerator: Count all HIV+ patients who have been initiated on ART within the reporting period.

    Denominator: Count all patients who tested positive for HIV within the reporting period."

* name = "InitiatedARTLibrary"
* content.id = "ig-loader-InitiatedART.cql"

* status = #draft
* experimental = true
* type = $LibraryTypeCodeSystem#logic-library

Instance: OutpatientViralLoadLibrary
InstanceOf: Library
Title: "CQL - Viral Load (Outpatients only)"
Description: "CQL Measure that reports on all outpatients who have a HIV viral load date within the reporting period."
Usage: #definition
* title = "CQL - Viral Load (Outpatients only)"
* description = "CQL Measure that reports on all outpatients who have a HIV viral load date within the reporting period.
    
    Numerator: Count all outpatients who have an HIV viral load result within the reporting period.

    Denominator: Count all patients where the encounter class is for outpatient and the encounter date is within the reporting period."

* name = "OutpatientViralLoadLibrary"
* content.id = "ig-loader-OutpatientViralLoad.cql"

* status = #draft
* experimental = true
* type = $LibraryTypeCodeSystem#logic-library