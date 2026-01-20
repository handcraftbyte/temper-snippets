---
title: "Validate Float"
description: "Check if a value is a valid floating point number."
topic: "validation"
parameters:
  - name: "value"
    type: "string"
    default: "3.14"
    description: "Value to validate."
exampleOutputs:
  - input: { "value": "3.14" }
    output: "true"
  - input: { "value": "abc" }
    output: "false"
---

```javascript
!isNaN(parseFloat(value)) && isFinite(value);
```
