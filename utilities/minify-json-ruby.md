---
title: "Minify JSON"
description: "Remove whitespace from JSON to minimize size"
topic: "json"
parameters:
  - name: "jsonStr"
    type: "string"
    default: "{\n  \"name\": \"John\",\n  \"age\": 30\n}"
    description: "JSON string to minify"
exampleOutputs:
  - input: { "jsonStr": "{\n  \"name\": \"John\",\n  \"age\": 30\n}" }
    output: "{\"name\":\"John\",\"age\":30}"
---

```ruby
require 'json'
return JSON.parse(jsonStr).to_json
```
