---
title: "Longest Increasing Subsequence"
description: "Find length of longest increasing subsequence"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [10, 9, 2, 5, 3, 7, 101, 18]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [10, 9, 2, 5, 3, 7, 101, 18] }
    output: "4"
---

```python
dp = [1] * len(arr)
for i in range(1, len(arr)):
    for j in range(i):
        if arr[i] > arr[j]:
            dp[i] = max(dp[i], dp[j] + 1)
max(dp)
```
