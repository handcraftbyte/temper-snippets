---
title: "Calculate Percentile"
description: "Calculate the nth percentile of an array"
topic: "math"
parameters:
  - name: "arr"
    type: "string"
    default: "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]"
    description: "Array of numbers (JSON)"
  - name: "p"
    type: "number"
    default: 75
    description: "Percentile (0-100)"
exampleOutputs:
  - input: { "arr": "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]", "p": 75 }
    output: "7.75"
---

```bash
echo "$arr" | jq --argjson p "$p" 'sort | (($p / 100) * (length - 1)) as $i | (($i | floor) as $l | ($i - $l) as $f | .[$l] + $f * ((.[$l + 1] // .[$l]) - .[$l]))'
```
