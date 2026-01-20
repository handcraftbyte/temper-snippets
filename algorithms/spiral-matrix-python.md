---
title: "Spiral Matrix"
description: "Traverse a 2D matrix in spiral order starting from the top-left corner."
topic: "arrays"
parameters:
  - name: "matrix"
    type: "array"
    default: [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    description: "2D matrix"
exampleOutputs:
  - input: { "matrix": [[1, 2, 3], [4, 5, 6], [7, 8, 9]] }
    output: "[1, 2, 3, 6, 9, 8, 7, 4, 5]"
---

```python
m = matrix
result = []
top, bottom, left, right = 0, len(m) - 1, 0, len(m[0]) - 1
while top <= bottom and left <= right:
    result.extend(m[top][left:right+1])
    top += 1
    for i in range(top, bottom + 1): result.append(m[i][right])
    right -= 1
    if top <= bottom:
        result.extend(m[bottom][left:right+1][::-1])
        bottom -= 1
    if left <= right:
        for i in range(bottom, top - 1, -1): result.append(m[i][left])
        left += 1
result
```
