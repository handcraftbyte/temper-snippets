---
title: "Format Currency"
description: "Format a number as currency"
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 1234.56
    description: "The number to format"
  - name: "currency"
    type: "string"
    default: "USD"
    description: "Currency code (USD, EUR, GBP, etc.)"
  - name: "locale"
    type: "string"
    default: "en-US"
    description: "Locale for formatting"
exampleOutputs:
  - input: { "num": 1234.56, "currency": "USD", "locale": "en-US" }
    output: "$1,234.56"
---

```ruby
symbols = {'USD' => '$', 'EUR' => '€', 'GBP' => '£', 'JPY' => '¥'}
symbol = symbols[currency] || currency
formatted = num.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
parts = formatted.split('.')
parts[1] = parts[1].to_s.ljust(2, '0')[0, 2]
return "#{symbol}#{parts.join('.')}"
```
