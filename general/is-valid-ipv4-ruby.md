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
---

```ruby
require 'ipaddr'
begin
  return IPAddr.new(ip).ipv4?
rescue IPAddr::InvalidAddressError
  return false
end
```
