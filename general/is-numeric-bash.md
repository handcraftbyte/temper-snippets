---
title: "Is Numeric"
description: "Check if a string represents a valid number"
topic: "validation"
relatedSlugs:
  - "is-numeric-javascript"
  - "is-numeric-python"
  - "is-numeric-ruby"
  - "is-numeric-php"
parameters:
  - name: "str"
    type: "string"
    default: "123.45"
    description: "The string to check"
exampleOutputs:
  - input: { "str": "123.45" }
    output: "true"
  - input: { "str": "-42" }
    output: "true"
  - input: { "str": "12abc" }
    output: "false"
---

```bash
[[ "$str" =~ ^-?[0-9]*\.?[0-9]+$ ]] && echo "true" || echo "false"
```
