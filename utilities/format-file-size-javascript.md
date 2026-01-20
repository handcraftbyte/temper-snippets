---
title: "Format File Size"
description: "Format bytes to a human readable file size with appropriate units."
topic: "formatting"
parameters:
  - name: "bytes"
    type: "number"
    default: 1536000
    description: "Size in bytes."
exampleOutputs:
  - input: { "bytes": 1536000 }
    output: "1.46 MB"
  - input: { "bytes": 1024 }
    output: "1.00 KB"
---

```javascript
const units = ['B', 'KB', 'MB', 'GB', 'TB'];
let i = 0, size = bytes;
while (size >= 1024 && i < units.length - 1) { size /= 1024; i++; }
return `${size.toFixed(2)} ${units[i]}`;
```
