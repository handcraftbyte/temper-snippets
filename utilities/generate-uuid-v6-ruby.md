---
title: "Generate UUID v6"
description: "Generate a reordered time-based UUID v6 with improved sortability for databases."
topic: "generators"
parameters: []
exampleOutputs:
  - input: {}
    output: "1ed9dad8-6ba7-6b10-80b4-00c04fd430c8"
---

```ruby
require 'securerandom'
time_greg = (Time.now.to_f * 10_000_000).to_i + 0x01b21dd213814000
time_high = (time_greg >> 28) & 0xffffffff
time_mid = (time_greg >> 12) & 0xffff
time_low = (time_greg & 0xfff) | 0x6000
clock_seq = SecureRandom.random_number(0x3fff) | 0x8000
node = SecureRandom.random_number(0xffffffffffff)
return '%08x-%04x-%04x-%04x-%012x' % [time_high, time_mid, time_low, clock_seq, node]
```
