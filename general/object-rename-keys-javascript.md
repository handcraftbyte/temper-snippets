---
title: "Object Rename Keys"
description: "Rename keys in an object based on a mapping"
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {"firstName": "John", "lastName": "Doe"}
    description: "Source object"
  - name: "keyMap"
    type: "object"
    default: {"firstName": "first", "lastName": "last"}
    description: "Key mapping"
exampleOutputs:
  - input: { "obj": {"firstName": "John", "lastName": "Doe"}, "keyMap": {"firstName": "first", "lastName": "last"} }
    output: "{\"first\":\"John\",\"last\":\"Doe\"}"
---

```javascript
Object.fromEntries(Object.entries(obj).map(([k, v]) => [keyMap[k] || k, v]));
```
