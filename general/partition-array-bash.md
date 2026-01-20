---
title: "Partition Array"
description: "Split an array into two arrays based on a condition, separating even and odd numbers."
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]"
    description: "JSON array of numbers"
exampleOutputs:
  - input: { "arr": "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]" }
    output: "[[2, 4, 6, 8, 10], [1, 3, 5, 7, 9]]"
---

```bash
echo "$arr" | jq '[[.[] | select(. % 2 == 0)], [.[] | select(. % 2 != 0)]]'
```
