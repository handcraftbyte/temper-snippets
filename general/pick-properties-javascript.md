---
title: "Pick Properties"
description: "Create an object with only the specified properties"
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {"a": 1, "b": 2, "c": 3, "d": 4}
    description: "Object"
  - name: "keys"
    type: "string"
    default: "a,c"
    description: "Comma-separated keys to pick"
exampleOutputs:
  - input: { "obj": {"a": 1, "b": 2, "c": 3, "d": 4}, "keys": "a,c" }
    output: "{\"a\": 1, \"c\": 3}"
---

```javascript
const k = keys.split(',');
return Object.fromEntries(k.filter(key => key in obj).map(key => [key, obj[key]]));
```
