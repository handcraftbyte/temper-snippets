---
title: "Remove Array Duplicates"
description: "Remove duplicate values from an array while preserving the original order of first occurrences."
topic: "arrays"
relatedSlugs:
  - "remove-duplicates-array-javascript"
  - "remove-duplicates-array-python"
  - "remove-duplicates-array-ruby"
  - "remove-duplicates-array-php"
parameters:
  - name: "arr"
    type: "string"
    default: "[1, 2, 2, 3, 3, 3, 4, 5, 5]"
    description: "JSON array with duplicates"
exampleOutputs:
  - input: { "arr": "[1, 2, 2, 3, 3, 3, 4, 5, 5]" }
    output: "1 2 3 4 5"
  - input: { "arr": "[\"a\", \"b\", \"a\", \"c\", \"b\"]" }
    output: "a b c"
---

```bash
echo "$arr" | tr -d '[]"' | tr ',' '\n' | awk '!seen[$0]++' | tr '\n' ' ' | sed 's/ $//'
```
