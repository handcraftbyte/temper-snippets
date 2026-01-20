---
title: "Min Value in Array"
description: "Find the minimum value in an array."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [5, 2, 9, 1, 7, 3]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [5, 2, 9, 1, 7, 3] }
    output: "1"
  - input: { "arr": [100, 50, 75, 25] }
    output: "25"
---

```javascript
Math.min(...arr);
```
