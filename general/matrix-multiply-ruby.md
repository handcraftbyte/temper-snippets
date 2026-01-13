---
title: "Matrix Multiply"
description: "Multiply two matrices"
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
    output: "[[19,22],[43,50]]"
---

```ruby
require 'matrix'
m1, m2 = Matrix[*a], Matrix[*b]
return (m1 * m2).to_a
```
