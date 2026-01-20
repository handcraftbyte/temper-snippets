---
title: "String to Hex"
description: "Convert a string to its hexadecimal representation."
topic: "encoding"
parameters:
  - name: "str"
    type: "string"
    default: "Hello"
    description: "The string to convert to hex."
exampleOutputs:
  - input: { "str": "Hello" }
    output: "48656c6c6f"
---

```bash
echo -n "$str" | xxd -p | tr -d '\n'
```
