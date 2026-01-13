---
title: "Validate Phone Number"
description: "Check if a string is a valid phone number (basic international format)"
topic: "validation"
parameters:
  - name: "phone"
    type: "string"
    default: "+1-555-123-4567"
    description: "Phone number to validate"
exampleOutputs:
  - input: { "phone": "+1-555-123-4567" }
    output: "true"
  - input: { "phone": "555-1234" }
    output: "true"
  - input: { "phone": "abc" }
    output: "false"
---

```javascript
/^[\+]?[(]?[0-9]{1,3}[)]?[-\s\.]?[0-9]{1,4}[-\s\.]?[0-9]{1,4}[-\s\.]?[0-9]{1,9}$/.test(phone);
```
