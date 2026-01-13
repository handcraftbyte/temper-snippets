---
title: "Heap Sort"
description: "Sort array using heap sort algorithm"
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
function heapify(&$a, $n, $i) {
    $largest = $i; $l = 2 * $i + 1; $r = 2 * $i + 2;
    if ($l < $n && $a[$l] > $a[$largest]) $largest = $l;
    if ($r < $n && $a[$r] > $a[$largest]) $largest = $r;
    if ($largest !== $i) {
        [$a[$i], $a[$largest]] = [$a[$largest], $a[$i]];
        heapify($a, $n, $largest);
    }
}
$n = count($arr);
for ($i = (int)($n / 2) - 1; $i >= 0; $i--) heapify($arr, $n, $i);
for ($i = $n - 1; $i > 0; $i--) {
    [$arr[0], $arr[$i]] = [$arr[$i], $arr[0]];
    heapify($arr, $i, 0);
}
$arr;
```
