---
title: "Is Numeric"
description: "Check if a string represents a valid number"
topic: "validation"
relatedSlugs:
  - "is-numeric-javascript"
  - "is-numeric-ruby"
  - "is-numeric-php"
  - "is-numeric-bash"
parameters:
  - name: "str"
    type: "string"
    default: "123.45"
    description: "The string to check"
exampleOutputs:
  - input: { "str": "123.45" }
    output: "True"
  - input: { "str": "-42" }
    output: "True"
  - input: { "str": "12abc" }
    output: "False"
---

```python
try:
    float(str)
    result = True
except:
    result = False
result
```
