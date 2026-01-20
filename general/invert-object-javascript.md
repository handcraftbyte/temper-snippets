---
title: "Invert Object"
description: "Swap keys and values in an object."
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {"a": "1", "b": "2", "c": "3"}
    description: "Object to invert"
exampleOutputs:
  - input: { "obj": {"a": "1", "b": "2", "c": "3"} }
    output: "{\"1\": \"a\", \"2\": \"b\", \"3\": \"c\"}"
---

```javascript
Object.fromEntries(Object.entries(obj).map(([k, v]) => [v, k]));
```
