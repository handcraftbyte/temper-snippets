---
title: "Format Scientific Notation"
description: "Format a number in scientific notation for large or small values."
topic: "formatting"
parameters:
  - name: "num"
    type: "number"
    default: 1234567890
    description: "Number to format."
exampleOutputs:
  - input: { "num": 1234567890 }
    output: "1.23E9"
---

```javascript
new Intl.NumberFormat('en', { notation: 'scientific', maximumFractionDigits: 2 }).format(num);
```
