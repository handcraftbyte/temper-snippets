---
title: "Drop While"
description: "Remove elements from start while condition is true"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5, 1, 2]
    description: "Array"
  - name: "threshold"
    type: "number"
    default: 3
    description: "Drop while less than threshold"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5, 1, 2], "threshold": 3 }
    output: "[3, 4, 5, 1, 2]"
---

```ruby
arr.drop_while { |x| x < threshold }
```
