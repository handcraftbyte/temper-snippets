---
title: "Seeded Random"
description: "Generate reproducible random numbers using a seed value."
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
    output: "[0.4107, 0.1877, 0.2801]"
---

```python
import random
random.seed(seed)
return [round(random.random(), 4) for _ in range(count)]
```
