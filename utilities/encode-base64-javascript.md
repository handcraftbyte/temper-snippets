---
title: "Encode Base64"
description: "Encode a string to Base64 format for safe transmission in URLs and APIs."
topic: "encoding"
tags: ["base64", "encode", "encoding", "btoa"]
relatedSlugs:
  - "decode-base64-javascript"
parameters:
  - name: "input"
    type: "string"
    default: "Hello World!"
    description: "The string to encode to Base64."
exampleOutputs:
  - input: { "input": "Hello World!" }
    output: "SGVsbG8gV29ybGQh"
  - input: { "input": "Temper Snippets" }
    output: "VGVtcGVyIFNuaXBwZXRz"
  - input: { "input": "{\"name\":\"John\"}" }
    output: "eyJuYW1lIjoiSm9obiJ9"
---

```javascript
btoa(input);
```
