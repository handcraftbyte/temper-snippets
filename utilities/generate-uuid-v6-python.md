---
title: "Generate UUID v6"
description: "Generate a reordered time-based UUID v6 with improved sortability for databases"
topic: "generators"
parameters: []
exampleOutputs:
  - input: {}
    output: "1ed9dad8-6ba7-6b10-80b4-00c04fd430c8"
---

```python
import time
import random
time_greg = int(time.time() * 10_000_000) + 0x01b21dd213814000
time_high = (time_greg >> 28) & 0xffffffff
time_mid = (time_greg >> 12) & 0xffff
time_low = (time_greg & 0xfff) | 0x6000
clock_seq = random.randint(0, 0x3fff) | 0x8000
node = random.randint(0, 0xffffffffffff)
return f'{time_high:08x}-{time_mid:04x}-{time_low:04x}-{clock_seq:04x}-{node:012x}'
```
