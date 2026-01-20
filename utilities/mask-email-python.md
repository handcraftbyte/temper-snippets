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

```python
import re
return re.sub(r'^(.)(.*)(.@.*)$', lambda m: m.group(1) + '*' * len(m.group(2)) + m.group(3), email)
```
