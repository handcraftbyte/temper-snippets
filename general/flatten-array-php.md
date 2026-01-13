---
title: "Flatten Array"
description: "Flatten a nested array to a single level"
topic: "arrays"
relatedSlugs:
  - "flatten-array-javascript"
  - "flatten-array-python"
  - "flatten-array-ruby"
parameters:
  - name: "arr"
    type: "array"
    default: [[1, 2], [3, [4, 5]], [6]]
    description: "Nested array to flatten"
  - name: "depth"
    type: "number"
    default: 1
    description: "Depth to flatten"
exampleOutputs:
  - input: { "arr": [[1, 2], [3, [4, 5]], [6]], "depth": 1 }
    output: "[1, 2, 3, [4, 5], 6]"
  - input: { "arr": [[1, 2], [3, [4, 5]], [6]], "depth": 2 }
    output: "[1, 2, 3, 4, 5, 6]"
---

```php
function flatten($arr, $d) {
    $result = [];
    foreach ($arr as $item) {
        if (is_array($item) && $d > 0) $result = array_merge($result, flatten($item, $d - 1));
        else $result[] = $item;
    }
    return $result;
}
return flatten($arr, $depth);
```
