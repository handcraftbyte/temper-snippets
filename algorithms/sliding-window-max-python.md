---
title: "Sliding Window Maximum"
description: "Find the maximum value in each sliding window of size k as it moves across the array."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 3, -1, -3, 5, 3, 6, 7]
    description: "Array of numbers"
  - name: "k"
    type: "number"
    default: 3
    description: "Window size"
exampleOutputs:
  - input: { "arr": [1, 3, -1, -3, 5, 3, 6, 7], "k": 3 }
    output: "[3, 3, 5, 5, 6, 7]"
---

```python
[max(arr[i:i+k]) for i in range(len(arr) - k + 1)]
```
