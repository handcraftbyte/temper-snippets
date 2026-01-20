---
title: "Maximum Subarray Sum"
description: "Find the maximum sum of a contiguous subarray using Kadane's algorithm."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [-2, 1, -3, 4, -1, 2, 1, -5, 4]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [-2, 1, -3, 4, -1, 2, 1, -5, 4] }
    output: "6"
---

```python
max_sum = current_sum = arr[0]
for x in arr[1:]:
    current_sum = max(x, current_sum + x)
    max_sum = max(max_sum, current_sum)
max_sum
```
