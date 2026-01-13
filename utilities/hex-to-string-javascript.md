---
title: "Hex to String"
description: "Convert a hexadecimal string to its text representation"
topic: "encoding"
parameters:
  - name: "hex"
    type: "string"
    default: "48656c6c6f"
    description: "The hex string to convert"
exampleOutputs:
  - input: { "hex": "48656c6c6f" }
    output: "Hello"
  - input: { "hex": "414243" }
    output: "ABC"
---

```javascript
hex.match(/.{2}/g).map(byte => String.fromCharCode(parseInt(byte, 16))).join('');
```
