---
title: "Validate IPv6"
description: "Check if a string is a valid IPv6 address"
topic: "validation"
parameters:
  - name: "ip"
    type: "string"
    default: "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
    description: "IP address to validate"
exampleOutputs:
  - input: { "ip": "2001:0db8:85a3:0000:0000:8a2e:0370:7334" }
    output: "true"
---

```javascript
/^(?:[a-fA-F\d]{1,4}:){7}[a-fA-F\d]{1,4}$/.test(ip);
```
