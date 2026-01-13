---
title: "Bubble Sort"
description: "Sort array using bubble sort algorithm"
topic: "sorting"
parameters:
  - name: "arr"
    type: "array"
    default: [64, 34, 25, 12, 22, 11, 90]
    description: "Array to sort"
exampleOutputs:
  - input: { "arr": [64, 34, 25, 12, 22, 11, 90] }
    output: "[11,12,22,25,34,64,90]"
---

```php
$n = count($arr);
for ($i = 0; $i < $n; $i++) {
    for ($j = 0; $j < $n - $i - 1; $j++) {
        if ($arr[$j] > $arr[$j + 1]) {
            [$arr[$j], $arr[$j + 1]] = [$arr[$j + 1], $arr[$j]];
        }
    }
}
$arr;
```
