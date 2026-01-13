---
title: "String to Hex"
description: "Convert a string to its hexadecimal representation"
topic: "encoding"
parameters:
  - name: "str"
    type: "string"
    default: "Hello"
    description: "The string to convert to hex"
exampleOutputs:
  - input: { "str": "Hello" }
    output: "48656c6c6f"
  - input: { "str": "ABC" }
    output: "414243"
---

```javascript
[...str].map(c => c.charCodeAt(0).toString(16).padStart(2, '0')).join('');
```
