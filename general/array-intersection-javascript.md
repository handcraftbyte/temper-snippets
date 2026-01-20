---
title: "Array Intersection"
description: "Find common elements that exist in both arrays."
topic: "arrays"
parameters:
  - name: "arr1"
    type: "array"
    default: [1, 2, 3, 4, 5]
    description: "First array"
  - name: "arr2"
    type: "array"
    default: [3, 4, 5, 6, 7]
    description: "Second array"
exampleOutputs:
  - input: { "arr1": [1, 2, 3, 4, 5], "arr2": [3, 4, 5, 6, 7] }
    output: "[3, 4, 5]"
  - input: { "arr1": ["a", "b", "c"], "arr2": ["b", "c", "d"] }
    output: "[\"b\", \"c\"]"
---

```javascript
const b = new Set(arr2);
return arr1.filter(x => b.has(x));
```
