---
title: "Validate Phone Number"
description: "Check if a string is a valid phone number format."
topic: "validation"
parameters:
  - name: "phone"
    type: "string"
    default: "+1 (555) 123-4567"
    description: "Phone number to validate."
exampleOutputs:
  - input: { "phone": "+1 (555) 123-4567" }
    output: "true"
---

```javascript
/^[\+]?[(]?[0-9]{1,3}[)]?[-\s\.]?[(]?[0-9]{1,3}[)]?[-\s\.]?[0-9]{3,6}[-\s\.]?[0-9]{3,6}$/.test(phone);
```
