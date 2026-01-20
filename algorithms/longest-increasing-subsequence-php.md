---
title: "Longest Increasing Subsequence"
description: "Find the length of the longest increasing subsequence in an array using dynamic programming."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [10, 9, 2, 5, 3, 7, 101, 18]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [10, 9, 2, 5, 3, 7, 101, 18] }
    output: "4"
---

```php
$n = count($arr);
$dp = array_fill(0, $n, 1);
for ($i = 1; $i < $n; $i++) {
    for ($j = 0; $j < $i; $j++) {
        if ($arr[$i] > $arr[$j]) {
            $dp[$i] = max($dp[$i], $dp[$j] + 1);
        }
    }
}
return max($dp);
```
