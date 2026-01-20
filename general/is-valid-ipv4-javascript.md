---
title: "Validate IPv4 Address"
description: "Check if a string is a valid IPv4 address."
topic: "validation"
parameters:
  - name: "ip"
    type: "string"
    default: "192.168.1.1"
    description: "The IP address to validate"
exampleOutputs:
  - input: { "ip": "192.168.1.1" }
    output: "true"
  - input: { "ip": "256.1.1.1" }
    output: "false"
  - input: { "ip": "10.0.0.1" }
    output: "true"
---

```javascript
/^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.?\b){4}$/.test(ip);
```
