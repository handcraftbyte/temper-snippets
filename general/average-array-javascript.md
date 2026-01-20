---
title: "Average Array"
description: "Calculate the arithmetic mean of all numbers in an array."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] }
    output: "5.5"
  - input: { "arr": [10, 20, 30] }
    output: "20"
---

```javascript
arr.reduce((sum, n) => sum + n, 0) / arr.length;
```
