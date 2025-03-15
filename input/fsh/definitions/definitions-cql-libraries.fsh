Instance: ViralLoad
InstanceOf: Library
Title: "CQL - Viral Load (All Patients)"
Description: "CQL Measure that reports on all patients who have a HIV viral load date within the reporting period."
Usage: #definition
//* meta.profile[+] = "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-library"
//* meta.profile[+] = "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-module"

* title = "CQL - Viral Load (All Patients)"
* description = "CQL Measure that reports on all patients who have a HIV viral load date within the reporting period.
    
    Numerator: Count all patients who have an HIV viral load result within the reporting period.

    Denominator: None."

* name = "ViralLoad"
* content.id = "ig-loader-ViralLoad.cql"
//* content.contentType = #text/cql

* status = #active
* experimental = true
* type = $LibraryTypeCodeSystem#logic-library

Instance: HIVCommon
InstanceOf: Library
Title: "CQL - HIV Common"
Description: "Common CQL for HIV calculations."
Usage: #definition
//* meta.profile[+] = "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-library"
//* meta.profile[+] = "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-module"

//* extension[+]
//  * url = "http://hl7.org/fhir/StructureDefinition/cqf-modelInfoSettings"
//  * valueReference = Reference(StarterIGModelInfoSettings)

* title = "CQL - HIV Common"
* description = "Common CQL for HIV calculations."

* name = "HIVCommon"
* content.id = "ig-loader-HIVCommon.cql"
//* content.contentType = #text/cql

* status = #active
* experimental = true
* type = $LibraryTypeCodeSystem#logic-library

Instance: LocalCommon
InstanceOf: Library
Title: "CQL - Local Common"
Description: "Common functions for all CQL calculations."
Usage: #definition
//* meta.profile[+] = "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-library"
//* meta.profile[+] = "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-module"

* title = "CQL - Local Common"
* description = "Common functions for all CQL calculations."

* name = "LocalCommon"
* content.id = "ig-loader-LocalCommon.cql"
//* content.contentType = #text/cql

* status = #active
* experimental = true
* type = $LibraryTypeCodeSystem#logic-library

Instance: ViralLoadStatus
InstanceOf: Library
Title: "CQL - Most Recent Viral Load Status"
Description: "Checks for the most recent viral load and determines the suppression status."
Usage: #definition
//* meta.profile[+] = "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-library"
//* meta.profile[+] = "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-module"

* title = "CQL - Most Recent Viral Load Status"
* description = "Checks for the most recent viral load and determines the suppression status."

* name = "ViralLoadStatus"
* content.id = "ig-loader-ViralLoadStatus.cql"
//* content.contentType = #text/cql

* status = #active
* experimental = true
* type = $LibraryTypeCodeSystem#logic-library

/*Instance: FHIRCommon
InstanceOf: Library
Title: "CQL - FHIRCommon"
Description: "Base FHIRCommon Include."
Usage: #definition
* title =  "CQL - FHIRCommon"
* description = "Base FHIRCommon Include."

* name = "FHIRCommon"
* content.id = "ig-loader-FHIRCommon.cql"

* status = #active
* experimental = true
* type = $LibraryTypeCodeSystem#logic-library

Instance: FHIRHelpers
InstanceOf: Library
Title: "CQL - FHIRHelpers"
Description: "Base FHIRHelpers Include."
Usage: #definition
* title = "CQL - FHIRHelpers"
* description = "Base FHIRHelpers Include."

* name = "FHIRHelpers"
* content.id = "ig-loader-FHIRHelpers.cql"

* status = #active
* experimental = true
* type = $LibraryTypeCodeSystem#logic-library*/

Instance: InitiatedART
InstanceOf: Library
Title: "CQL - HIV+ Patients Initiated on ART"
Description: "CQL Measure that reports on all HIV+ patients who have been initiated on ART within the reporting period."
Usage: #definition
//* meta.profile[+] = "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-library"
//* meta.profile[+] = "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-module"

* title = "CQL - HIV+ Patients Initiated on ART"
* description = "CQL Measure that reports on all HIV+ patients who have been initiated on ART within the reporting period.
    
    Numerator: Count all HIV+ patients who have been initiated on ART within the reporting period.

    Denominator: Count all patients who tested positive for HIV within the reporting period."

* name = "InitiatedART"
* content.id = "ig-loader-InitiatedART.cql"
//* content.contentType = #text/cql

* status = #active
* experimental = true
* type = $LibraryTypeCodeSystem#logic-library

Instance: OutpatientViralLoad
InstanceOf: Library
Title: "CQL - Viral Load (Outpatients only)"
Description: "CQL Measure that reports on all outpatients who have a HIV viral load date within the reporting period."
Usage: #definition
//* meta.profile[+] = "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-library"
//* meta.profile[+] = "http://hl7.org/fhir/uv/cql/StructureDefinition/cql-module"

* title = "CQL - Viral Load (Outpatients only)"
* description = "CQL Measure that reports on all outpatients who have a HIV viral load date within the reporting period.
    
    Numerator: Count all outpatients who have an HIV viral load result within the reporting period.

    Denominator: Count all patients where the encounter class is for outpatient and the encounter date is within the reporting period."

* name = "OutpatientViralLoad"
* content.id = "ig-loader-OutpatientViralLoad.cql"
//* content.contentType = #text/cql

* status = #active
* experimental = true
* type = $LibraryTypeCodeSystem#logic-library