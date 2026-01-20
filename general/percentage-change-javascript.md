---
title: "Percentage Change"
description: "Calculate the percentage change between an old and new value."
topic: "math"
parameters:
  - name: "oldValue"
    type: "number"
    default: 100
    description: "Original value"
  - name: "newValue"
    type: "number"
    default: 125
    description: "New value"
exampleOutputs:
  - input: { "oldValue": 100, "newValue": 125 }
    output: "25"
  - input: { "oldValue": 200, "newValue": 150 }
    output: "-25"
---

```javascript
((newValue - oldValue) / oldValue) * 100;
```
