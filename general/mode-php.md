---
title: "Calculate Mode"
description: "Find the most frequent value(s) in an array."
topic: "math"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 2, 3, 3, 3, 4]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [1, 2, 2, 3, 3, 3, 4] }
    output: "[3]"
  - input: { "arr": [1, 1, 2, 2] }
    output: "[1,2]"
---

```php
$freq = array_count_values($arr);
$maxFreq = max($freq);
$modes = array_keys(array_filter($freq, fn($f) => $f === $maxFreq));
return array_values($modes);
```
