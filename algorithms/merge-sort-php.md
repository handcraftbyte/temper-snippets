---
title: "Merge Sort"
description: "Sort an array using the merge sort algorithm with O(n log n) time complexity."
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
function mergeSort($a) {
    if (count($a) <= 1) return $a;
    $mid = (int)(count($a) / 2);
    $left = mergeSort(array_slice($a, 0, $mid));
    $right = mergeSort(array_slice($a, $mid));
    $result = [];
    while (count($left) && count($right)) {
        $result[] = $left[0] <= $right[0] ? array_shift($left) : array_shift($right);
    }
    return array_merge($result, $left, $right);
}
mergeSort($arr);
```
