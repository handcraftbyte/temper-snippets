---
title: "Count Set Bits"
description: "Count the number of 1 bits in a number"
topic: "math"
parameters:
  - name: "n"
    type: "number"
    default: 15
    description: "Number"
exampleOutputs:
  - input: { "n": 15 }
    output: "4"
---

```ruby
n.to_s(2).count('1')
```
