---
title: "Array Difference"
description: "Find elements in the first array that are not present in the second array."
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
    output: "[1, 2]"
  - input: { "arr1": ["a", "b", "c"], "arr2": ["b", "c", "d"] }
    output: "[\"a\"]"
---

```javascript
const b = new Set(arr2);
return arr1.filter(x => !b.has(x));
```
