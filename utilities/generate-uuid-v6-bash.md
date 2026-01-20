---
title: "Generate UUID v6"
description: "Generate a reordered time-based UUID v6 with improved sortability for databases."
topic: "generators"
parameters: []
exampleOutputs:
  - input: {}
    output: "1ed9dad8-6ba7-6b10-80b4-00c04fd430c8"
---

```bash
t=$(( $(date +%s) * 10000000 + 0x01b21dd213814000 ))
r=$(od -An -tx1 -N8 /dev/urandom | tr -d ' \n')
printf '%08x-%04x-%04x-%04x-%s\n' \
  $(( (t >> 28) & 0xffffffff )) \
  $(( (t >> 12) & 0xffff )) \
  $(( (t & 0xfff) | 0x6000 )) \
  $(( (0x${r:0:4} & 0x3fff) | 0x8000 )) \
  "${r:4:12}"
```
