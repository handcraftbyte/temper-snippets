---
title: "Binary Search"
description: "Find the index of an element in a sorted array using binary search with O(log n) time complexity."
topic: "searching"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 3, 5, 7, 9, 11, 13]
    description: "Sorted array"
  - name: "target"
    type: "number"
    default: 7
    description: "Element to find"
exampleOutputs:
  - input: { "arr": [1, 3, 5, 7, 9, 11, 13], "target": 7 }
    output: "3"
---

```php
$lo = 0; $hi = count($arr) - 1; $result = -1;
while ($lo <= $hi) {
    $mid = intdiv($lo + $hi, 2);
    if ($arr[$mid] === $target) { $result = $mid; break; }
    elseif ($arr[$mid] < $target) $lo = $mid + 1;
    else $hi = $mid - 1;
}
$result;
```
