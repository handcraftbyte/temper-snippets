---
title: "Drop While"
description: "Remove elements from start while condition is true"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5, 1, 2]
    description: "Array to process"
  - name: "threshold"
    type: "number"
    default: 3
    description: "Drop while less than threshold"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5, 1, 2], "threshold": 3 }
    output: "[3,4,5,1,2]"
---

```php
$idx = 0;
foreach ($arr as $i => $v) {
    if ($v >= $threshold) { $idx = $i; break; }
    if ($i === count($arr) - 1) { $idx = count($arr); }
}
return array_values(array_slice($arr, $idx));
```
