---
title: "Standard Deviation"
description: "Calculate the standard deviation of an array of numbers"
topic: "math"
parameters:
  - name: "arr"
    type: "array"
    default: [2, 4, 4, 4, 5, 5, 7, 9]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [2, 4, 4, 4, 5, 5, 7, 9] }
    output: "2.0"
---

```ruby
mean = arr.sum.to_f / arr.length
return Math.sqrt(arr.map { |n| (n - mean) ** 2 }.sum / arr.length)
```
