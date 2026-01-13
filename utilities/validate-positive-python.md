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
    output: "True"
  - input: { "value": -5 }
    output: "False"
---

```python
isinstance(value, (int, float)) and value > 0
```
