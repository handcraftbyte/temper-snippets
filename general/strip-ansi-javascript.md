---
title: "Strip ANSI Codes"
description: "Remove ANSI escape codes from a string."
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "\\u001b[31mRed Text\\u001b[0m"
    description: "String with ANSI codes"
exampleOutputs:
  - input: { "str": "\\u001b[31mRed Text\\u001b[0m" }
    output: "Red Text"
---

```javascript
str.replace(/\x1B(?:[@-Z\\-_]|\[[0-?]*[ -/]*[@-~])/g, '');
```
