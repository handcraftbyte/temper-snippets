---
title: "Index By Property"
description: "Create an object indexed by a property value"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [{"id": 1, "name": "Alice"}, {"id": 2, "name": "Bob"}]
    description: "Array of objects"
  - name: "key"
    type: "string"
    default: "id"
    description: "Property to index by"
exampleOutputs:
  - input: { "arr": [{"id": 1, "name": "Alice"}, {"id": 2, "name": "Bob"}], "key": "id" }
    output: "{'1': {'id': 1, 'name': 'Alice'}, '2': {'id': 2, 'name': 'Bob'}}"
---

```python
{str(item[key]): item for item in arr}
```
