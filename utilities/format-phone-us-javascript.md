---
title: "Format US Phone Number"
description: "Format a 10-digit phone number as (XXX) XXX-XXXX."
topic: "formatting"
parameters:
  - name: "phone"
    type: "string"
    default: "5551234567"
    description: "10-digit phone number."
exampleOutputs:
  - input: { "phone": "5551234567" }
    output: "(555) 123-4567"
---

```javascript
const digits = phone.replace(/\D/g, '');
return `(${digits.slice(0, 3)}) ${digits.slice(3, 6)}-${digits.slice(6, 10)}`;
```
