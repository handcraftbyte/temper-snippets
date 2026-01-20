---
title: "Validate JSON"
description: "Check if a string is valid JSON."
topic: "validation"
relatedSlugs:
  - "is-valid-json-javascript"
  - "is-valid-json-ruby"
  - "is-valid-json-php"
  - "is-valid-json-bash"
parameters:
  - name: "str"
    type: "string"
    default: "{\"name\": \"John\", \"age\": 30}"
    description: "The string to validate as JSON"
exampleOutputs:
  - input: { "str": "{\"name\": \"John\", \"age\": 30}" }
    output: "True"
  - input: { "str": "{invalid json}" }
    output: "False"
  - input: { "str": "[1, 2, 3]" }
    output: "True"
---

```python
import json
try:
    json.loads(str)
    result = True
except:
    result = False
return result
```
