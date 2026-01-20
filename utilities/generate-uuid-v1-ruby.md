---
title: "Generate UUID v1"
description: "Generate a time-based UUID v1 using timestamp and random node ID."
topic: "generators"
parameters: []
exampleOutputs:
  - input: {}
    output: "6ba7b810-9dad-11d1-80b4-00c04fd430c8"
---

```ruby
require 'securerandom'
now = Time.now
time_greg = (now.to_f * 10_000_000).to_i + 0x01b21dd213814000
time_low = (time_greg & 0xffffffff).to_s(16).rjust(8, '0')
time_mid = ((time_greg >> 32) & 0xffff).to_s(16).rjust(4, '0')
time_hi = (((time_greg >> 48) & 0x0fff) | 0x1000).to_s(16).rjust(4, '0')
clock_seq = (SecureRandom.random_number(0x3fff) | 0x8000).to_s(16).rjust(4, '0')
node = SecureRandom.hex(6)
return "#{time_low}-#{time_mid}-#{time_hi}-#{clock_seq}-#{node}"
```
