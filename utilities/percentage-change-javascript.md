---
title: "Percentage Change"
description: "Calculate percentage change between two values"
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
    output: "+25.00%"
  - input: { "oldValue": 200, "newValue": 150 }
    output: "-25.00%"
  - input: { "oldValue": 50, "newValue": 50 }
    output: "0.00%"
---

```javascript
if (oldValue === 0) return newValue === 0 ? '0.00%' : 'undefined (division by zero)';
const change = ((newValue - oldValue) / Math.abs(oldValue)) * 100;
const sign = change > 0 ? '+' : '';
return `${sign}${change.toFixed(2)}%`;
```
