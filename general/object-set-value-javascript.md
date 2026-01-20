---
title: "Object Set Nested Value"
description: "Set a value at a nested path in an object using dot notation."
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {"a": {"b": {}}}
    description: "Object to modify"
  - name: "path"
    type: "string"
    default: "a.b.c"
    description: "Key path (dot notation)"
  - name: "value"
    type: "number"
    default: 42
    description: "Value to set"
exampleOutputs:
  - input: { "obj": {"a": {"b": {}}}, "path": "a.b.c", "value": 42 }
    output: "{\"a\":{\"b\":{\"c\":42}}}"
---

```javascript
const o = structuredClone(obj);
const parts = path.split('.');
let current = o;
for (let i = 0; i < parts.length - 1; i++) {
  current[parts[i]] = current[parts[i]] || {};
  current = current[parts[i]];
}
current[parts[parts.length - 1]] = value;
return o;
```
