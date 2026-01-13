---
title: "Format Bytes (IEC)"
description: "Format bytes using IEC units (KiB, MiB, GiB)"
topic: "formatting"
parameters:
  - name: "bytes"
    type: "number"
    default: 1048576
    description: "Size in bytes"
exampleOutputs:
  - input: { "bytes": 1048576 }
    output: "1.00 MiB"
---

```javascript
const units = ['B', 'KiB', 'MiB', 'GiB', 'TiB'];
let i = 0, size = bytes;
while (size >= 1024 && i < units.length - 1) { size /= 1024; i++; }
return `${size.toFixed(2)} ${units[i]}`;
```
