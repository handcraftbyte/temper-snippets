---
title: "Three Sum"
description: "Find all unique triplets that sum to target"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [-1, 0, 1, 2, -1, -4]
    description: "Array of numbers"
  - name: "target"
    type: "number"
    default: 0
    description: "Target sum"
exampleOutputs:
  - input: { "arr": [-1, 0, 1, 2, -1, -4], "target": 0 }
    output: "[[-1, -1, 2], [-1, 0, 1]]"
---

```python
a = sorted(arr)
result = []
for i in range(len(a) - 2):
    if i > 0 and a[i] == a[i - 1]:
        continue
    l, r = i + 1, len(a) - 1
    while l < r:
        s = a[i] + a[l] + a[r]
        if s == target:
            result.append([a[i], a[l], a[r]])
            while l < r and a[l] == a[l + 1]: l += 1
            while l < r and a[r] == a[r - 1]: r -= 1
            l += 1; r -= 1
        elif s < target: l += 1
        else: r -= 1
result
```
