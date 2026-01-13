---
title: "Decimal to Binary"
description: "Convert a decimal number to binary"
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 42
    description: "Decimal number to convert"
exampleOutputs:
  - input: { "num": 42 }
    output: "101010"
  - input: { "num": 255 }
    output: "11111111"
---

```ruby
num.to_s(2)
```
