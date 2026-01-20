---
title: "Rotate Matrix 90"
description: "Rotate a 2D square matrix 90 degrees clockwise by transposing and reversing rows."
topic: "arrays"
parameters:
  - name: "matrix"
    type: "array"
    default: [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    description: "Square matrix"
exampleOutputs:
  - input: { "matrix": [[1, 2, 3], [4, 5, 6], [7, 8, 9]] }
    output: "[[7,4,1],[8,5,2],[9,6,3]]"
---

```php
$n = count($matrix);
$result = [];
for ($i = 0; $i < $n; $i++) {
    $result[$i] = [];
    for ($j = 0; $j < $n; $j++) {
        $result[$i][$j] = $matrix[$n - 1 - $j][$i];
    }
}
return $result;
```
