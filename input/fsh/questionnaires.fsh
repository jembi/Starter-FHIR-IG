Instance: PregnancyStatusQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire - Pregnancy Status"
Description: "A questionaire that provides the questions for pregnancy status."
* status = #active
* subjectType = #Observation
* name = "PregnancyStatusQuestionnaire"
* experimental = true

* insert Question(1.1, Is breastfeeding, choice, true, false)
* item[=]
  * answerValueSet = Canonical(YesNoValueSet)
  * code = $LNC#63895-7
