---
title: "Format Percentage"
description: "Format a decimal number as a percentage"
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 0.8567
    description: "The decimal number (0-1)"
  - name: "decimals"
    type: "number"
    default: 1
    description: "Decimal places to show"
exampleOutputs:
  - input: { "num": 0.8567, "decimals": 1 }
    output: "85.7%"
  - input: { "num": 0.5, "decimals": 0 }
    output: "50%"
---

```python
f"{num * 100:.{decimals}f}%"
```
