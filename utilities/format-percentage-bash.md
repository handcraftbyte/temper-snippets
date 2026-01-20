---
title: "Format Percentage"
description: "Format a decimal number as a percentage with configurable precision."
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 0.8567
    description: "The decimal number (0-1)."
  - name: "decimals"
    type: "number"
    default: 1
    description: "Decimal places to show."
exampleOutputs:
  - input: { "num": 0.8567, "decimals": 1 }
    output: "85.7%"
---

```bash
printf "%.${decimals}f%%\n" "$(echo "$num * 100" | bc)"
```
