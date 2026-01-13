---
title: "Bytes to String"
description: "Convert byte array to string (UTF-8)"
topic: "encoding"
parameters:
  - name: "bytes"
    type: "array"
    default: [72, 101, 108, 108, 111]
    description: "Byte array"
exampleOutputs:
  - input: { "bytes": [72, 101, 108, 108, 111] }
    output: "Hello"
---

```javascript
new TextDecoder().decode(new Uint8Array(bytes));
```
