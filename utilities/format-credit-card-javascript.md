---
title: "Format Credit Card"
description: "Format a credit card number with spaces"
topic: "formatting"
parameters:
  - name: "number"
    type: "string"
    default: "4532015112830366"
    description: "Credit card number"
exampleOutputs:
  - input: { "number": "4532015112830366" }
    output: "4532 0151 1283 0366"
  - input: { "number": "1234567890123456" }
    output: "1234 5678 9012 3456"
---

```javascript
number.replace(/\D/g, '').replace(/(.{4})/g, '$1 ').trim();
```
