---
title: "Format Bytes (IEC)"
description: "Format bytes using IEC units (KiB, MiB, GiB) based on powers of 1024."
topic: "formatting"
parameters:
  - name: "bytes"
    type: "number"
    default: 1048576
    description: "Size in bytes."
exampleOutputs:
  - input: { "bytes": 1048576 }
    output: "1.00 MiB"
---

```ruby
units = ['B', 'KiB', 'MiB', 'GiB', 'TiB']
size = bytes.to_f
i = 0
while size >= 1024 && i < units.length - 1
  size /= 1024
  i += 1
end
return '%.2f %s' % [size, units[i]]
```
