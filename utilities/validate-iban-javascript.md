---
title: "Validate IBAN"
description: "Check if a string is a valid IBAN (International Bank Account Number)."
topic: "validation"
parameters:
  - name: "iban"
    type: "string"
    default: "GB82WEST12345698765432"
    description: "IBAN to validate."
exampleOutputs:
  - input: { "iban": "GB82WEST12345698765432" }
    output: "true"
---

```javascript
const normalized = iban.replace(/\s/g, '').toUpperCase();
const rearranged = normalized.slice(4) + normalized.slice(0, 4);
const numericStr = rearranged.replace(/[A-Z]/g, c => (c.charCodeAt(0) - 55).toString());
let remainder = numericStr;
while (remainder.length > 2) {
  const block = remainder.slice(0, 9);
  remainder = (parseInt(block, 10) % 97).toString() + remainder.slice(9);
}
return parseInt(remainder, 10) % 97 === 1;
```
