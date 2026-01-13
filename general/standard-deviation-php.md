---
title: "Standard Deviation"
description: "Calculate the standard deviation of an array of numbers"
topic: "math"
parameters:
  - name: "arr"
    type: "array"
    default: [2, 4, 4, 4, 5, 5, 7, 9]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [2, 4, 4, 4, 5, 5, 7, 9] }
    output: "2"
---

```php
$mean = array_sum($arr) / count($arr);
return sqrt(array_sum(array_map(fn($n) => pow($n - $mean, 2), $arr)) / count($arr));
```
