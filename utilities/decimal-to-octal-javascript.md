---
title: "Decimal to Octal"
description: "Convert a decimal number to its octal string representation."
topic: "converters"
parameters:
  - name: "decimal"
    type: "number"
    default: 493
    description: "Decimal number."
exampleOutputs:
  - input: { "decimal": 493 }
    output: "755"
---

```javascript
decimal.toString(8);
```
