---
title: "Spiral Matrix"
description: "Traverse a 2D matrix in spiral order starting from the top-left corner."
topic: "arrays"
parameters:
  - name: "matrix"
    type: "array"
    default: [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    description: "2D matrix"
exampleOutputs:
  - input: { "matrix": [[1, 2, 3], [4, 5, 6], [7, 8, 9]] }
    output: "[1,2,3,6,9,8,7,4,5]"
---

```php
$result = [];
$top = 0; $bottom = count($matrix) - 1; $left = 0; $right = count($matrix[0]) - 1;
while ($top <= $bottom && $left <= $right) {
    for ($i = $left; $i <= $right; $i++) $result[] = $matrix[$top][$i];
    $top++;
    for ($i = $top; $i <= $bottom; $i++) $result[] = $matrix[$i][$right];
    $right--;
    if ($top <= $bottom) {
        for ($i = $right; $i >= $left; $i--) $result[] = $matrix[$bottom][$i];
        $bottom--;
    }
    if ($left <= $right) {
        for ($i = $bottom; $i >= $top; $i--) $result[] = $matrix[$i][$left];
        $left++;
    }
}
return $result;
```
