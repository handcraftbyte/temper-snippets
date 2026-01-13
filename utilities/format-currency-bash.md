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

```bash
case "$currency" in USD) sym='$';; EUR) sym='€';; GBP) sym='£';; *) sym="$currency";; esac
printf "%s%'.2f\n" "$sym" "$num"
```
