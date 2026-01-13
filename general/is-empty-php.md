---
title: "Is Empty"
description: "Check if a value is empty (null, empty string, array, or object)"
topic: "validation"
relatedSlugs:
  - "is-empty-javascript"
  - "is-empty-python"
  - "is-empty-ruby"
  - "is-empty-bash"
parameters:
  - name: "value"
    type: "string"
    default: ""
    description: "JSON value to check"
exampleOutputs:
  - input: { "value": "" }
    output: "true"
  - input: { "value": "[]" }
    output: "true"
  - input: { "value": "{}" }
    output: "true"
  - input: { "value": "[1,2,3]" }
    output: "false"
---

```php
$v = $value === '' ? '' : json_decode($value, true);
return empty($v);
```
