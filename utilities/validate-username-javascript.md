---
title: "Validate Username"
description: "Check if username is alphanumeric with underscores (3-16 chars)"
topic: "validation"
parameters:
  - name: "username"
    type: "string"
    default: "john_doe123"
    description: "Username to validate"
exampleOutputs:
  - input: { "username": "john_doe123" }
    output: "true"
  - input: { "username": "ab" }
    output: "false"
---

```javascript
/^[a-zA-Z0-9_]{3,16}$/.test(username);
```
