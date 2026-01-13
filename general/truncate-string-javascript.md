---
title: "Truncate String"
description: "Truncate a string to a specified length with ellipsis"
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "This is a long string that needs to be truncated"
    description: "The string to truncate"
  - name: "length"
    type: "number"
    default: 20
    description: "Maximum length of the result"
exampleOutputs:
  - input: { "str": "This is a long string that needs to be truncated", "length": 20 }
    output: "This is a long st..."
  - input: { "str": "Short", "length": 20 }
    output: "Short"
---

```javascript
str.length > length ? str.slice(0, length - 3) + '...' : str;
```
