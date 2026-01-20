---
title: "Decode Base64"
description: "Decode a Base64 encoded string back to its original text representation."
topic: "encoding"
parameters:
  - name: "input"
    type: "string"
    default: "SGVsbG8gV29ybGQh"
    description: "The Base64 encoded string to decode."
exampleOutputs:
  - input: { "input": "SGVsbG8gV29ybGQh" }
    output: "Hello World!"
---

```ruby
require 'base64'
return Base64.strict_decode64(input)
```
