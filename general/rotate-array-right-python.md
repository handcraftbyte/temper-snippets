---
title: "Rotate Array Right"
description: "Rotate array elements to the right by a specified number of positions, wrapping elements around."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5]
    description: "Array to rotate"
  - name: "n"
    type: "number"
    default: 2
    description: "Positions to rotate"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5], "n": 2 }
    output: "[4, 5, 1, 2, 3]"
---

```python
k = n % len(arr)
arr[-k:] + arr[:-k]
```
