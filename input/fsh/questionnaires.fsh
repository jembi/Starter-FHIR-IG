Instance: PregnancyStatusAndFPMQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire - Pregnancy Status and Family Planning Method (FPM)"
Description: "A questionaire that provides the questions to for pregnancy status and FPM."
* status = #draft
* subjectType = #Observation
* name = "PregnancyStatusAndFPMQuestionnaire"
* experimental = true

* insert Question(1.1, Is breastfeeding, choice, false, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $LNC#63895-7
