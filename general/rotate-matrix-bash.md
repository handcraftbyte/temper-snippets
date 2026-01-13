---
title: "Rotate Matrix 90°"
description: "Rotate a 2D matrix 90 degrees clockwise"
topic: "arrays"
parameters:
  - name: "matrix"
    type: "string"
    default: "[[1, 2, 3], [4, 5, 6], [7, 8, 9]]"
    description: "Square matrix (JSON)"
exampleOutputs:
  - input: { "matrix": "[[1, 2, 3], [4, 5, 6], [7, 8, 9]]" }
    output: "[[7,4,1],[8,5,2],[9,6,3]]"
---

```bash
echo "$matrix" | jq 'transpose | map(reverse)'
```
