---
title: "Check if Palindrome"
description: "Check if a string is a palindrome (reads the same forwards and backwards)"
topic: "strings"
parameters:
  - name: "s"
    type: "string"
    default: "A man a plan a canal Panama"
    description: "The string to check"
exampleOutputs:
  - input: { "s": "A man a plan a canal Panama" }
    output: "true"
  - input: { "s": "racecar" }
    output: "true"
  - input: { "s": "hello" }
    output: "false"
---

```php
$clean = preg_replace('/[^a-z0-9]/', '', strtolower($s));
return $clean === strrev($clean);
```
