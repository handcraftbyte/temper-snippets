---
title: "Array Head"
description: "Get the first n elements of an array."
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[1, 2, 3, 4, 5]"
    description: "Array (JSON)"
  - name: "n"
    type: "number"
    default: 3
    description: "Number of elements"
exampleOutputs:
  - input: { "arr": "[1, 2, 3, 4, 5]", "n": 3 }
    output: "[1, 2, 3]"
---

```bash
echo "$arr" | jq --argjson n "$n" '.[:$n]'
```
