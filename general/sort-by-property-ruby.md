---
title: "Sort by Property"
description: "Sort an array of objects by a specific property"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [{"name": "Charlie", "age": 30}, {"name": "Alice", "age": 25}, {"name": "Bob", "age": 35}]
    description: "Array of objects"
  - name: "key"
    type: "string"
    default: "name"
    description: "Property to sort by"
exampleOutputs:
  - input: { "arr": [{"name": "Charlie"}, {"name": "Alice"}, {"name": "Bob"}], "key": "name" }
    output: "[{\"name\":\"Alice\"},{\"name\":\"Bob\"},{\"name\":\"Charlie\"}]"
---

```ruby
arr.sort_by { |x| x[key] }
```
