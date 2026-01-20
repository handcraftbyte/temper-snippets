---
title: "Validate Positive Number"
description: "Check if a value is a positive number greater than zero."
topic: "validation"
parameters:
  - name: "value"
    type: "number"
    default: 42
    description: "Value to validate."
exampleOutputs:
  - input: { "value": 42 }
    output: "true"
  - input: { "value": -5 }
    output: "false"
---

```ruby
value.is_a?(Numeric) && value > 0
```
