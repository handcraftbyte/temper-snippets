---
title: "Format Number with Commas"
description: "Format a number with thousand separators for better readability."
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 1234567890
    description: "The number to format."
exampleOutputs:
  - input: { "num": 1234567890 }
    output: "1,234,567,890"
  - input: { "num": 9999.99 }
    output: "9,999.99"
---

```ruby
parts = num.to_s.split('.')
parts[0] = parts[0].reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
return parts.join('.')
```
