---
title: "Decode Base64"
description: "Decode a Base64 encoded string back to its original text representation"
topic: "encoding"
tags: ["base64", "decode", "encoding", "atob"]
relatedSlugs:
  - "encode-base64-javascript"
parameters:
  - name: "input"
    type: "string"
    default: "SGVsbG8gV29ybGQh"
    description: "The Base64 encoded string to decode"
exampleOutputs:
  - input: { "input": "SGVsbG8gV29ybGQh" }
    output: "Hello World!"
  - input: { "input": "VGVtcGVyIFNuaXBwZXRz" }
    output: "Temper Snippets"
  - input: { "input": "eyJuYW1lIjoiSm9obiJ9" }
    output: "{\"name\":\"John\"}"
---

```javascript
atob(input);
```
