---
title: "Longest Common Substring"
description: "Find the longest contiguous substring that appears in both strings using an iterative approach."
topic: "strings"
parameters:
  - name: "a"
    type: "string"
    default: "abcdxyz"
    description: "First string"
  - name: "b"
    type: "string"
    default: "xyzabcd"
    description: "Second string"
exampleOutputs:
  - input: { "a": "abcdxyz", "b": "xyzabcd" }
    output: "abcd"
---

```php
$longest = '';
for ($i = 0; $i < strlen($a); $i++) {
    for ($j = $i + 1; $j <= strlen($a); $j++) {
        $current = substr($a, $i, $j - $i);
        if (strpos($b, $current) !== false && strlen($current) > strlen($longest)) {
            $longest = $current;
        }
    }
}
return $longest;
```
