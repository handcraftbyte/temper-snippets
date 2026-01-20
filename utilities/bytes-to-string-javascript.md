---
title: "Bytes to String"
description: "Convert a byte array to a UTF-8 encoded string using TextDecoder."
topic: "encoding"
parameters:
  - name: "bytes"
    type: "array"
    default: [72, 101, 108, 108, 111]
    description: "Byte array."
exampleOutputs:
  - input: { "bytes": [72, 101, 108, 108, 111] }
    output: "Hello"
---

```javascript
new TextDecoder().decode(new Uint8Array(bytes));
```
