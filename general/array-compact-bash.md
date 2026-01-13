---
title: "Compact Array"
description: "Remove falsy values from an array"
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[0, 1, false, 2, \"\", 3, null, null, 4]"
    description: "Array with falsy values (JSON)"
exampleOutputs:
  - input: { "arr": "[0, 1, false, 2, \"\", 3, null, null, 4]" }
    output: "[1, 2, 3, 4]"
---

```bash
echo "$arr" | jq '[.[] | select(. and . != "" and . != 0 and . != false)]'
```
