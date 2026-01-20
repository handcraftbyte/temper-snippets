---
title: "Reverse Array"
description: "Reverse the order of elements in an array, returning a new array with elements in opposite order."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5]
    description: "Array to reverse"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5] }
    output: "[5, 4, 3, 2, 1]"
---

```php
array_reverse($arr);
```
