---
title: "Remove Duplicate Characters"
description: "Remove duplicate characters from a string, keeping first occurrence"
topic: "strings"
parameters:
  - name: "s"
    type: "string"
    default: "programming"
    description: "The string to remove duplicates from"
exampleOutputs:
  - input: { "s": "programming" }
    output: "progamin"
  - input: { "s": "hello" }
    output: "helo"
---

```php
implode('', array_unique(str_split($s)));
```
