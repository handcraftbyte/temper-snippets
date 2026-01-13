---
title: "Find All Duplicates"
description: "Find all duplicate elements in an array"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 2, 4, 3, 5]
    description: "Array to check"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 2, 4, 3, 5] }
    output: "[2,3]"
---

```ruby
arr.tally.select { |_, v| v > 1 }.keys
```
