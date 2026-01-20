---
title: "Hex to RGB"
description: "Convert a hex color code to RGB values."
topic: "colors"
parameters:
  - name: "hex"
    type: "string"
    default: "#ff5733"
    description: "The hex color code."
exampleOutputs:
  - input: { "hex": "#ff5733" }
    output: "{\"r\":255,\"g\":87,\"b\":51}"
---

```php
$h = ltrim($hex, '#');
return ['r' => hexdec(substr($h, 0, 2)), 'g' => hexdec(substr($h, 2, 2)), 'b' => hexdec(substr($h, 4, 2))];
```
