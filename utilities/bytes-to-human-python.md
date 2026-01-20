---
title: "Bytes to Human Readable"
description: "Convert bytes to human readable format (KB, MB, GB, etc.) for file sizes."
topic: "math"
relatedSlugs:
  - "bytes-to-human-javascript"
  - "bytes-to-human-ruby"
  - "bytes-to-human-php"
  - "bytes-to-human-bash"
parameters:
  - name: "bytes"
    type: "number"
    default: 1548576
    description: "Number of bytes."
exampleOutputs:
  - input: { "bytes": 1548576 }
    output: "1.48 MB"
  - input: { "bytes": 1073741824 }
    output: "1.00 GB"
  - input: { "bytes": 500 }
    output: "500.00 B"
---

```python
units = ['B', 'KB', 'MB', 'GB', 'TB']
i = 0
size = bytes
while size >= 1024 and i < len(units) - 1:
    size /= 1024
    i += 1
f"{size:.2f} {units[i]}"
```
