---
title: "Is Empty Object"
description: "Check if an object has no properties."
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {}
    description: "Object to check"
exampleOutputs:
  - input: { "obj": {} }
    output: "true"
  - input: { "obj": { "a": 1 } }
    output: "false"
---

```ruby
obj.empty?
```
