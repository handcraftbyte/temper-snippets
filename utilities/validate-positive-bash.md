---
title: "Validate Positive Number"
description: "Check if a value is a positive number"
topic: "validation"
parameters:
  - name: "value"
    type: "number"
    default: 42
    description: "Value to validate"
exampleOutputs:
  - input: { "value": 42 }
    output: "true"
  - input: { "value": -5 }
    output: "false"
---

```bash
[[ "$value" =~ ^[0-9]+\.?[0-9]*$ && $(echo "$value > 0" | bc -l) -eq 1 ]] && echo "true" || echo "false"
```
