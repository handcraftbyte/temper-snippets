---
title: "Generate UUID v7"
description: "Generate a Unix timestamp-based UUID v7 with millisecond precision, ideal for database primary keys"
topic: "generators"
parameters: []
exampleOutputs:
  - input: {}
    output: "018e5c4d-a8b0-7123-abcd-1234567890ab"
---

```python
import time
import secrets
timestamp = int(time.time() * 1000)
rand_a = secrets.randbits(12)
rand_b = secrets.randbits(62)
return f'{timestamp >> 16:08x}-{timestamp & 0xffff:04x}-7{rand_a:03x}-{(rand_b >> 48) | 0x8000:04x}-{rand_b & 0xffffffffffff:012x}'
```
