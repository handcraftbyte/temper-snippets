---
title: "Format Ordinal"
description: "Convert number to ordinal (1st, 2nd, 3rd, etc.)"
topic: "formatting"
parameters:
  - name: "num"
    type: "number"
    default: 42
    description: "Number to convert"
exampleOutputs:
  - input: { "num": 1 }
    output: "1st"
  - input: { "num": 22 }
    output: "22nd"
  - input: { "num": 42 }
    output: "42nd"
---

```php
$suffixes = ['th', 'st', 'nd', 'rd'];
$v = $num % 100;
$suffix = ($v >= 11 && $v <= 13) ? 'th' : ($suffixes[$v % 10] ?? 'th');
$num . $suffix;
```
