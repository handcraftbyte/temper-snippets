---
title: "Pad String Start"
description: "Pad a string from the start with a specified character to reach a target length."
topic: "strings"
relatedSlugs:
  - "pad-start-javascript"
  - "pad-start-python"
  - "pad-start-php"
  - "pad-start-bash"
parameters:
  - name: "str"
    type: "string"
    default: "42"
    description: "The string to pad"
  - name: "length"
    type: "number"
    default: 5
    description: "Target length of the result"
  - name: "char"
    type: "string"
    default: "0"
    description: "Character to pad with"
exampleOutputs:
  - input: { "str": "42", "length": 5, "char": "0" }
    output: "00042"
  - input: { "str": "7", "length": 2, "char": "0" }
    output: "07"
---

```ruby
str.rjust(length, char)
```
