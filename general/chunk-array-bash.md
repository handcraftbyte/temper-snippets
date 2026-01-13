---
title: "Chunk Array"
description: "Split an array into chunks of a specified size"
topic: "arrays"
relatedSlugs:
  - "chunk-array-javascript"
  - "chunk-array-python"
  - "chunk-array-ruby"
  - "chunk-array-php"
parameters:
  - name: "arr"
    type: "string"
    default: "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]"
    description: "JSON array to chunk"
  - name: "size"
    type: "number"
    default: 3
    description: "Size of each chunk"
exampleOutputs:
  - input: { "arr": "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]", "size": 3 }
    output: "1 2 3\\n4 5 6\\n7 8 9\\n10"
  - input: { "arr": "[1, 2, 3, 4, 5, 6]", "size": 2 }
    output: "1 2\\n3 4\\n5 6"
---

```bash
echo "$arr" | tr -d '[]' | tr ',' '\n' | xargs -n "$size"
```
