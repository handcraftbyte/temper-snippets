---
title: "Count Substring Occurrences"
description: "Count how many times a substring appears in a string (non-overlapping)."
topic: "strings"
relatedSlugs:
  - "count-occurrences-javascript"
  - "count-occurrences-python"
  - "count-occurrences-ruby"
  - "count-occurrences-bash"
parameters:
  - name: "str"
    type: "string"
    default: "the cat in the hat sat on the mat"
    description: "The string to search in"
  - name: "substring"
    type: "string"
    default: "the"
    description: "The substring to count"
exampleOutputs:
  - input: { "str": "the cat in the hat sat on the mat", "substring": "the" }
    output: "3"
  - input: { "str": "banana", "substring": "a" }
    output: "3"
---

```php
substr_count($str, $substring)
```
