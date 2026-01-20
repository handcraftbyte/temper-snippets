---
title: "Remove Duplicate Characters"
description: "Remove duplicate characters from a string while keeping only the first occurrence of each character."
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
