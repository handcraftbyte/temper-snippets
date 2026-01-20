---
title: "Min Value in Array"
description: "Find the minimum value in an array."
topic: "arrays"
relatedSlugs:
  - "min-array-javascript"
  - "min-array-python"
  - "min-array-ruby"
  - "min-array-php"
parameters:
  - name: "arr"
    type: "string"
    default: "[5, 2, 9, 1, 7, 3]"
    description: "JSON array of numbers"
exampleOutputs:
  - input: { "arr": "[5, 2, 9, 1, 7, 3]" }
    output: "1"
  - input: { "arr": "[100, 50, 75, 25]" }
    output: "25"
---

```bash
echo "$arr" | tr -d '[]' | tr ',' '\n' | sort -n | head -1
```
