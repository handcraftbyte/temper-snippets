---
title: "Find Missing Number"
description: "Find the missing number in a sequence from 1 to n using mathematical sum formula."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 4, 5, 6]
    description: "Array with one missing number"
exampleOutputs:
  - input: { "arr": [1, 2, 4, 5, 6] }
    output: "3"
---

```javascript
const n = arr.length + 1;
const expectedSum = (n * (n + 1)) / 2;
const actualSum = arr.reduce((sum, x) => sum + x, 0);
return expectedSum - actualSum;
```
