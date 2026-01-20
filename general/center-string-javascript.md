---
title: "Center String"
description: "Center a string within a given width by padding with spaces."
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "Hello"
    description: "String to center"
  - name: "width"
    type: "number"
    default: 15
    description: "Total width"
exampleOutputs:
  - input: { "str": "Hello", "width": 15 }
    output: "     Hello     "
---

```javascript
const padding = Math.max(0, width - str.length);
const left = Math.floor(padding / 2);
return ' '.repeat(left) + str + ' '.repeat(padding - left);
```
