---
title: "Counting Sort"
description: "Sort an array of non-negative integers using counting sort for linear time performance."
topic: "sorting"
parameters:
  - name: "arr"
    type: "array"
    default: [4, 2, 2, 8, 3, 3, 1]
    description: "Array of integers"
exampleOutputs:
  - input: { "arr": [4, 2, 2, 8, 3, 3, 1] }
    output: "[1, 2, 2, 3, 3, 4, 8]"
---

```python
count = [0] * (max(arr) + 1)
for x in arr:
    count[x] += 1
result = []
for i, c in enumerate(count):
    result.extend([i] * c)
return result
```
