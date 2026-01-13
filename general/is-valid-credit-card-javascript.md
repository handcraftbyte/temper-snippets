---
title: "Validate Credit Card (Luhn)"
description: "Validate a credit card number using the Luhn algorithm"
topic: "validation"
parameters:
  - name: "cardNumber"
    type: "string"
    default: "4532015112830366"
    description: "The credit card number to validate"
exampleOutputs:
  - input: { "cardNumber": "4532015112830366" }
    output: "true"
  - input: { "cardNumber": "1234567890123456" }
    output: "false"
---

```javascript
const digits = cardNumber.replace(/\D/g, '').split('').map(Number);
const sum = digits.reverse().reduce((acc, d, i) => {
  if (i % 2) d *= 2;
  return acc + (d > 9 ? d - 9 : d);
}, 0);
return sum % 10 === 0;
```
