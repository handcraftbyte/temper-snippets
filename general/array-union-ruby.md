---
title: "Array Union"
description: "Combine two arrays and remove duplicates"
topic: "arrays"
parameters:
  - name: "arr1"
    type: "array"
    default: [1, 2, 3]
    description: "First array"
  - name: "arr2"
    type: "array"
    default: [3, 4, 5]
    description: "Second array"
exampleOutputs:
  - input: { "arr1": [1, 2, 3], "arr2": [3, 4, 5] }
    output: "[1, 2, 3, 4, 5]"
---

```ruby
arr1 | arr2
```
