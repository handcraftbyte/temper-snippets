---
title: "Two Sum"
description: "Find indices of two numbers that add up to target"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [2, 7, 11, 15]
    description: "Array of numbers"
  - name: "target"
    type: "number"
    default: 9
    description: "Target sum"
exampleOutputs:
  - input: { "arr": [2, 7, 11, 15], "target": 9 }
    output: "[0, 1]"
---

```python
seen = {}
result = None
for i, num in enumerate(arr):
    complement = target - num
    if complement in seen:
        result = [seen[complement], i]
        break
    seen[num] = i
result
```
