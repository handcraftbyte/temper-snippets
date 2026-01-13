---
title: "Get Nested Value"
description: "Safely get a nested property value from an object"
topic: "objects"
parameters:
  - name: "obj"
    type: "string"
    default: "{\"user\": {\"profile\": {\"name\": \"John\"}}}"
    description: "JSON object"
  - name: "path"
    type: "string"
    default: "user.profile.name"
    description: "Dot-separated path to property"
exampleOutputs:
  - input: { "obj": "{\"user\": {\"profile\": {\"name\": \"John\"}}}", "path": "user.profile.name" }
    output: "John"
---

```bash
echo "$obj" | jq -r ".${path//./\".\"}" 2>/dev/null || echo "null"
```
