---
title: "Split Keep Delimiter"
description: "Split string but keep the delimiter in results."
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "one,two;three.four"
    description: "String to split"
  - name: "delimiters"
    type: "string"
    default: "[,;.]"
    description: "Delimiter regex pattern"
exampleOutputs:
  - input: { "str": "one,two;three.four", "delimiters": "[,;.]" }
    output: "[\"one\",\",\",\"two\",\";\",\"three\",\".\",\"four\"]"
---

```javascript
str.split(new RegExp(`(${delimiters})`, 'g')).filter(Boolean);
```
