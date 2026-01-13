---
title: "Octal to Decimal"
description: "Convert octal string to decimal number"
topic: "converters"
parameters:
  - name: "octal"
    type: "string"
    default: "755"
    description: "Octal string"
exampleOutputs:
  - input: { "octal": "755" }
    output: "493"
---

```javascript
parseInt(octal, 8);
```
