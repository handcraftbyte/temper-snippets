---
title: "Sort Array Descending"
description: "Sort an array of numbers in descending order"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [5, 2, 9, 1, 7, 3]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [5, 2, 9, 1, 7, 3] }
    output: "[9, 7, 5, 3, 2, 1]"
  - input: { "arr": [100, 50, 75, 25] }
    output: "[100, 75, 50, 25]"
---

```javascript
[...arr].sort((a, b) => b - a);
```
