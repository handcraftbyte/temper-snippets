---
title: "Object Map Values"
description: "Apply a transformation to all object values"
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {"a": 1, "b": 2, "c": 3}
    description: "Object to transform"
exampleOutputs:
  - input: { "obj": {"a": 1, "b": 2, "c": 3} }
    output: "{\"a\":2,\"b\":4,\"c\":6}"
---

```javascript
Object.fromEntries(Object.entries(obj).map(([k, v]) => [k, v * 2]));
```
