---
title: "Validate Regex Pattern"
description: "Check if a string is a valid regex pattern"
topic: "validation"
parameters:
  - name: "pattern"
    type: "string"
    default: "^[a-z]+$"
    description: "Regex pattern to validate"
exampleOutputs:
  - input: { "pattern": "^[a-z]+$" }
    output: "true"
  - input: { "pattern": "[invalid" }
    output: "false"
---

```javascript
try { new RegExp(pattern); true; } catch { false; }
```
