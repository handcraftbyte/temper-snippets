---
title: "Quicksort"
description: "Sort an array using the quicksort algorithm with average O(n log n) time complexity."
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
function quicksort($a) {
    if (count($a) <= 1) return $a;
    $pivot = $a[0];
    $rest = array_slice($a, 1);
    $left = array_filter($rest, fn($x) => $x <= $pivot);
    $right = array_filter($rest, fn($x) => $x > $pivot);
    return array_merge(quicksort(array_values($left)), [$pivot], quicksort(array_values($right)));
}
quicksort($arr);
```
