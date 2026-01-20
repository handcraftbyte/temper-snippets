---
title: "Matrix Multiply"
description: "Multiply two matrices."
topic: "arrays"
parameters:
  - name: "a"
    type: "array"
    default: [[1, 2], [3, 4]]
    description: "First matrix"
  - name: "b"
    type: "array"
    default: [[5, 6], [7, 8]]
    description: "Second matrix"
exampleOutputs:
  - input: { "a": [[1, 2], [3, 4]], "b": [[5, 6], [7, 8]] }
    output: "[[19, 22], [43, 50]]"
---

```javascript
return a.map((row, i) =>
  b[0].map((_, j) => row.reduce((sum, val, k) => sum + val * b[k][j], 0))
);
```
