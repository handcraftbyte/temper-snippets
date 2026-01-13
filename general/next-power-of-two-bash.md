---
title: "Next Power of Two"
description: "Find the next power of two greater than or equal to n"
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

```bash
echo "scale=0; if ($n <= 1) 1 else 2^(l($n)/l(2) + 0.9999999)/1" | bc -l
```
