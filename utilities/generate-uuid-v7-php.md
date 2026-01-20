---
title: "Generate UUID v7"
description: "Generate a Unix timestamp-based UUID v7 with millisecond precision, ideal for database primary keys."
topic: "generators"
parameters: []
exampleOutputs:
  - input: {}
    output: "018e5c4d-a8b0-7123-abcd-1234567890ab"
---

```php
$timestamp = (int)(microtime(true) * 1000);
$randA = mt_rand(0, 0xfff);
$randB1 = mt_rand(0, 0x3fff) | 0x8000;
$randB2 = mt_rand(0, 0xffffff) << 24 | mt_rand(0, 0xffffff);
return sprintf('%08x-%04x-7%03x-%04x-%012x', $timestamp >> 16, $timestamp & 0xffff, $randA, $randB1, $randB2);
```
