---
title: "Format Phone Number"
description: "Format a phone number string (US format)"
topic: "formatting"
parameters:
  - name: "phone"
    type: "string"
    default: "1234567890"
    description: "Phone number digits"
exampleOutputs:
  - input: { "phone": "1234567890" }
    output: "(123) 456-7890"
  - input: { "phone": "5551234567" }
    output: "(555) 123-4567"
---

```javascript
phone.replace(/(\d{3})(\d{3})(\d{4})/, '($1) $2-$3');
```
