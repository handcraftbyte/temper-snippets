---
title: "Levenshtein Distance"
description: "Calculate the edit distance between two strings"
topic: "strings"
parameters:
  - name: "a"
    type: "string"
    default: "kitten"
    description: "First string"
  - name: "b"
    type: "string"
    default: "sitting"
    description: "Second string"
exampleOutputs:
  - input: { "a": "kitten", "b": "sitting" }
    output: "3"
---

```php
return levenshtein($a, $b);
```
