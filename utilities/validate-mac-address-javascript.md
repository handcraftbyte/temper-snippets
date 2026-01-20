---
title: "Validate MAC Address"
description: "Check if a string is a valid MAC address format."
topic: "validation"
parameters:
  - name: "mac"
    type: "string"
    default: "00:1A:2B:3C:4D:5E"
    description: "MAC address to validate."
exampleOutputs:
  - input: { "mac": "00:1A:2B:3C:4D:5E" }
    output: "true"
---

```javascript
/^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$/.test(mac);
```
