---
title: "Bytes to Base64"
description: "Convert a byte array to a base64 encoded string for safe text transmission."
topic: "encoding"
parameters:
  - name: "bytes"
    type: "array"
    default: [72, 101, 108, 108, 111]
    description: "Byte array."
exampleOutputs:
  - input: { "bytes": [72, 101, 108, 108, 111] }
    output: "SGVsbG8="
---

```javascript
btoa(String.fromCharCode(...bytes));
```
