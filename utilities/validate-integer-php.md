---
title: "Validate Integer"
description: "Check if a value is an integer"
topic: "validation"
parameters:
  - name: "value"
    type: "string"
    default: "42"
    description: "Value to validate"
exampleOutputs:
  - input: { "value": "42" }
    output: "true"
  - input: { "value": "3.14" }
    output: "false"
---

```php
filter_var($value, FILTER_VALIDATE_INT) !== false ? 'true' : 'false';
```
