---
title: "Is Empty"
description: "Check if a value is empty (null, empty string, array, or hash)"
topic: "validation"
relatedSlugs:
  - "is-empty-javascript"
  - "is-empty-python"
  - "is-empty-php"
  - "is-empty-bash"
parameters:
  - name: "value"
    type: "string"
    default: ""
    description: "JSON value to check"
exampleOutputs:
  - input: { "value": "" }
    output: "true"
  - input: { "value": "[]" }
    output: "true"
  - input: { "value": "{}" }
    output: "true"
  - input: { "value": "[1,2,3]" }
    output: "false"
---

```ruby
require 'json'
v = value == '' ? '' : JSON.parse(value)
return v.nil? || (v.respond_to?(:empty?) && v.empty?)
```
