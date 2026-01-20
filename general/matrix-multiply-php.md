---
title: "Matrix Multiply"
description: "Multiply two matrices."
topic: "arrays"
parameters:
  - name: "a"
    type: "array"
    default: [[1, 2], [3, 4]]
    description: "First matrix"
  - name: "b"
    type: "array"
    default: [[5, 6], [7, 8]]
    description: "Second matrix"
exampleOutputs:
  - input: { "a": [[1, 2], [3, 4]], "b": [[5, 6], [7, 8]] }
    output: "[[19,22],[43,50]]"
---

```php
$result = [];
for ($i = 0; $i < count($a); $i++) {
    $result[$i] = [];
    for ($j = 0; $j < count($b[0]); $j++) {
        $sum = 0;
        for ($k = 0; $k < count($b); $k++) {
            $sum += $a[$i][$k] * $b[$k][$j];
        }
        $result[$i][$j] = $sum;
    }
}
return $result;
```
