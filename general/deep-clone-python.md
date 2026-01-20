---
title: "Deep Clone Object"
description: "Create a deep copy of an object (handles nested objects and arrays)."
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: { "a": 1, "b": { "c": 2 }, "d": [1, 2, 3] }
    description: "Object to clone"
exampleOutputs:
  - input: { "obj": { "a": 1, "b": { "c": 2 } } }
    output: "{'a': 1, 'b': {'c': 2}}"
---

```python
import copy
return copy.deepcopy(obj)
```
