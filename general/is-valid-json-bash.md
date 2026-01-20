---
title: "Validate JSON"
description: "Check if a string is valid JSON."
topic: "validation"
relatedSlugs:
  - "is-valid-json-javascript"
  - "is-valid-json-python"
  - "is-valid-json-ruby"
  - "is-valid-json-php"
parameters:
  - name: "str"
    type: "string"
    default: "{\"name\": \"John\", \"age\": 30}"
    description: "The string to validate as JSON"
exampleOutputs:
  - input: { "str": "{\"name\": \"John\", \"age\": 30}" }
    output: "true"
  - input: { "str": "{invalid json}" }
    output: "false"
  - input: { "str": "[1, 2, 3]" }
    output: "true"
---

```bash
echo "$str" | jq . >/dev/null 2>&1 && echo "true" || echo "false"
```
