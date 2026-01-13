---
title: "String to Bytes"
description: "Convert string to byte array (UTF-8)"
topic: "encoding"
parameters:
  - name: "str"
    type: "string"
    default: "Hello"
    description: "Input string"
exampleOutputs:
  - input: { "str": "Hello" }
    output: "[72, 101, 108, 108, 111]"
---

```javascript
[...new TextEncoder().encode(str)];
```
