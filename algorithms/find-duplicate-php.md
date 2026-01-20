---
title: "Find Duplicate"
description: "Find the first duplicate element that appears in an array using a hash set for efficient lookup."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 2, 5]
    description: "Array to check"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 2, 5] }
    output: "2"
---

```php
$seen = [];
$dup = null;
foreach ($arr as $x) {
    if (isset($seen[$x])) { $dup = $x; break; }
    $seen[$x] = true;
}
return $dup;
```
