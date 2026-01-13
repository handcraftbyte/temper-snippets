---
title: "Clamp Number"
description: "Clamp a number between a minimum and maximum value"
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 150
    description: "The number to clamp"
  - name: "min"
    type: "number"
    default: 0
    description: "Minimum value"
  - name: "max"
    type: "number"
    default: 100
    description: "Maximum value"
exampleOutputs:
  - input: { "num": 150, "min": 0, "max": 100 }
    output: "100"
  - input: { "num": -50, "min": 0, "max": 100 }
    output: "0"
  - input: { "num": 50, "min": 0, "max": 100 }
    output: "50"
---

```javascript
Math.min(Math.max(num, min), max);
```
