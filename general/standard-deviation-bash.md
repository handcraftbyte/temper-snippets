---
title: "Standard Deviation"
description: "Calculate the standard deviation of an array of numbers."
topic: "math"
parameters:
  - name: "arr"
    type: "string"
    default: "[2, 4, 4, 4, 5, 5, 7, 9]"
    description: "JSON array of numbers"
exampleOutputs:
  - input: { "arr": "[2, 4, 4, 4, 5, 5, 7, 9]" }
    output: "2.0"
---

```bash
echo "$arr" | tr -d '[]' | tr ',' '\n' | awk '{sum+=$1; sq+=$1*$1; n++} END{print sqrt(sq/n - (sum/n)^2)}'
```
