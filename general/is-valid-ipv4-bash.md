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

```bash
IFS='.' read -ra parts <<< "$ip"
valid=true
[[ ${#parts[@]} -ne 4 ]] && valid=false
for p in "${parts[@]}"; do
  [[ ! "$p" =~ ^[0-9]+$ || "$p" -lt 0 || "$p" -gt 255 ]] && valid=false
done
echo "$valid"
```
