---
title: "Rename Object Keys"
description: "Rename keys in an object based on a provided mapping of old key names to new key names."
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {"oldName": "John", "oldAge": 30}
    description: "Object with keys to rename"
  - name: "keyMap"
    type: "object"
    default: {"oldName": "name", "oldAge": "age"}
    description: "Mapping of old to new keys"
exampleOutputs:
  - input: { "obj": {"oldName": "John", "oldAge": 30}, "keyMap": {"oldName": "name", "oldAge": "age"} }
    output: "{\"name\":\"John\",\"age\":30}"
---

```javascript
Object.fromEntries(Object.entries(obj).map(([k, v]) => [keyMap[k] || k, v]));
```
