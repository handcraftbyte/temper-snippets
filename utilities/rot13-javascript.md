---
title: "ROT13 Encode/Decode"
description: "Encode or decode a string using ROT13 cipher (same operation for both)"
topic: "encoding"
parameters:
  - name: "str"
    type: "string"
    default: "Hello World"
    description: "The string to encode/decode"
exampleOutputs:
  - input: { "str": "Hello World" }
    output: "Uryyb Jbeyq"
  - input: { "str": "Uryyb Jbeyq" }
    output: "Hello World"
---

```javascript
str.replace(/[a-zA-Z]/g, c => String.fromCharCode((c <= 'Z' ? 90 : 122) >= (c = c.charCodeAt(0) + 13) ? c : c - 26));
```
