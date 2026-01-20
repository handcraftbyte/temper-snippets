---
title: "Partition Array"
description: "Split an array into two groups based on a condition."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    description: "Array to partition"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] }
    output: "[[2, 4, 6, 8, 10], [1, 3, 5, 7, 9]]"
---

```python
[[x for x in arr if x % 2 == 0], [x for x in arr if x % 2 != 0]]
```
