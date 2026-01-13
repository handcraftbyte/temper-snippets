---
title: "Object Has Key"
description: "Check if object has a specific key (supports nested paths)"
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {"a": {"b": {"c": 1}}}
    description: "Object to check"
  - name: "path"
    type: "string"
    default: "a.b.c"
    description: "Key path (dot notation)"
exampleOutputs:
  - input: { "obj": {"a": {"b": {"c": 1}}}, "path": "a.b.c" }
    output: "true"
---

```javascript
path.split('.').reduce((acc, key) => acc && acc[key] !== undefined ? acc[key] : undefined, obj) !== undefined;
```
