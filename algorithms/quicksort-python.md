---
title: "Quicksort"
description: "Sort an array using the quicksort algorithm with average O(n log n) time complexity."
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
def quicksort(a):
    if len(a) <= 1:
        return a
    pivot = a[0]
    return quicksort([x for x in a[1:] if x <= pivot]) + [pivot] + quicksort([x for x in a[1:] if x > pivot])
return quicksort(arr)
```
