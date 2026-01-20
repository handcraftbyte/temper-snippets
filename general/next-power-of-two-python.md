---
title: "Next Power of Two"
description: "Find the next power of two greater than or equal to a given number."
topic: "math"
parameters:
  - name: "n"
    type: "number"
    default: 13
    description: "Number"
exampleOutputs:
  - input: { "n": 13 }
    output: "16"
---

```python
import math
return 1 if n <= 1 else 2 ** math.ceil(math.log2(n))
```
