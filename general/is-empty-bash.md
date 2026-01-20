---
title: "Is Empty"
description: "Check if a value is empty."
topic: "validation"
relatedSlugs:
  - "is-empty-javascript"
  - "is-empty-python"
  - "is-empty-ruby"
  - "is-empty-php"
parameters:
  - name: "value"
    type: "string"
    default: ""
    description: "Value to check"
exampleOutputs:
  - input: { "value": "" }
    output: "true"
  - input: { "value": "[]" }
    output: "true"
  - input: { "value": "{}" }
    output: "true"
  - input: { "value": "[1,2,3]" }
    output: "false"
---

```bash
[[ -z "$value" || "$value" == "[]" || "$value" == "{}" || "$value" == "null" ]] && echo "true" || echo "false"
```
