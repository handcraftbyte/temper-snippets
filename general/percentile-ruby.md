---
title: "Calculate Percentile"
description: "Calculate the nth percentile of an array"
topic: "math"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    description: "Array of numbers"
  - name: "p"
    type: "number"
    default: 75
    description: "Percentile (0-100)"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "p": 75 }
    output: "7.75"
---

```ruby
sorted = arr.sort
index = (p / 100.0) * (sorted.length - 1)
lower = index.floor
fraction = index - lower
result = sorted[lower] + fraction * ((sorted[lower + 1] || sorted[lower]) - sorted[lower])
return result
```
