---
title: "Base64 to Bytes"
description: "Convert a base64 encoded string to a byte array for binary data processing."
topic: "encoding"
parameters:
  - name: "base64"
    type: "string"
    default: "SGVsbG8="
    description: "Base64 string."
exampleOutputs:
  - input: { "base64": "SGVsbG8=" }
    output: "[72, 101, 108, 108, 111]"
---

```javascript
[...atob(base64)].map(c => c.charCodeAt(0));
```
