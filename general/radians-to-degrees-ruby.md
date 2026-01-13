---
title: "Radians to Degrees"
description: "Convert radians to degrees"
topic: "math"
parameters:
  - name: "radians"
    type: "number"
    default: 3.14159
    description: "Angle in radians"
exampleOutputs:
  - input: { "radians": 3.14159 }
    output: "179.99984796050427"
---

```ruby
radians * (180 / Math::PI)
```
