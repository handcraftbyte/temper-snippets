---
title: "Binary to String"
description: "Convert a binary string to text"
topic: "encoding"
parameters:
  - name: "binary"
    type: "string"
    default: "01001000 01101001"
    description: "The binary string to convert (space-separated bytes)"
exampleOutputs:
  - input: { "binary": "01001000 01101001" }
    output: "Hi"
  - input: { "binary": "01000001 01000010 01000011" }
    output: "ABC"
---

```javascript
binary.split(' ').map(byte => String.fromCharCode(parseInt(byte, 2))).join('');
```
