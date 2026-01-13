---
title: "Remove Duplicate Characters"
description: "Remove duplicate characters from a string, keeping first occurrence"
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "programming"
    description: "The string to remove duplicates from"
exampleOutputs:
  - input: { "str": "programming" }
    output: "progamin"
  - input: { "str": "hello" }
    output: "helo"
---

```javascript
[...new Set(str)].join('');
```
