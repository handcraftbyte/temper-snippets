---
title: "Count By Property"
description: "Count occurrences of array elements grouped by a specified property."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [{"type": "a"}, {"type": "b"}, {"type": "a"}, {"type": "c"}, {"type": "a"}]
    description: "Array of objects"
  - name: "key"
    type: "string"
    default: "type"
    description: "Property to count by"
exampleOutputs:
  - input: { "arr": [{"type": "a"}, {"type": "b"}, {"type": "a"}, {"type": "c"}, {"type": "a"}], "key": "type" }
    output: "{\"a\":3,\"b\":1,\"c\":1}"
---

```ruby
arr.map { |item| item[key] }.tally
```
