---
title: "Binary to Decimal"
description: "Convert a binary string representation to its decimal number equivalent."
topic: "math"
parameters:
  - name: "binary"
    type: "string"
    default: "101010"
    description: "Binary string to convert."
exampleOutputs:
  - input: { "binary": "101010" }
    output: "42"
  - input: { "binary": "11111111" }
    output: "255"
---

```python
int(binary, 2)
```
