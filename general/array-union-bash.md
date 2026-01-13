---
title: "Array Union"
description: "Combine two arrays and remove duplicates"
topic: "arrays"
parameters:
  - name: "arr1"
    type: "string"
    default: "[1, 2, 3]"
    description: "First JSON array"
  - name: "arr2"
    type: "string"
    default: "[3, 4, 5]"
    description: "Second JSON array"
exampleOutputs:
  - input: { "arr1": "[1, 2, 3]", "arr2": "[3, 4, 5]" }
    output: "[1, 2, 3, 4, 5]"
---

```bash
echo "$arr1" | jq --argjson b "$arr2" '. + $b | unique'
```
