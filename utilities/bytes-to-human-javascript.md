---
title: "Bytes to Human Readable"
description: "Convert bytes to human readable format (KB, MB, GB, etc.) for file sizes."
topic: "math"
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
    output: "500 B"
---

```javascript
const units = ['B', 'KB', 'MB', 'GB', 'TB'];
let i = 0;
let size = bytes;
while (size >= 1024 && i < units.length - 1) { size /= 1024; i++; }
return `${size.toFixed(2)} ${units[i]}`;
```
