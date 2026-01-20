---
title: "Symmetric Difference"
description: "Find elements in either array but not in both (exclusive OR)."
topic: "arrays"
parameters:
  - name: "arr1"
    type: "string"
    default: "[1, 2, 3, 4, 5]"
    description: "First array (JSON)"
  - name: "arr2"
    type: "string"
    default: "[3, 4, 5, 6, 7]"
    description: "Second array (JSON)"
exampleOutputs:
  - input: { "arr1": "[1, 2, 3, 4, 5]", "arr2": "[3, 4, 5, 6, 7]" }
    output: "[1,2,6,7]"
---

```bash
jq -n --argjson a "$arr1" --argjson b "$arr2" '($a - $b) + ($b - $a)'
```
