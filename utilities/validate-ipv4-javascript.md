---
title: "Validate IPv4"
description: "Check if a string is a valid IPv4 address"
topic: "validation"
parameters:
  - name: "ip"
    type: "string"
    default: "192.168.1.1"
    description: "IP address to validate"
exampleOutputs:
  - input: { "ip": "192.168.1.1" }
    output: "true"
  - input: { "ip": "256.1.1.1" }
    output: "false"
---

```javascript
/^(?:(?:25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)\.){3}(?:25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)$/.test(ip);
```
