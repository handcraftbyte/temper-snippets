---
title: "Seeded Random"
description: "Generate reproducible random numbers using a seed value"
topic: "math"
parameters:
  - name: "seed"
    type: "number"
    default: 12345
    description: "Seed value for reproducibility"
  - name: "count"
    type: "number"
    default: 5
    description: "How many random numbers to generate"
exampleOutputs:
  - input: { "seed": 12345, "count": 3 }
    output: "[0.2055,0.7798,0.4679]"
---

```ruby
srand(seed)
return Array.new(count) { rand.round(4) }
```
