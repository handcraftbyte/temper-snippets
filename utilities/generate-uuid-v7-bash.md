---
title: "Generate UUID v7"
description: "Generate a Unix timestamp-based UUID v7 with millisecond precision, ideal for database primary keys."
topic: "generators"
parameters: []
exampleOutputs:
  - input: {}
    output: "018e5c4d-a8b0-7123-abcd-1234567890ab"
---

```bash
t=$(date +%s%3N)
r=$(od -An -tx1 -N10 /dev/urandom | tr -d ' \n')
printf '%08x-%04x-7%s-%04x-%s\n' \
  $(( t >> 16 )) \
  $(( t & 0xffff )) \
  "${r:0:3}" \
  $(( (0x${r:3:4} & 0x3fff) | 0x8000 )) \
  "${r:7:12}"
```
