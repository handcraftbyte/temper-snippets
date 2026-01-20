---
title: "Calculate Median"
description: "Calculate the median value of an array of numbers."
topic: "math"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 3, 5, 7, 9]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [1, 3, 5, 7, 9] }
    output: "5"
  - input: { "arr": [1, 2, 3, 4] }
    output: "2.5"
---

```php
sort($arr);
$mid = floor(count($arr) / 2);
return count($arr) % 2 ? $arr[$mid] : ($arr[$mid - 1] + $arr[$mid]) / 2;
```
