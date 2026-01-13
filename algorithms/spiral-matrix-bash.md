---
title: "Spiral Matrix"
description: "Traverse a matrix in spiral order"
topic: "arrays"
parameters:
  - name: "matrix"
    type: "string"
    default: "[[1, 2, 3], [4, 5, 6], [7, 8, 9]]"
    description: "2D matrix (JSON)"
exampleOutputs:
  - input: { "matrix": "[[1, 2, 3], [4, 5, 6], [7, 8, 9]]" }
    output: "[1,2,3,6,9,8,7,4,5]"
---

```bash
echo "$matrix" | jq 'def spiral: if length == 0 then [] else .[0] + ([.[1:][] | .[-1]] | if . == [[]] then [] else . end) + (if length > 1 then ([-1]|reverse) else [] end) + ([.[1:-1][] | .[0]] | reverse) + (.[1:-1] | map(.[1:-1]) | spiral) end; spiral'
```
