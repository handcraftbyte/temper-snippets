---
title: "Matrix Transpose"
description: "Transpose a 2D matrix (swap rows and columns)."
topic: "arrays"
parameters:
  - name: "matrix"
    type: "string"
    default: "[[1, 2, 3], [4, 5, 6]]"
    description: "2D matrix (JSON)"
exampleOutputs:
  - input: { "matrix": "[[1, 2, 3], [4, 5, 6]]" }
    output: "[[1,4],[2,5],[3,6]]"
---

```bash
echo "$matrix" | jq 'transpose'
```
