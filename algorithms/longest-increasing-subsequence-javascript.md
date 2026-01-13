---
title: "Longest Increasing Subsequence"
description: "Find length of longest increasing subsequence"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [10, 9, 2, 5, 3, 7, 101, 18]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [10, 9, 2, 5, 3, 7, 101, 18] }
    output: "4"
---

```javascript
const dp = new Array(arr.length).fill(1);
for (let i = 1; i < arr.length; i++) {
  for (let j = 0; j < i; j++) {
    if (arr[i] > arr[j]) dp[i] = Math.max(dp[i], dp[j] + 1);
  }
}
return Math.max(...dp);
```
