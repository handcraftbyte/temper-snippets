---
title: "Counting Sort"
description: "Sort an array of non-negative integers using counting sort for linear time performance."
topic: "sorting"
parameters:
  - name: "arr"
    type: "array"
    default: [4, 2, 2, 8, 3, 3, 1]
    description: "Array of integers"
exampleOutputs:
  - input: { "arr": [4, 2, 2, 8, 3, 3, 1] }
    output: "[1, 2, 2, 3, 3, 4, 8]"
---

```javascript
const max = Math.max(...arr);
const count = new Array(max + 1).fill(0);
arr.forEach(x => count[x]++);
const result = [];
count.forEach((c, i) => { for (let j = 0; j < c; j++) result.push(i); });
return result;
```
