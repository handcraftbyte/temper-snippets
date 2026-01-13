---
title: "Nth Smallest Element"
description: "Find the nth smallest element in an array"
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[3, 2, 1, 5, 6, 4]"
    description: "Array of numbers (JSON)"
  - name: "n"
    type: "number"
    default: 2
    description: "Position (1-indexed)"
exampleOutputs:
  - input: { "arr": "[3, 2, 1, 5, 6, 4]", "n": 2 }
    output: "2"
---

```bash
echo "$arr" | jq --argjson n "$n" 'sort | .[$n - 1]'
```
