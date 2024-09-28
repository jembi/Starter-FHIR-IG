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