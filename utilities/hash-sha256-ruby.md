---
title: "Hash SHA-256"
description: "Generate a SHA-256 hash of a string"
topic: "security"
parameters:
  - name: "str"
    type: "string"
    default: "Hello World"
    description: "String to hash"
exampleOutputs:
  - input: { "str": "Hello World" }
    output: "a591a6d40bf420404a011733cfb7b190d62c65bf0bcda32b57b277d9ad9f146e"
---

```ruby
require 'digest'
return Digest::SHA256.hexdigest(str)
```
