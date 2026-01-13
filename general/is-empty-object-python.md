---
title: "Is Empty Object"
description: "Check if an object has no properties"
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {}
    description: "Object to check"
exampleOutputs:
  - input: { "obj": {} }
    output: "True"
  - input: { "obj": { "a": 1 } }
    output: "False"
---

```python
len(obj) == 0
```
