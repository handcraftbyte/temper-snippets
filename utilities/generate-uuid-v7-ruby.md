---
title: "Generate UUID v7"
description: "Generate a Unix timestamp-based UUID v7 with millisecond precision, ideal for database primary keys."
topic: "generators"
parameters: []
exampleOutputs:
  - input: {}
    output: "018e5c4d-a8b0-7123-abcd-1234567890ab"
---

```ruby
require 'securerandom'
timestamp = (Time.now.to_f * 1000).to_i
rand_a = SecureRandom.random_number(0xfff)
rand_b = SecureRandom.random_number(2**62)
return '%08x-%04x-7%03x-%04x-%012x' % [
  timestamp >> 16,
  timestamp & 0xffff,
  rand_a,
  (rand_b >> 48) | 0x8000,
  rand_b & 0xffffffffffff
]
```
