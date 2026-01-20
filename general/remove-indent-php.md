---
title: "Remove Common Indent"
description: "Remove the common leading whitespace from all lines in a multi-line string, normalizing indentation."
topic: "strings"
parameters:
  - name: "s"
    type: "string"
    default: "    line1\\n    line2\\n      line3"
    description: "Indented multi-line string"
exampleOutputs:
  - input: { "s": "    line1\\n    line2\\n      line3" }
    output: "line1\\nline2\\n  line3"
---

```php
$lines = explode("\n", $s);
$nonEmpty = array_filter($lines, fn($l) => trim($l) !== '');
$minIndent = min(array_map(fn($l) => strlen($l) - strlen(ltrim($l)), $nonEmpty)) ?: 0;
return implode("\n", array_map(fn($l) => substr($l, $minIndent), $lines));
```
