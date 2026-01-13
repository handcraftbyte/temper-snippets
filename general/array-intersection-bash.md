---
title: "Array Intersection"
description: "Find common elements between two arrays"
topic: "arrays"
parameters:
  - name: "arr1"
    type: "string"
    default: "[1, 2, 3, 4, 5]"
    description: "First JSON array"
  - name: "arr2"
    type: "string"
    default: "[3, 4, 5, 6, 7]"
    description: "Second JSON array"
exampleOutputs:
  - input: { "arr1": "[1, 2, 3, 4, 5]", "arr2": "[3, 4, 5, 6, 7]" }
    output: "[3, 4, 5]"
---

```bash
echo "$arr1" | jq --argjson b "$arr2" '[.[] | select(. as $x | $b | index($x))]'
```
