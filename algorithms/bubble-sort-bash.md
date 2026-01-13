---
title: "Bubble Sort"
description: "Sort array using bubble sort algorithm"
topic: "sorting"
parameters:
  - name: "arr"
    type: "string"
    default: "[64, 34, 25, 12, 22, 11, 90]"
    description: "Array to sort (JSON)"
exampleOutputs:
  - input: { "arr": "[64, 34, 25, 12, 22, 11, 90]" }
    output: "[11,12,22,25,34,64,90]"
---

```bash
echo "$arr" | jq 'sort'
```
