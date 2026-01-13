---
title: "Two Sum"
description: "Find indices of two numbers that add up to target"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [2, 7, 11, 15]
    description: "Array of numbers"
  - name: "target"
    type: "number"
    default: 9
    description: "Target sum"
exampleOutputs:
  - input: { "arr": [2, 7, 11, 15], "target": 9 }
    output: "[0, 1]"
---

```javascript
const map = new Map();
let result = null;
for (let i = 0; i < arr.length; i++) {
  const complement = target - arr[i];
  if (map.has(complement)) { result = [map.get(complement), i]; break; }
  map.set(arr[i], i);
}
return result;
```
