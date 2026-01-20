---
title: "Compact Array"
description: "Remove falsy values (null, false, 0, empty strings) from an array."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [0, 1, false, 2, "", 3, null, null, 4]
    description: "Array with falsy values"
exampleOutputs:
  - input: { "arr": [0, 1, false, 2, "", 3, null, null, 4] }
    output: "[1, 2, 3, 4]"
---

```php
array_values(array_filter($arr));
```
