---
title: "Get Random Array Item"
description: "Get a random item from an array"
topic: "arrays"
relatedSlugs:
  - "random-item-javascript"
  - "random-item-python"
  - "random-item-ruby"
  - "random-item-php"
parameters:
  - name: "arr"
    type: "string"
    default: "[\"apple\", \"banana\", \"cherry\", \"date\", \"elderberry\"]"
    description: "JSON array to pick from"
exampleOutputs:
  - input: { "arr": "[\"apple\", \"banana\", \"cherry\"]" }
    output: "banana"
  - input: { "arr": "[1, 2, 3, 4, 5]" }
    output: "3"
---

```bash
echo "$arr" | tr -d '[]"' | tr ',' '\n' | shuf -n 1
```
