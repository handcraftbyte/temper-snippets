---
title: "Digital Root"
description: "Calculate the digital root by repeatedly summing digits until a single digit remains."
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 942
    description: "Number"
exampleOutputs:
  - input: { "num": 942 }
    output: "6"
---

```python
0 if num == 0 else 1 + (abs(num) - 1) % 9
```
