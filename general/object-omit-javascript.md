---
title: "Object Omit"
description: "Create a new object with specified keys omitted from the original."
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {"a": 1, "b": 2, "c": 3, "d": 4}
    description: "Source object"
  - name: "keys"
    type: "array"
    default: ["b", "d"]
    description: "Keys to omit"
exampleOutputs:
  - input: { "obj": {"a": 1, "b": 2, "c": 3, "d": 4}, "keys": ["b", "d"] }
    output: "{\"a\":1,\"c\":3}"
---

```javascript
const k = new Set(keys);
return Object.fromEntries(Object.entries(obj).filter(([key]) => !k.has(key)));
```
