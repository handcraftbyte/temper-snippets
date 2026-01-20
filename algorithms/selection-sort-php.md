---
title: "Selection Sort"
description: "Sort an array using the selection sort algorithm by repeatedly finding the minimum element."
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
    $minIdx = $i;
    for ($j = $i + 1; $j < $n; $j++) {
        if ($arr[$j] < $arr[$minIdx]) $minIdx = $j;
    }
    [$arr[$i], $arr[$minIdx]] = [$arr[$minIdx], $arr[$i]];
}
$arr;
```
