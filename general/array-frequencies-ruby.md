---
title: "Array Frequencies"
description: "Count how many times each value appears in an array and return a frequency map."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: ["a", "b", "a", "c", "a", "b"]
    description: "Array to count"
exampleOutputs:
  - input: { "arr": ["a", "b", "a", "c", "a", "b"] }
    output: "{\"a\":3,\"b\":2,\"c\":1}"
---

```ruby
arr.tally
```
