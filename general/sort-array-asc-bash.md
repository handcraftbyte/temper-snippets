---
title: "Sort Array Ascending"
description: "Sort an array of numbers in ascending order."
topic: "arrays"
relatedSlugs:
  - "sort-array-asc-javascript"
  - "sort-array-asc-python"
  - "sort-array-asc-ruby"
  - "sort-array-asc-php"
parameters:
  - name: "arr"
    type: "string"
    default: "[5, 2, 9, 1, 7, 3]"
    description: "JSON array of numbers"
exampleOutputs:
  - input: { "arr": "[5, 2, 9, 1, 7, 3]" }
    output: "1 2 3 5 7 9"
  - input: { "arr": "[100, 50, 75, 25]" }
    output: "25 50 75 100"
---

```bash
echo "$arr" | tr -d '[]' | tr ',' '\n' | sort -n | tr '\n' ' ' | sed 's/ $//'
```
