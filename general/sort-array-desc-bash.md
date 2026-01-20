---
title: "Sort Array Descending"
description: "Sort an array of numbers in descending order."
topic: "arrays"
relatedSlugs:
  - "sort-array-desc-javascript"
  - "sort-array-desc-python"
  - "sort-array-desc-ruby"
  - "sort-array-desc-php"
parameters:
  - name: "arr"
    type: "string"
    default: "[5, 2, 9, 1, 7, 3]"
    description: "JSON array of numbers"
exampleOutputs:
  - input: { "arr": "[5, 2, 9, 1, 7, 3]" }
    output: "9 7 5 3 2 1"
  - input: { "arr": "[100, 50, 75, 25]" }
    output: "100 75 50 25"
---

```bash
echo "$arr" | tr -d '[]' | tr ',' '\n' | sort -rn | tr '\n' ' ' | sed 's/ $//'
```
