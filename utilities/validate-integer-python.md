---
title: "Validate Integer"
description: "Check if a value is an integer."
topic: "validation"
parameters:
  - name: "value"
    type: "string"
    default: "42"
    description: "Value to validate."
exampleOutputs:
  - input: { "value": "42" }
    output: "True"
  - input: { "value": "3.14" }
    output: "False"
---

```python
try:
    return int(value) == float(value)
except ValueError:
    return False
```
