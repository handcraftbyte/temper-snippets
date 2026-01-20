---
title: "Object Pick"
description: "Create a new object with only the specified keys from the original."
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {"a": 1, "b": 2, "c": 3, "d": 4}
    description: "Source object"
  - name: "keys"
    type: "array"
    default: ["a", "c"]
    description: "Keys to pick"
exampleOutputs:
  - input: { "obj": {"a": 1, "b": 2, "c": 3, "d": 4}, "keys": ["a", "c"] }
    output: "{\"a\":1,\"c\":3}"
---

```javascript
keys.reduce((acc, key) => key in obj ? { ...acc, [key]: obj[key] } : acc, {});
```
