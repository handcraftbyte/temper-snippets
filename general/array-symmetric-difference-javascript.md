---
title: "Symmetric Difference"
description: "Find elements in either array but not both"
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
    output: "[1, 2, 6, 7]"
---

```javascript
const setA = new Set(arr1), setB = new Set(arr2);
return [...arr1.filter(x => !setB.has(x)), ...arr2.filter(x => !setA.has(x))];
```
