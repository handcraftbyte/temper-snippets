---
title: "Get Nested Value"
description: "Safely get a nested property value from an object"
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: { "user": { "profile": { "name": "John" } } }
    description: "Object to search"
  - name: "path"
    type: "string"
    default: "user.profile.name"
    description: "Dot-separated path to property"
exampleOutputs:
  - input: { "obj": { "user": { "profile": { "name": "John" } } }, "path": "user.profile.name" }
    output: "John"
---

```php
$o = (array)$obj;
$result = array_reduce(explode('.', $path), fn($o, $k) => is_array($o) && isset($o[$k]) ? $o[$k] : null, $o);
return $result;
```
