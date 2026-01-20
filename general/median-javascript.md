---
title: "Calculate Median"
description: "Calculate the median value of an array of numbers."
topic: "math"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 3, 5, 7, 9]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [1, 3, 5, 7, 9] }
    output: "5"
  - input: { "arr": [1, 2, 3, 4] }
    output: "2.5"
---

```javascript
const sorted = [...arr].sort((a, b) => a - b);
const mid = Math.floor(sorted.length / 2);
return sorted.length % 2 ? sorted[mid] : (sorted[mid - 1] + sorted[mid]) / 2;
```
