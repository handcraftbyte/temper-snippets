---
title: "Find Missing Number"
description: "Find missing number in sequence from 1 to n"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 4, 5, 6]
    description: "Array with one missing number"
exampleOutputs:
  - input: { "arr": [1, 2, 4, 5, 6] }
    output: "3"
---

```ruby
n = arr.length + 1
return n * (n + 1) / 2 - arr.sum
```
