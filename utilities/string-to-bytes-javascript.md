---
title: "String to Bytes"
description: "Convert a string to a UTF-8 byte array."
topic: "encoding"
parameters:
  - name: "str"
    type: "string"
    default: "Hello"
    description: "Input string."
exampleOutputs:
  - input: { "str": "Hello" }
    output: "[72, 101, 108, 108, 111]"
---

```javascript
[...new TextEncoder().encode(str)];
```
