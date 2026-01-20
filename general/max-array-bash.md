---
title: "Max Value in Array"
description: "Find the maximum value in an array."
topic: "arrays"
relatedSlugs:
  - "max-array-javascript"
  - "max-array-python"
  - "max-array-ruby"
  - "max-array-php"
parameters:
  - name: "arr"
    type: "string"
    default: "[5, 2, 9, 1, 7, 3]"
    description: "JSON array of numbers"
exampleOutputs:
  - input: { "arr": "[5, 2, 9, 1, 7, 3]" }
    output: "9"
  - input: { "arr": "[100, 50, 75, 25]" }
    output: "100"
---

```bash
echo "$arr" | tr -d '[]' | tr ',' '\n' | sort -rn | head -1
```
