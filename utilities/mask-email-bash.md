---
title: "Mask Email"
description: "Mask an email address for privacy while keeping it recognizable by showing first and last characters."
topic: "strings"
parameters:
  - name: "email"
    type: "string"
    default: "john.doe@example.com"
    description: "The email address to mask."
exampleOutputs:
  - input: { "email": "john.doe@example.com" }
    output: "j******e@example.com"
  - input: { "email": "test@gmail.com" }
    output: "t**t@gmail.com"
---

```bash
local_part="${email%@*}"
domain="${email#*@}"
first="${local_part:0:1}"
last="${local_part: -1}"
middle=$(printf '%*s' $((${#local_part}-2)) '' | tr ' ' '*')
echo "${first}${middle}${last}@${domain}"
```
