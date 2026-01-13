---
title: "Calculate Percentile"
description: "Calculate the nth percentile of an array"
topic: "math"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    description: "Array of numbers"
  - name: "p"
    type: "number"
    default: 75
    description: "Percentile (0-100)"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "p": 75 }
    output: "7.75"
---

```python
import math
sorted_arr = sorted(arr)
index = (p / 100) * (len(sorted_arr) - 1)
lower = math.floor(index)
fraction = index - lower
return sorted_arr[lower] + fraction * (sorted_arr[lower + 1] - sorted_arr[lower] if lower + 1 < len(sorted_arr) else 0)
```
