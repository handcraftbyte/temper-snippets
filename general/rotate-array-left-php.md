---
title: "Rotate Array Left"
description: "Rotate array elements to the left by n positions"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5]
    description: "Array to rotate"
  - name: "n"
    type: "number"
    default: 2
    description: "Positions to rotate"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5], "n": 2 }
    output: "[3,4,5,1,2]"
---

```php
$k = $n % count($arr);
return array_merge(array_slice($arr, $k), array_slice($arr, 0, $k));
```
