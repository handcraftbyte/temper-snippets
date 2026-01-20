---
title: "Deep Clone Object"
description: "Create a deep copy of an object (handles nested objects and arrays)."
topic: "objects"
parameters:
  - name: "obj"
    type: "string"
    default: "{\"a\": 1, \"b\": {\"c\": 2}, \"d\": [1, 2, 3]}"
    description: "JSON object to clone"
exampleOutputs:
  - input: { "obj": "{\"a\": 1, \"b\": {\"c\": 2}}" }
    output: "{\"a\":1,\"b\":{\"c\":2}}"
---

```bash
echo "$obj" | jq '.'
```
