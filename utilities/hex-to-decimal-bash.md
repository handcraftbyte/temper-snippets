---
title: "Hex to Decimal"
description: "Convert a hexadecimal string to decimal"
topic: "math"
parameters:
  - name: "hex"
    type: "string"
    default: "ff"
    description: "Hex string to convert"
exampleOutputs:
  - input: { "hex": "ff" }
    output: "255"
  - input: { "hex": "1000" }
    output: "4096"
---

```bash
echo $((16#$hex))
```
