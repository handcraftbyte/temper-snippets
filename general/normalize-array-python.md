---
title: "Normalize Array"
description: "Normalize array values to 0-1 range"
topic: "math"
parameters:
  - name: "arr"
    type: "array"
    default: [10, 20, 30, 40, 50]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [10, 20, 30, 40, 50] }
    output: "[0.0, 0.25, 0.5, 0.75, 1.0]"
---

```python
min_val, max_val = min(arr), max(arr)
r = max_val - min_val
[0 if r == 0 else (x - min_val) / r for x in arr]
```
