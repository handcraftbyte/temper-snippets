---
title: "Sort Array Ascending"
description: "Sort an array of numbers in ascending order"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [5, 2, 9, 1, 7, 3]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [5, 2, 9, 1, 7, 3] }
    output: "[1, 2, 3, 5, 7, 9]"
  - input: { "arr": [100, 50, 75, 25] }
    output: "[25, 50, 75, 100]"
---

```javascript
[...arr].sort((a, b) => a - b);
```
