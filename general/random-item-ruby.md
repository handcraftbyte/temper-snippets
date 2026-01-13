---
title: "Get Random Array Item"
description: "Get a random item from an array"
topic: "arrays"
relatedSlugs:
  - "random-item-javascript"
  - "random-item-python"
  - "random-item-php"
  - "random-item-bash"
parameters:
  - name: "arr"
    type: "array"
    default: ["apple", "banana", "cherry", "date", "elderberry"]
    description: "Array to pick from"
exampleOutputs:
  - input: { "arr": ["apple", "banana", "cherry"] }
    output: "banana"
  - input: { "arr": [1, 2, 3, 4, 5] }
    output: "3"
---

```ruby
arr.sample
```
