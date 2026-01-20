---
title: "Object Diff"
description: "Find the differences between two objects, showing changed, added, and removed keys."
topic: "objects"
parameters:
  - name: "obj1"
    type: "object"
    default: {"a": 1, "b": 2, "c": 3}
    description: "First object"
  - name: "obj2"
    type: "object"
    default: {"a": 1, "b": 5, "d": 4}
    description: "Second object"
exampleOutputs:
  - input: { "obj1": {"a": 1, "b": 2, "c": 3}, "obj2": {"a": 1, "b": 5, "d": 4} }
    output: "{\"b\":{\"old\":2,\"new\":5},\"c\":{\"old\":3},\"d\":{\"new\":4}}"
---

```javascript
const keys = new Set([...Object.keys(obj1), ...Object.keys(obj2)]);
Object.fromEntries([...keys].filter(k => obj1[k] !== obj2[k]).map(k => [k, { old: obj1[k], new: obj2[k] }]));
```
