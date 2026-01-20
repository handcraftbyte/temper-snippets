---
title: "Check Password Strength"
description: "Check if a password meets strength requirements (8+ chars, uppercase, lowercase, number, special)."
topic: "validation"
parameters:
  - name: "password"
    type: "string"
    default: "MyP@ssw0rd!"
    description: "Password to check"
exampleOutputs:
  - input: { "password": "MyP@ssw0rd!" }
    output: "true"
  - input: { "password": "weakpass" }
    output: "false"
---

```ruby
password.length >= 8 && password =~ /[a-z]/ && password =~ /[A-Z]/ && password =~ /\d/ && password =~ /[@$!%*?&]/
```
