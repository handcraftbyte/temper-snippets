---
title: "Generate Range"
description: "Generate an array of numbers in a range"
topic: "arrays"
parameters:
  - name: "start"
    type: "number"
    default: 1
    description: "Start of range"
  - name: "end"
    type: "number"
    default: 10
    description: "End of range (inclusive)"
  - name: "step"
    type: "number"
    default: 1
    description: "Step between numbers"
exampleOutputs:
  - input: { "start": 1, "end": 10, "step": 1 }
    output: "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]"
  - input: { "start": 0, "end": 20, "step": 5 }
    output: "[0, 5, 10, 15, 20]"
---

```javascript
Array.from({ length: Math.floor((end - start) / step) + 1 }, (_, i) => start + i * step);
```
