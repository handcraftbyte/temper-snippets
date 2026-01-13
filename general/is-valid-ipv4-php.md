---
title: "Validate IPv4 Address"
description: "Check if a string is a valid IPv4 address"
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
---

```php
filter_var($ip, FILTER_VALIDATE_IP, FILTER_FLAG_IPV4) ? 'true' : 'false';
```
