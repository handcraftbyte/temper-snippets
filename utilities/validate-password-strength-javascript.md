---
title: "Validate Password Strength"
description: "Check password has uppercase, lowercase, number and symbol"
topic: "validation"
parameters:
  - name: "password"
    type: "string"
    default: "MyP@ssw0rd!"
    description: "Password to validate"
exampleOutputs:
  - input: { "password": "MyP@ssw0rd!" }
    output: "true"
  - input: { "password": "weakpass" }
    output: "false"
---

```javascript
/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/.test(password);
```
