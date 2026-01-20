---
title: "Average Array"
description: "Calculate the arithmetic mean of all numbers in an array."
topic: "arrays"
relatedSlugs:
  - "average-array-javascript"
  - "average-array-python"
  - "average-array-ruby"
  - "average-array-bash"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] }
    output: "5.5"
  - input: { "arr": [10, 20, 30] }
    output: "20"
---

```php
array_sum($arr) / count($arr);
```
