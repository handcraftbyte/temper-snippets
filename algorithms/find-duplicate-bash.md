---
title: "Find Duplicate"
description: "Find the first duplicate element in an array"
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[1, 2, 3, 4, 2, 5]"
    description: "Array to check (JSON)"
exampleOutputs:
  - input: { "arr": "[1, 2, 3, 4, 2, 5]" }
    output: "2"
---

```bash
echo "$arr" | jq 'group_by(.) | map(select(length > 1)) | .[0][0] // null'
```
