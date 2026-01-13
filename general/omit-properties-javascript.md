---
title: "Omit Properties"
description: "Create an object without the specified properties"
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {"a": 1, "b": 2, "c": 3, "d": 4}
    description: "Object"
  - name: "keys"
    type: "string"
    default: "b,d"
    description: "Comma-separated keys to omit"
exampleOutputs:
  - input: { "obj": {"a": 1, "b": 2, "c": 3, "d": 4}, "keys": "b,d" }
    output: "{\"a\": 1, \"c\": 3}"
---

```javascript
const k = new Set(keys.split(','));
return Object.fromEntries(Object.entries(obj).filter(([key]) => !k.has(key)));
```
