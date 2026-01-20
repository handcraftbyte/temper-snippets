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

```bash
units=(B KiB MiB GiB TiB)
size=$bytes
i=0
while [[ $(echo "$size >= 1024" | bc) -eq 1 ]] && [[ $i -lt 4 ]]; do
    size=$(echo "scale=2; $size / 1024" | bc)
    ((i++))
done
printf "%.2f %s\n" "$size" "${units[$i]}"
```
