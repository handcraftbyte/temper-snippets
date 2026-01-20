---
title: "Normalize Whitespace"
description: "Replace multiple consecutive whitespace characters with a single space and trim edges."
topic: "strings"
parameters:
  - name: "s"
    type: "string"
    default: "Hello    world   this    is   a    test"
    description: "String with irregular whitespace"
exampleOutputs:
  - input: { "s": "Hello    world   this    is   a    test" }
    output: "Hello world this is a test"
---

```php
trim(preg_replace('/\s+/', ' ', $s));
```
