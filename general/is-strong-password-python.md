---
title: "Check Password Strength"
description: "Check if a password meets strength requirements (8+ chars, uppercase, lowercase, number, special)"
topic: "validation"
parameters:
  - name: "password"
    type: "string"
    default: "MyP@ssw0rd!"
    description: "Password to check"
exampleOutputs:
  - input: { "password": "MyP@ssw0rd!" }
    output: "True"
  - input: { "password": "weakpass" }
    output: "False"
---

```python
import re
return bool(re.match(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$', password))
```
