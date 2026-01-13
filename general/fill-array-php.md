---
title: "Fill Array"
description: "Create an array filled with a specific value"
topic: "arrays"
parameters:
  - name: "length"
    type: "number"
    default: 5
    description: "Length of the array"
  - name: "value"
    type: "number"
    default: 0
    description: "Value to fill with"
exampleOutputs:
  - input: { "length": 5, "value": 0 }
    output: "[0, 0, 0, 0, 0]"
---

```php
array_fill(0, $length, $value);
```
