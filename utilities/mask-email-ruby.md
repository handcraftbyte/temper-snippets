---
title: "Mask Email"
description: "Mask an email address for privacy while keeping it recognizable"
topic: "strings"
parameters:
  - name: "email"
    type: "string"
    default: "john.doe@example.com"
    description: "The email address to mask"
exampleOutputs:
  - input: { "email": "john.doe@example.com" }
    output: "j******e@example.com"
  - input: { "email": "test@gmail.com" }
    output: "t**t@gmail.com"
---

```ruby
email.sub(/^(.)(.*)(.@.*)$/) { $1 + '*' * $2.length + $3 }
```
