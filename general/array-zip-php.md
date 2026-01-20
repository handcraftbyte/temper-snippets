---
title: "Zip Arrays"
description: "Combine multiple arrays element by element into tuples."
topic: "arrays"
parameters:
  - name: "arrays"
    type: "array"
    default: [[1, 2, 3], ["a", "b", "c"], [true, false, true]]
    description: "Arrays to zip"
exampleOutputs:
  - input: { "arrays": [[1, 2, 3], ["a", "b", "c"], [true, false, true]] }
    output: "[[1, \"a\", true], [2, \"b\", false], [3, \"c\", true]]"
---

```php
array_map(null, ...$arrays);
```
