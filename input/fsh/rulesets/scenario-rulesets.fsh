RuleSet: ScenarioActor(actorId, type, name, description)
* actor[+]
  * key = "{actorId}"
  * type = #{type}
  * title = "{name}"
  * description = "{description}"

RuleSet: BasicScenarioInstance(resourceId, resourceType, name, description)
* instance[+]
  * key = "{resourceId}"
  * structureType = http://hl7.org/fhir/fhir-types#{resourceType}
  * title = "{name}"
  * description = "{description}"

  RuleSet: ScenarioInstance(resourceId, resourceType, name, description, structureProfileCanonical, exampleResource)
* instance[+]
  * key = "{resourceId}"
  * structureType = http://hl7.org/fhir/fhir-types#{resourceType}
  * title = "{name}"
  * description = "{description}"
  * structureProfileCanonical	= Canonical({structureProfileCanonical})
  * content = Reference({exampleResource})

RuleSet: ScenarioContainedInstance(resourceId)
* instance[=]
  * containedInstance[+]
    * instanceReference = "{resourceId}"

RuleSet: ScenarioProcess(number, title, preConditions, postConditions)
* process[+]
  * step[+]
    * number = "{number}"
  * title = "{title}"
  * preConditions = "{preConditions}"
  * postConditions = "{postConditions}"

RuleSet: ScenarioProcessStep(number, name, initiator, receiver, description)
* step[+]
  * number = "{number}"
  * operation
    * title = "{name}"
    * initiator = "{initiator}"
    * receiver = "{receiver}"
    * description = "{description}"

RuleSet: ScenarioInstanceWithVersion(resourceId, resourceType, name, description, structureProfileCanonical, exampleResource, versionKey, versionTitle, versionDescription)
* instance[+]
  * key = "{resourceId}"
  * structureType = http://hl7.org/fhir/fhir-types#{resourceType}
  * title = "{name}"
  * description = "{description}"
  * structureProfileCanonical	= Canonical({structureProfileCanonical})
  * insert ScenarioInstanceVersion({exampleResource}, {versionKey}, {versionTitle}, {versionDescription})

RuleSet: ScenarioContainedInstanceWithVersion(resourceId, versionReference)
* instance[=]
  * containedInstance[+]
    * instanceReference = "{resourceId}"
    * versionReference = "{versionReference}"

RuleSet: ScenarioInstanceVersion(exampleResource, versionKey, versionTitle, versionDescription)
* version[+]
  * key = "{versionKey}"
  * title = "{versionTitle}"
  * description = "{versionDescription}"
  * content = Reference({exampleResource})