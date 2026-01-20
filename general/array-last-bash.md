---
title: "Get Last Array Element"
description: "Get the last element of an array."
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[1, 2, 3, 4, 5]"
    description: "Array (JSON)"
exampleOutputs:
  - input: { "arr": "[1, 2, 3, 4, 5]" }
    output: "5"
---

```bash
echo "$arr" | jq '.[-1]'
```
