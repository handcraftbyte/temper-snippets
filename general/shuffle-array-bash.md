---
title: "Shuffle Array"
description: "Randomly shuffle the elements of an array"
topic: "arrays"
relatedSlugs:
  - "shuffle-array-javascript"
  - "shuffle-array-python"
  - "shuffle-array-ruby"
  - "shuffle-array-php"
parameters:
  - name: "arr"
    type: "string"
    default: "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]"
    description: "JSON array to shuffle"
exampleOutputs:
  - input: { "arr": "[1, 2, 3, 4, 5]" }
    output: "3 1 5 2 4"
  - input: { "arr": "[1, 2, 3, 4]" }
    output: "2 4 1 3"
---

```bash
echo "$arr" | tr -d '[]"' | tr ',' '\n' | shuf | tr '\n' ' ' | sed 's/ $//'
```
