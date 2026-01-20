---
title: "Flatten Array"
description: "Flatten a nested array to a single level."
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[[1, 2], [3, [4, 5]], [6]]"
    description: "JSON nested array to flatten"
  - name: "depth"
    type: "number"
    default: 1
    description: "Depth to flatten (use large number for complete)"
exampleOutputs:
  - input: { "arr": "[[1, 2], [3, [4, 5]], [6]]", "depth": 1 }
    output: "[1, 2, 3, [4, 5], 6]"
---

```bash
echo "$arr" | jq 'flatten(1)'
```
