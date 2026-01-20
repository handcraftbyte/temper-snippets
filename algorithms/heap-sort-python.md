---
title: "Heap Sort"
description: "Sort an array using the heap sort algorithm with O(n log n) time complexity."
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
def heapify(a, n, i):
    largest, l, r = i, 2 * i + 1, 2 * i + 2
    if l < n and a[l] > a[largest]: largest = l
    if r < n and a[r] > a[largest]: largest = r
    if largest != i:
        a[i], a[largest] = a[largest], a[i]
        heapify(a, n, largest)

a = arr.copy()
n = len(a)
for i in range(n // 2 - 1, -1, -1): heapify(a, n, i)
for i in range(n - 1, 0, -1):
    a[0], a[i] = a[i], a[0]
    heapify(a, i, 0)
return a
```
