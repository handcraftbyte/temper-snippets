---
title: "Format Currency"
description: "Format a number as currency with the appropriate symbol and separators."
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 1234.56
    description: "The number to format."
  - name: "currency"
    type: "string"
    default: "USD"
    description: "Currency code (USD, EUR, GBP, etc.)."
  - name: "locale"
    type: "string"
    default: "en-US"
    description: "Locale for formatting."
exampleOutputs:
  - input: { "num": 1234.56, "currency": "USD", "locale": "en-US" }
    output: "$1,234.56"
---

```python
import locale
symbols = {'USD': '$', 'EUR': '€', 'GBP': '£', 'JPY': '¥'}
symbol = symbols.get(currency, currency)
formatted = f"{num:,.2f}"
return f"{symbol}{formatted}"
```
