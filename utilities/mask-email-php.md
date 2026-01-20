---
title: "Mask Email"
description: "Mask an email address for privacy while keeping it recognizable by showing first and last characters."
topic: "strings"
parameters:
  - name: "email"
    type: "string"
    default: "john.doe@example.com"
    description: "The email address to mask."
exampleOutputs:
  - input: { "email": "john.doe@example.com" }
    output: "j******e@example.com"
  - input: { "email": "test@gmail.com" }
    output: "t**t@gmail.com"
---

```php
preg_replace_callback('/^(.)(.*)(.@.*)$/', fn($m) => $m[1] . str_repeat('*', strlen($m[2])) . $m[3], $email);
```
