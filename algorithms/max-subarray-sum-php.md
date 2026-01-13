---
title: "Maximum Subarray Sum"
description: "Find the maximum sum of a contiguous subarray (Kadane's algorithm)"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [-2, 1, -3, 4, -1, 2, 1, -5, 4]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [-2, 1, -3, 4, -1, 2, 1, -5, 4] }
    output: "6"
---

```php
$maxSum = $currentSum = $arr[0];
for ($i = 1; $i < count($arr); $i++) {
    $currentSum = max($arr[$i], $currentSum + $arr[$i]);
    $maxSum = max($maxSum, $currentSum);
}
return $maxSum;
```
