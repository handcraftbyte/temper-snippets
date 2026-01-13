---
title: "Get Nested Value"
description: "Safely get a nested property value from an object"
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: { "user": { "profile": { "name": "John" } } }
    description: "Object"
  - name: "path"
    type: "string"
    default: "user.profile.name"
    description: "Dot-separated path to property"
exampleOutputs:
  - input: { "obj": { "user": { "profile": { "name": "John" } } }, "path": "user.profile.name" }
    output: "John"
---

```ruby
result = path.split('.').reduce(obj) { |o, k| o.is_a?(Hash) ? o[k] : nil }
return result
```
