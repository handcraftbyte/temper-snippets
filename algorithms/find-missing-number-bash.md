---
title: "Find Missing Number"
description: "Find the missing number in a sequence from 1 to n using mathematical sum formula."
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[1, 2, 4, 5, 6]"
    description: "Array with one missing number (JSON)"
exampleOutputs:
  - input: { "arr": "[1, 2, 4, 5, 6]" }
    output: "3"
---

```bash
echo "$arr" | jq 'length + 1 as $n | ($n * ($n + 1) / 2) - add'
```
