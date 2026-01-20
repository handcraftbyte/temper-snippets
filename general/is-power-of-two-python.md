---
title: "Is Power of Two"
description: "Check if a number is a power of two."
topic: "math"
parameters:
  - name: "n"
    type: "number"
    default: 16
    description: "Number to check"
exampleOutputs:
  - input: { "n": 16 }
    output: "True"
  - input: { "n": 15 }
    output: "False"
---

```python
n > 0 and (n & (n - 1)) == 0
```
