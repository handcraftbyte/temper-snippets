---
title: "Generate UUID v4"
description: "Generate a random UUID v4 (Universally Unique Identifier)."
topic: "generators"
parameters: []
exampleOutputs:
  - input: {}
    output: "550e8400-e29b-41d4-a716-446655440000"
---

```php
return sprintf('%04x%04x-%04x-%04x-%04x-%04x%04x%04x',
    mt_rand(0, 0xffff), mt_rand(0, 0xffff),
    mt_rand(0, 0xffff),
    mt_rand(0, 0x0fff) | 0x4000,
    mt_rand(0, 0x3fff) | 0x8000,
    mt_rand(0, 0xffff), mt_rand(0, 0xffff), mt_rand(0, 0xffff)
);
```
