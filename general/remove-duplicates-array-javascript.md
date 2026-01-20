---
title: "Remove Array Duplicates"
description: "Remove duplicate values from an array while preserving the original order of first occurrences."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 2, 3, 3, 3, 4, 5, 5]
    description: "Array with duplicates"
exampleOutputs:
  - input: { "arr": [1, 2, 2, 3, 3, 3, 4, 5, 5] }
    output: "[1, 2, 3, 4, 5]"
  - input: { "arr": ["a", "b", "a", "c", "b"] }
    output: "[\"a\", \"b\", \"c\"]"
---

```javascript
[...new Set(arr)];
```
