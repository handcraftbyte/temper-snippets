---
title: "Is Empty Object"
description: "Check if an object has no properties."
topic: "objects"
parameters:
  - name: "obj"
    type: "string"
    default: "{}"
    description: "JSON object to check"
exampleOutputs:
  - input: { "obj": "{}" }
    output: "true"
  - input: { "obj": "{\"a\": 1}" }
    output: "false"
---

```bash
[[ $(echo "$obj" | jq 'keys | length') -eq 0 ]] && echo "true" || echo "false"
```
