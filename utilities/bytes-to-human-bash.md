---
title: "Bytes to Human Readable"
description: "Convert bytes to human readable format (KB, MB, GB, etc.) for file sizes."
topic: "math"
relatedSlugs:
  - "bytes-to-human-javascript"
  - "bytes-to-human-python"
  - "bytes-to-human-ruby"
  - "bytes-to-human-php"
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

```bash
numfmt --to=iec-i --suffix=B --format="%.2f" "$bytes"
```
