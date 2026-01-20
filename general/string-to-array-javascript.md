---
title: "String to Character Array"
description: "Convert a string to an array of characters."
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "Hello"
    description: "The string to convert"
exampleOutputs:
  - input: { "str": "Hello" }
    output: "[\"H\", \"e\", \"l\", \"l\", \"o\"]"
  - input: { "str": "ABC" }
    output: "[\"A\", \"B\", \"C\"]"
---

```javascript
[...str];
```
