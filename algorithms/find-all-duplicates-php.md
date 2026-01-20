---
title: "Find All Duplicates"
description: "Find all elements that appear more than once in an array using frequency counting."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 2, 4, 3, 5]
    description: "Array to check"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 2, 4, 3, 5] }
    output: "[2,3]"
---

```php
$counts = array_count_values($arr);
$dups = array_keys(array_filter($counts, fn($v) => $v > 1));
return array_values($dups);
```
