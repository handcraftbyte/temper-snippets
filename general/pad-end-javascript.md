---
title: "Pad String End"
description: "Pad a string from the end with a specified character to reach a target length."
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "Hello"
    description: "The string to pad"
  - name: "length"
    type: "number"
    default: 10
    description: "Target length of the result"
  - name: "char"
    type: "string"
    default: "."
    description: "Character to pad with"
exampleOutputs:
  - input: { "str": "Hello", "length": 10, "char": "." }
    output: "Hello....."
  - input: { "str": "Test", "length": 8, "char": "-" }
    output: "Test----"
---

```javascript
str.padEnd(length, char);
```
