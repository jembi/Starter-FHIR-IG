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

RuleSet: DescriptionForProfilesInstantiatingLogicalModels(logicalModelName, resourceType)
* ^description = "A profile representing the {resourceType} exchange requirements in the Logical Model \"{logicalModelName}\".
Refer to the Mappings tab to see the data element associations between this profile and the Logical Model."