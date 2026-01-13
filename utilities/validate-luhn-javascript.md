---
title: "Validate Luhn (Credit Card)"
description: "Check if a number passes the Luhn algorithm (credit card validation)"
topic: "validation"
parameters:
  - name: "num"
    type: "string"
    default: "4532015112830366"
    description: "Number string to validate"
exampleOutputs:
  - input: { "num": "4532015112830366" }
    output: "true"
---

```javascript
const digits = num.replace(/\D/g, '').split('').reverse().map(Number);
const sum = digits.reduce((acc, d, i) => {
  if (i % 2 === 1) d *= 2;
  if (d > 9) d -= 9;
  return acc + d;
}, 0);
return sum % 10 === 0;
```
