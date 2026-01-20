---
title: "String to Binary"
description: "Convert a string to its binary representation."
topic: "encoding"
parameters:
  - name: "str"
    type: "string"
    default: "Hi"
    description: "The string to convert to binary."
exampleOutputs:
  - input: { "str": "Hi" }
    output: "01001000 01101001"
  - input: { "str": "ABC" }
    output: "01000001 01000010 01000011"
---

```javascript
[...str].map(c => c.charCodeAt(0).toString(2).padStart(8, '0')).join(' ');
```
