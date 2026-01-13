---
title: "Validate Email"
description: "Check if a string is a valid email address"
topic: "validation"
parameters:
  - name: "email"
    type: "string"
    default: "user@example.com"
    description: "The email address to validate"
exampleOutputs:
  - input: { "email": "user@example.com" }
    output: "true"
  - input: { "email": "invalid-email" }
    output: "false"
  - input: { "email": "test@domain.co.uk" }
    output: "true"
---

```javascript
/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
```
