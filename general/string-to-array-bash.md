---
title: "String to Character Array"
description: "Convert a string to an array of characters"
topic: "strings"
parameters:
  - name: "s"
    type: "string"
    default: "Hello"
    description: "The string to convert"
exampleOutputs:
  - input: { "s": "Hello" }
    output: "H e l l o"
  - input: { "s": "ABC" }
    output: "A B C"
---

```bash
echo "$s" | grep -o .
```
