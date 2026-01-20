---
title: "Count Object Properties"
description: "Count the number of enumerable properties in an object."
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {"a": 1, "b": 2, "c": 3}
    description: "Object"
exampleOutputs:
  - input: { "obj": {"a": 1, "b": 2, "c": 3} }
    output: "3"
  - input: { "obj": {} }
    output: "0"
---

```javascript
Object.keys(obj).length;
```
