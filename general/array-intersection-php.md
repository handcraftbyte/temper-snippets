---
title: "Array Intersection"
description: "Find common elements between two arrays"
topic: "arrays"
parameters:
  - name: "arr1"
    type: "array"
    default: [1, 2, 3, 4, 5]
    description: "First array"
  - name: "arr2"
    type: "array"
    default: [3, 4, 5, 6, 7]
    description: "Second array"
exampleOutputs:
  - input: { "arr1": [1, 2, 3, 4, 5], "arr2": [3, 4, 5, 6, 7] }
    output: "[3, 4, 5]"
---

```php
array_values(array_intersect($arr1, $arr2));
```
