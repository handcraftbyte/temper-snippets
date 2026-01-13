---
title: "Calculate Mode"
description: "Find the most frequent value(s) in an array"
topic: "math"
parameters:
  - name: "arr"
    type: "string"
    default: "[1, 2, 2, 3, 3, 3, 4]"
    description: "JSON array of numbers"
exampleOutputs:
  - input: { "arr": "[1, 2, 2, 3, 3, 3, 4]" }
    output: "[3]"
---

```bash
echo "$arr" | jq 'group_by(.) | map({val: .[0], count: length}) | max_by(.count).count as $max | map(select(.count == $max) | .val)'
```
