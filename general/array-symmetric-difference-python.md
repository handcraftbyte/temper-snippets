---
title: "Symmetric Difference"
description: "Find elements in either array but not in both (exclusive OR)."
topic: "arrays"
parameters:
  - name: "arr1"
    type: "array"
    default: [1, 2, 3, 4, 5]
    description: "First array"
  - name: "arr2"
    type: "array"
    default: [3, 4, 5, 6, 7]
    description: "Second array"
exampleOutputs:
  - input: { "arr1": [1, 2, 3, 4, 5], "arr2": [3, 4, 5, 6, 7] }
    output: "[1, 2, 6, 7]"
---

```python
set_a, set_b = set(arr1), set(arr2)
[x for x in arr1 if x not in set_b] + [x for x in arr2 if x not in set_a]
```
