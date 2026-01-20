---
title: "Unique by Property"
description: "Remove duplicates from array of objects by a specific property."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [{"id": 1, "name": "John"}, {"id": 2, "name": "Jane"}, {"id": 1, "name": "Johnny"}]
    description: "Array of objects"
  - name: "key"
    type: "string"
    default: "id"
    description: "Property to check for uniqueness"
exampleOutputs:
  - input: { "arr": [{"id": 1, "name": "John"}, {"id": 2, "name": "Jane"}, {"id": 1, "name": "Johnny"}], "key": "id" }
    output: "[{\"id\":1,\"name\":\"John\"},{\"id\":2,\"name\":\"Jane\"}]"
---

```ruby
arr.uniq { |item| item[key] }
```
