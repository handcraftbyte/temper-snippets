---
title: "Normalize Array"
description: "Normalize array values to 0-1 range"
topic: "math"
parameters:
  - name: "arr"
    type: "array"
    default: [10, 20, 30, 40, 50]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [10, 20, 30, 40, 50] }
    output: "[0,0.25,0.5,0.75,1]"
---

```php
$min = min($arr);
$max = max($arr);
$range = $max - $min;
return array_map(fn($x) => $range == 0 ? 0 : ($x - $min) / $range, $arr);
```
