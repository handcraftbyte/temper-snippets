---
title: "Random Float"
description: "Generate a random floating-point number within a specified range with configurable decimal precision."
topic: "math"
parameters:
  - name: "min"
    type: "number"
    default: 0
    description: "Minimum value"
  - name: "max"
    type: "number"
    default: 1
    description: "Maximum value"
  - name: "decimals"
    type: "number"
    default: 2
    description: "Decimal places"
exampleOutputs:
  - input: { "min": 0, "max": 1, "decimals": 2 }
    output: "0.47"
---

```bash
printf "%.${decimals}f\n" "$(echo "$min + $RANDOM / 32767 * ($max - $min)" | bc -l)"
```
