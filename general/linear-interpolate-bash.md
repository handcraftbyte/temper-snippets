---
title: "Linear Interpolation"
description: "Interpolate between two values."
topic: "math"
parameters:
  - name: "start"
    type: "number"
    default: 0
    description: "Start value"
  - name: "end"
    type: "number"
    default: 100
    description: "End value"
  - name: "t"
    type: "number"
    default: 0.5
    description: "Interpolation factor (0-1)"
exampleOutputs:
  - input: { "start": 0, "end": 100, "t": 0.5 }
    output: "50"
---

```bash
echo "scale=10; $start + ($end - $start) * $t" | bc
```
