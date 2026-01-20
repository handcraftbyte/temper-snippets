---
title: "Selection Sort"
description: "Sort an array using the selection sort algorithm by repeatedly finding the minimum element."
topic: "sorting"
parameters:
  - name: "arr"
    type: "array"
    default: [64, 34, 25, 12, 22, 11, 90]
    description: "Array to sort"
exampleOutputs:
  - input: { "arr": [64, 34, 25, 12, 22, 11, 90] }
    output: "[11, 12, 22, 25, 34, 64, 90]"
---

```python
a = arr.copy()
for i in range(len(a)):
    min_idx = i
    for j in range(i + 1, len(a)):
        if a[j] < a[min_idx]:
            min_idx = j
    a[i], a[min_idx] = a[min_idx], a[i]
return a
```
