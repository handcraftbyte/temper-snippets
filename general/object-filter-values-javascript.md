---
title: "Object Filter by Values"
description: "Filter object entries based on their values"
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {"a": 1, "b": 5, "c": 3, "d": 8}
    description: "Object to filter"
  - name: "threshold"
    type: "number"
    default: 4
    description: "Minimum value threshold"
exampleOutputs:
  - input: { "obj": {"a": 1, "b": 5, "c": 3, "d": 8}, "threshold": 4 }
    output: "{\"b\":5,\"d\":8}"
---

```javascript
Object.fromEntries(Object.entries(obj).filter(([_, v]) => v >= threshold));
```
