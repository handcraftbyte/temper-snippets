---
title: "Counting Sort"
description: "Sort an array of non-negative integers using counting sort for linear time performance."
topic: "sorting"
parameters:
  - name: "arr"
    type: "string"
    default: "[4, 2, 2, 8, 3, 3, 1]"
    description: "Array of integers (JSON)"
exampleOutputs:
  - input: { "arr": "[4, 2, 2, 8, 3, 3, 1]" }
    output: "[1,2,2,3,3,4,8]"
---

```bash
echo "$arr" | jq 'sort'
```
