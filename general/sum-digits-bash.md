---
title: "Sum of Digits"
description: "Calculate the sum of all digits in a number"
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 12345
    description: "Number"
exampleOutputs:
  - input: { "num": 12345 }
    output: "15"
---

```bash
echo "${num#-}" | grep -o . | paste -sd+ | bc
```
