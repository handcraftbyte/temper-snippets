---
title: "Find All Duplicates"
description: "Find all elements that appear more than once in an array using frequency counting."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 2, 4, 3, 5]
    description: "Array to check"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 2, 4, 3, 5] }
    output: "[2, 3]"
---

```javascript
const count = {};
arr.forEach(x => count[x] = (count[x] || 0) + 1);
return Object.keys(count).filter(k => count[k] > 1).map(Number);
```
