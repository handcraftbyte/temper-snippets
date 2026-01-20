---
title: "Convert Currency"
description: "Convert between currencies using the Frankfurter API for live exchange rates."
topic: "converters"
parameters:
  - name: "amount"
    type: "number"
    default: 100
    description: "Amount to convert."
  - name: "from"
    type: "string"
    default: "USD"
    description: "Source currency code."
  - name: "to"
    type: "string"
    default: "EUR"
    description: "Target currency code."
exampleOutputs:
  - input: { "amount": 100, "from": "USD", "to": "EUR" }
    output: "100 USD = 92.50 EUR"
---

```javascript
const res = await fetch(
  `https://api.frankfurter.app/latest?amount=${amount}&from=${from}&to=${to}`
);
const data = await res.json();
return `${amount} ${from} = ${data.rates[to]} ${to}`;
```
