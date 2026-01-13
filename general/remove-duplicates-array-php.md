---
title: "Remove Array Duplicates"
description: "Remove duplicate values from an array"
topic: "arrays"
relatedSlugs:
  - "remove-duplicates-array-javascript"
  - "remove-duplicates-array-python"
  - "remove-duplicates-array-ruby"
  - "remove-duplicates-array-bash"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 2, 3, 3, 3, 4, 5, 5]
    description: "Array with duplicates"
exampleOutputs:
  - input: { "arr": [1, 2, 2, 3, 3, 3, 4, 5, 5] }
    output: "[1, 2, 3, 4, 5]"
  - input: { "arr": ["a", "b", "a", "c", "b"] }
    output: "[\"a\", \"b\", \"c\"]"
---

```php
array_values(array_unique($arr));
```
