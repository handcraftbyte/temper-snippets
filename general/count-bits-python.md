---
title: "Count Set Bits"
description: "Count the number of set bits (1s) in a number's binary representation."
topic: "math"
parameters:
  - name: "n"
    type: "number"
    default: 15
    description: "Number"
exampleOutputs:
  - input: { "n": 15 }
    output: "4"
---

```python
bin(n).count('1')
```
