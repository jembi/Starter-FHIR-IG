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

ValueSet: HIVTestType
Id: hiv-test-type-value-set
Title: "HIV Test Types"
Description: "HIV Test Types"
* ^experimental = true
* ^status = #active
* $LNC#9836-8 "HIV proviral DNA [Presence] in Blood by Probe with amplification"
* $LNC#89365-1 "HIV 1 and 2 Ab panel - Serum, Plasma or Blood by Rapid immunoassay"

ValueSet: HIVTestResultsValueSet
Id: hiv-test-results-value-set
Title: "HIV Test Results"
Description: "HIV Test Results"
* ^experimental = true
* ^status = #active
* $LNC#LA24959-1 "HIV Negative"
* $LNC#LA24955-9 "HIV-1 Positive"
* $LNC#LA11884-6 "Indeterminate"

ValueSet: ARVTreatmentValueSet
Id: arv-treatment-value-set
Title: "ARV Drugs"
Description: "A list of codes describing the ARV Drugs."
* ^experimental = true
* ^status = #active
* $LNC#LP21306-3 "Abacavir"
* $LNC#LP14522-4 "Acyclovir"
* $LNC#LP28549-1 "Adefovir"
* $LNC#LP14353-4 "Amantadine"
* $LNC#LP21307-1 "Amprenavir"
* $LNC#LP64721-1 "Amprenavir or Fosamprenavir"
* $LNC#LP31472-1 "Antiretroviral/Anti-HIV"
* $LNC#LP35785-2 "Atazanavir"
* $LNC#LP64715-3 "Atazanavir+Ritonavir"
* $LNC#LP268150-2 "Bictegravir"
* $LNC#LP157328-8 "Boceprevir"
* $LNC#LP420400-6 "Cabotegravir"
* $LNC#LP30899-6 "Cidofovir"
* $LNC#LP220247-3 "Daclatasvir"
* $LNC#LP64724-5 "Darunavir"
* $LNC#LP64726-0 "Darunavir+Ritonavir"
* $LNC#LP21173-7 "Delavirdine"
* $LNC#LP21309-7 "Didanosine"
* $LNC#LP157327-0 "Dolutegravir"
* $LNC#LP310284-7 "Doravirine"
* $LNC#LP21310-5 "Efavirenz"
* $LNC#LP220248-1 "Elbasvir"
* $LNC#LP157318-9 "Elvitegravir"
* $LNC#LP35786-0 "Emtricitabine"
* $LNC#LP157324-7 "Enfuvirtide"
* $LNC#LP96213-1 "Entecavir"
* $LNC#LP68431-3 "Etravirine"
* $LNC#LP157326-2 "Famciclovir"
* $LNC#LP36119-3 "Fosamprenavir"
* $LNC#LP15741-9 "Ganciclovir"
* $LNC#LP343292-1 "Glecaprevir"
* $LNC#LP21311-3 "Indinavir"
* $LNC#LP64716-1 "Indinavir+Ritonavir"
* $LNC#LP220249-9 "Ledipasvir"
* $LNC#LP28756-2 "Lopinavir"
* $LNC#LP266720-4 "Maraviroc"
* $LNC#LP157325-4 "Maribavir"
* $LNC#LP21313-9 "Nelfinavir"
* $LNC#LP21317-0 "Nevirapine"
* $LNC#LP220250-7 "Ombitasvir"
* $LNC#LP35840-5 "Oritavancin"
* $LNC#LP101308-7 "Oseltamivir"
* $LNC#LP101310-3 "Oseltamivir+Zanamivir"
* $LNC#LP101038-0 "Penciclovir"
* $LNC#LP343295-4 "Pibrentasvir"
* $LNC#LP102418-3 "Raltegravir"
* $LNC#LP35809-0 "Ribavirin"
* $LNC#LP21314-7 "Ritonavir"
* $LNC#LP14466-4 "Saquinavir"
* $LNC#LP64718-7 "Saquinavir+Ritonavir"
* $LNC#LP220265-5 "Sofosbuvir"
* $LNC#LP21315-4 "Stavudine"
* $LNC#LP157329-6 "Telaprevir"
* $LNC#LP96214-9 "Telbivudine"
* $LNC#LP28761-2 "Tenofovir"
* $LNC#LP36120-1 "Tipranavir"
* $LNC#LP64719-5 "Tipranavir+Ritonavir"
* $LNC#LP343299-6 "Voxilaprevir"
* $LNC#LP21316-2 "Zalcitabine"
* $LNC#LP101309-5 "Zanamivir"
* $LNC#LP16744-2 "Zidovudine"
* $LNC#LP21312-1 "lamiVUDine"
* $LNC#LP64717-9 "lamiVUDine or Emtricitabine"
* $LNC#LP157730-5 "valGANciclovir"

ValueSet: ARTFollowUpStatusValueSet
Id: art-follow-up-status-value-set
Title: "Follow Up Status"
Description: "FollowUp Status"
* ^experimental = true
* ^status = #active
* $SCT#129019007 "Taking medication"
* $LNC#45257-3 "Date dropped from HIV treatment"
* $LNC#45256-5 "HIV treatment clinic transferred to"
* $LNC#91382-2 "Date medication stopped - Reported"
* $LNC#45237-5 "Date lost to HIV treatment follow-up"
* $LNC#77978-5 "Patient died from illness of interest"
* $LNC#63936-9 "Start date of treatment or therapy"

CodeSystem: AbsentUnknownCodeSystem
Id: absent-unknown-code-system
Title: "Absent or Unknown"
Description: "Codes used for indicating when a value is absent or unknown."
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* #Absent-or-unknown "Absent or unknown" "When the value is not available at the time of the event"
* #Not-Applicable "Not Applicable" "The value is not applicable for one or more reasons that are captured by the clinician"

CodeSystem: YesNoCodeSystem
Id: yes-no-code-system
Title: "Yes/No"
Description: "Yes/No Codes Represented as Boolean."
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* #true "Yes"
* #false "No"

ValueSet: YesNoValueSet
Id: yes-no-value-set
Title: "Yes/No"
Description: "Yes/No Codes Represented as Boolean."
* ^experimental = true
* ^status = #active
* $AbsentUnknownCodeSystem#Not-Applicable
* include codes from system YesNoCodeSystem

ValueSet: BreastfeedingStatusValueSet
Id: breastfeeding-status-value-set
Title: "Breastfeeding Status"
Description: "Codes used for indicating the breastfeedig status."
* ^experimental = true
* ^status = #active
* $LNC#LA29252-6 "Currently breastfeeding"
* $LNC#LA29253-4 "Not currently breastfeeding"