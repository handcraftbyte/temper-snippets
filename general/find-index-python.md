---
title: "Find Index"
description: "Find the index of the first element matching a condition."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [{"id": 1}, {"id": 2}, {"id": 3}]
    description: "Array"
  - name: "targetId"
    type: "number"
    default: 2
    description: "ID to find"
exampleOutputs:
  - input: { "arr": [{"id": 1}, {"id": 2}, {"id": 3}], "targetId": 2 }
    output: "1"
  - input: { "arr": [{"id": 1}, {"id": 2}, {"id": 3}], "targetId": 5 }
    output: "-1"
---

```python
next((i for i, item in enumerate(arr) if item['id'] == targetId), -1)
```
