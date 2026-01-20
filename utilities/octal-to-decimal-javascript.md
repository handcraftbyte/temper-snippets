---
title: "Octal to Decimal"
description: "Convert an octal string representation to its decimal number equivalent."
topic: "converters"
parameters:
  - name: "octal"
    type: "string"
    default: "755"
    description: "Octal string."
exampleOutputs:
  - input: { "octal": "755" }
    output: "493"
---

```javascript
parseInt(octal, 8);
```
