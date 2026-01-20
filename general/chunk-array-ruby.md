---
title: "Chunk Array"
description: "Split an array into smaller chunks of a specified size."
topic: "arrays"
relatedSlugs:
  - "chunk-array-javascript"
  - "chunk-array-python"
  - "chunk-array-php"
  - "chunk-array-bash"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    description: "Array to chunk"
  - name: "size"
    type: "number"
    default: 3
    description: "Size of each chunk"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "size": 3 }
    output: "[[1, 2, 3], [4, 5, 6], [7, 8, 9], [10]]"
  - input: { "arr": [1, 2, 3, 4, 5, 6], "size": 2 }
    output: "[[1, 2], [3, 4], [5, 6]]"
---

```ruby
arr.each_slice(size).to_a
```
