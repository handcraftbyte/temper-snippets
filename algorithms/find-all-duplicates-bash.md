---
title: "Find All Duplicates"
description: "Find all elements that appear more than once in an array using frequency counting."
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[1, 2, 3, 2, 4, 3, 5]"
    description: "Array to check (JSON)"
exampleOutputs:
  - input: { "arr": "[1, 2, 3, 2, 4, 3, 5]" }
    output: "[2,3]"
---

```bash
echo "$arr" | jq 'group_by(.) | map(select(length > 1) | .[0])'
```
