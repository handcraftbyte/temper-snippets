---
title: "Is Empty"
description: "Check if a value is empty (null, empty string, list, or dict)"
topic: "validation"
relatedSlugs:
  - "is-empty-javascript"
  - "is-empty-ruby"
  - "is-empty-php"
  - "is-empty-bash"
parameters:
  - name: "value"
    type: "string"
    default: ""
    description: "Value to check"
exampleOutputs:
  - input: { "value": "" }
    output: "True"
  - input: { "value": "[]" }
    output: "True"
  - input: { "value": "{}" }
    output: "True"
  - input: { "value": "[1,2,3]" }
    output: "False"
---

```python
import json
v = '' if value == '' else json.loads(value)
return not v if isinstance(v, (str, list, dict)) else v is None
```
