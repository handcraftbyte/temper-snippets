---
title: "Ordinal Suffix"
description: "Add ordinal suffix to a number (1st, 2nd, 3rd, etc.)"
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 23
    description: "The number to add suffix to"
exampleOutputs:
  - input: { "num": 1 }
    output: "1st"
  - input: { "num": 2 }
    output: "2nd"
  - input: { "num": 3 }
    output: "3rd"
  - input: { "num": 23 }
    output: "23rd"
  - input: { "num": 11 }
    output: "11th"
---

```php
$s = ['th', 'st', 'nd', 'rd'];
$v = $num % 100;
$suffix = $s[($v - 20) % 10] ?? $s[$v] ?? 'th';
return $num . $suffix;
```
