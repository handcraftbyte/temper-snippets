---
title: "Merge Objects"
description: "Merge two objects together (shallow merge)"
topic: "objects"
parameters:
  - name: "obj1"
    type: "object"
    default: { "a": 1, "b": 2 }
    description: "First object"
  - name: "obj2"
    type: "object"
    default: { "b": 3, "c": 4 }
    description: "Second object (overwrites first)"
exampleOutputs:
  - input: { "obj1": { "a": 1, "b": 2 }, "obj2": { "b": 3, "c": 4 } }
    output: "{'a': 1, 'b': 3, 'c': 4}"
---

```python
{**obj1, **obj2}
```
