---
title: "Center String"
description: "Center a string within a given width"
topic: "strings"
parameters:
  - name: "s"
    type: "string"
    default: "Hello"
    description: "String to center"
  - name: "width"
    type: "number"
    default: 15
    description: "Total width"
exampleOutputs:
  - input: { "s": "Hello", "width": 15 }
    output: "     Hello     "
---

```php
$padding = max(0, $width - strlen($s));
$left = floor($padding / 2);
return str_repeat(' ', $left) . $s . str_repeat(' ', $padding - $left);
```
