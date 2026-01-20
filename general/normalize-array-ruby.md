---
title: "Normalize Array"
description: "Normalize array values to a 0-1 range using min-max scaling."
topic: "math"
parameters:
  - name: "arr"
    type: "array"
    default: [10, 20, 30, 40, 50]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [10, 20, 30, 40, 50] }
    output: "[0.0,0.25,0.5,0.75,1.0]"
---

```ruby
min_val, max_val = arr.min, arr.max
r = max_val - min_val
return arr.map { |x| r == 0 ? 0 : (x - min_val).to_f / r }
```
