---
title: "Array Tail"
description: "Get last n elements of an array"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5]
    description: "Array to slice"
  - name: "n"
    type: "number"
    default: 3
    description: "Number of elements"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5], "n": 3 }
    output: "[3, 4, 5]"
---

```php
array_slice($arr, -$n);
```
