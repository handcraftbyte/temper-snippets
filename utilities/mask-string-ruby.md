---
title: "Mask String"
description: "Mask a string showing only the last few characters (useful for credit cards, SSN)"
topic: "strings"
relatedSlugs:
  - "mask-string-javascript"
  - "mask-string-python"
  - "mask-string-php"
  - "mask-string-bash"
parameters:
  - name: "str"
    type: "string"
    default: "4532015112830366"
    description: "The string to mask"
  - name: "visibleChars"
    type: "number"
    default: 4
    description: "Number of characters to show at the end"
  - name: "maskChar"
    type: "string"
    default: "*"
    description: "Character to use for masking"
exampleOutputs:
  - input: { "str": "4532015112830366", "visibleChars": 4, "maskChar": "*" }
    output: "************0366"
  - input: { "str": "123-45-6789", "visibleChars": 4, "maskChar": "X" }
    output: "XXXXXXX6789"
---

```ruby
maskChar * (str.length - visibleChars) + str[-visibleChars..-1]
```
