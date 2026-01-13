---
title: "Sum Array"
description: "Calculate the sum of all numbers in an array"
topic: "arrays"
relatedSlugs:
  - "sum-array-javascript"
  - "sum-array-python"
  - "sum-array-ruby"
  - "sum-array-php"
parameters:
  - name: "arr"
    type: "string"
    default: "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]"
    description: "JSON array of numbers"
exampleOutputs:
  - input: { "arr": "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]" }
    output: "55"
  - input: { "arr": "[10, 20, 30]" }
    output: "60"
---

```bash
echo "$arr" | tr -d '[]' | tr ',' '\n' | awk '{s+=$1} END {print s}'
```
