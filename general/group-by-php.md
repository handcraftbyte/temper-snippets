---
title: "Group By Property"
description: "Group array items by a property value."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [{ "type": "fruit", "name": "apple" }, { "type": "vegetable", "name": "carrot" }, { "type": "fruit", "name": "banana" }]
    description: "Array of objects"
  - name: "key"
    type: "string"
    default: "type"
    description: "Property to group by"
exampleOutputs:
  - input: { "arr": [{ "type": "fruit", "name": "apple" }, { "type": "vegetable", "name": "carrot" }, { "type": "fruit", "name": "banana" }], "key": "type" }
    output: "{\"fruit\":[...],\"vegetable\":[...]}"
---

```php
$groups = [];
foreach ($arr as $item) {
    $groups[$item[$key]][] = $item;
}
return $groups;
```
