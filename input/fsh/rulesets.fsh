RuleSet: Slice(item, definition, discriminatorType, discriminatorPath, rule, description, ordered)
* {item} 
  * ^definition = "{definition}"
  * ^slicing.discriminator[+].type = #{discriminatorType}
  * ^slicing.discriminator[=].path = "{discriminatorPath}"
  * ^slicing.rules = #{rule}
  * ^slicing.description = "{description}"
  * ^slicing.ordered = {ordered}

RuleSet: SliceForResolve(item, definition, rule, description, ordered)
* {item} 
  * ^definition = "{definition}"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "resolve()"
  * ^slicing.rules = #{rule}
  * ^slicing.description = "{description}"
  * ^slicing.ordered = {ordered}

RuleSet: Mappings(identity, map)
* ^mapping[+].identity = "{identity}"
* ^mapping[=].map = "{identity}.{map}"

RuleSet: EmptyMapping(identity)
* ^mapping[+].identity = "{identity}"
* ^mapping[=].map = "N/A"

RuleSet: DescriptionForProfilesInstantiatingLogicalModels(logicalModelName, resourceType)
* ^description = "A profile representing the {resourceType} exchange requirements in the Logical Model \"{logicalModelName}\".
Refer to the Mappings tab to see the data element associations between this profile and the Logical Model."

RuleSet: ElementMap(source, target, equivalence)
* element[+]
  * code = #{source}
  * target[+]
    * code = #{target}
    * equivalence = #{equivalence}

RuleSet: QuestionResponse(linkId, text, dataType, dataValue)
* item[+]
  * linkId = "{linkId}"
  * text = "{text}"
  * answer[+].{dataType} = {dataValue}

RuleSet: Question(linkId, text, type, required, repeats)
* item[+].linkId = "{linkId}"
* item[=].text = "{text}"
* item[=].type = #{type}
* item[=].repeats = {repeats}
* item[=].required = {required}