---
title: "Validate Number in Range"
description: "Check if a number is within a specified range"
topic: "validation"
parameters:
  - name: "value"
    type: "number"
    default: 50
    description: "Value to validate"
  - name: "min"
    type: "number"
    default: 1
    description: "Minimum value (inclusive)"
  - name: "max"
    type: "number"
    default: 100
    description: "Maximum value (inclusive)"
exampleOutputs:
  - input: { "value": 50, "min": 1, "max": 100 }
    output: "true"
---

```javascript
value >= min && value <= max;
```
