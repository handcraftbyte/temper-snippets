---
title: "Max Value in Array"
description: "Find the maximum value in an array"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [5, 2, 9, 1, 7, 3]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [5, 2, 9, 1, 7, 3] }
    output: "9"
  - input: { "arr": [100, 50, 75, 25] }
    output: "100"
---

```javascript
Math.max(...arr);
```
