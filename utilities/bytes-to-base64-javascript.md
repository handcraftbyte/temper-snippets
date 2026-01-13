---
title: "Bytes to Base64"
description: "Convert byte array to base64 string"
topic: "encoding"
parameters:
  - name: "bytes"
    type: "array"
    default: [72, 101, 108, 108, 111]
    description: "Byte array"
exampleOutputs:
  - input: { "bytes": [72, 101, 108, 108, 111] }
    output: "SGVsbG8="
---

```javascript
btoa(String.fromCharCode(...bytes));
```
