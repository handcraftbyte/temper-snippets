---
title: "Unzip Arrays"
description: "Separate zipped arrays back into individual arrays"
topic: "arrays"
parameters:
  - name: "zipped"
    type: "array"
    default: [[1, "a"], [2, "b"], [3, "c"]]
    description: "Zipped array"
exampleOutputs:
  - input: { "zipped": [[1, "a"], [2, "b"], [3, "c"]] }
    output: "[[1,2,3],[\"a\",\"b\",\"c\"]]"
---

```ruby
zipped.transpose
```
