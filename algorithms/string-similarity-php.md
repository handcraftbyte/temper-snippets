---
title: "String Similarity"
description: "Calculate the similarity percentage between two strings based on edit distance."
topic: "strings"
parameters:
  - name: "a"
    type: "string"
    default: "hello"
    description: "First string"
  - name: "b"
    type: "string"
    default: "hallo"
    description: "Second string"
exampleOutputs:
  - input: { "a": "hello", "b": "hallo" }
    output: "80"
---

```php
$distance = levenshtein($a, $b);
$maxLen = max(strlen($a), strlen($b));
return round((1 - $distance / $maxLen) * 100);
```
