---
title: "Pluck Property"
description: "Extract a specific property value from each object in an array."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [{"name": "John", "age": 30}, {"name": "Jane", "age": 25}, {"name": "Bob", "age": 35}]
    description: "Array of objects"
  - name: "key"
    type: "string"
    default: "name"
    description: "Property to extract"
exampleOutputs:
  - input: { "arr": [{"name": "John", "age": 30}, {"name": "Jane", "age": 25}, {"name": "Bob", "age": 35}], "key": "name" }
    output: "[\"John\",\"Jane\",\"Bob\"]"
---

```ruby
arr.map { |item| item[key] }
```
