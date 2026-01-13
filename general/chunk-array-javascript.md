---
title: "Chunk Array"
description: "Split an array into chunks of a specified size"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    description: "Array to chunk"
  - name: "size"
    type: "number"
    default: 3
    description: "Size of each chunk"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "size": 3 }
    output: "[[1, 2, 3], [4, 5, 6], [7, 8, 9], [10]]"
  - input: { "arr": [1, 2, 3, 4, 5, 6], "size": 2 }
    output: "[[1, 2], [3, 4], [5, 6]]"
---

```javascript
Array.from({ length: Math.ceil(arr.length / size) }, (_, i) => arr.slice(i * size, i * size + size));
```
