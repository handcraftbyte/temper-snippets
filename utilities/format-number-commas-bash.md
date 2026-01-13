---
title: "Format Number with Commas"
description: "Format a number with thousand separators"
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 1234567890
    description: "The number to format"
exampleOutputs:
  - input: { "num": 1234567890 }
    output: "1,234,567,890"
---

```bash
printf "%'d\n" "$num"
```
