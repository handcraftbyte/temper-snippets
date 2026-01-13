---
title: "Binary Search"
description: "Find element index in sorted array using binary search"
topic: "searching"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 3, 5, 7, 9, 11, 13]
    description: "Sorted array"
  - name: "target"
    type: "number"
    default: 7
    description: "Element to find"
exampleOutputs:
  - input: { "arr": [1, 3, 5, 7, 9, 11, 13], "target": 7 }
    output: "3"
---

```python
import bisect
i = bisect.bisect_left(arr, target)
return i if i < len(arr) and arr[i] == target else -1
```
