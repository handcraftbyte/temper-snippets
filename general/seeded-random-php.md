---
title: "Seeded Random"
description: "Generate reproducible random numbers using a seed value"
topic: "math"
parameters:
  - name: "seed"
    type: "number"
    default: 12345
    description: "Seed value for reproducibility"
  - name: "count"
    type: "number"
    default: 5
    description: "How many random numbers to generate"
exampleOutputs:
  - input: { "seed": 12345, "count": 3 }
    output: "[0.0017,0.8033,0.1044]"
---

```php
mt_srand($seed);
$result = [];
for ($i = 0; $i < $count; $i++) {
    $result[] = round(mt_rand() / mt_getrandmax(), 4);
}
return $result;
```
