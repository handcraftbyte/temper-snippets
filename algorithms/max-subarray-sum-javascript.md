---
title: "Maximum Subarray Sum"
description: "Find the maximum sum of a contiguous subarray using Kadane's algorithm."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [-2, 1, -3, 4, -1, 2, 1, -5, 4]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [-2, 1, -3, 4, -1, 2, 1, -5, 4] }
    output: "6"
---

```javascript
let maxSum = arr[0], currentSum = arr[0];
for (let i = 1; i < arr.length; i++) {
  currentSum = Math.max(arr[i], currentSum + arr[i]);
  maxSum = Math.max(maxSum, currentSum);
}
return maxSum;
```
