---
title: "Decimal to Hex"
description: "Convert a decimal number to hexadecimal"
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 255
    description: "Decimal number to convert"
exampleOutputs:
  - input: { "num": 255 }
    output: "ff"
  - input: { "num": 4096 }
    output: "1000"
---

```python
hex(num)[2:]
```
