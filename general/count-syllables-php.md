---
title: "Count Syllables"
description: "Estimate the number of syllables in an English word."
topic: "strings"
parameters:
  - name: "word"
    type: "string"
    default: "beautiful"
    description: "Word to count syllables in"
exampleOutputs:
  - input: { "word": "beautiful" }
    output: "3"
---

```php
$w = preg_replace('/(?:[^laeiouy]es|ed|[^laeiouy]e)$/', '', strtolower($word));
preg_match_all('/[aeiouy]{1,2}/', $w, $matches);
return count($matches[0]) ?: 1;
```
