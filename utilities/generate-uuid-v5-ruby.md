---
title: "Generate UUID v5"
description: "Generate a name-based UUID v5 using SHA-1 hashing of namespace and name"
topic: "generators"
parameters:
  - name: "namespace"
    type: "string"
    default: "6ba7b810-9dad-11d1-80b4-00c04fd430c8"
    description: "Namespace UUID (use DNS, URL, OID, or X500 namespace)"
  - name: "name"
    type: "string"
    default: "example.com"
    description: "Name to hash within the namespace"
exampleOutputs:
  - input: { "namespace": "6ba7b810-9dad-11d1-80b4-00c04fd430c8", "name": "example.com" }
    output: "cfbff0d1-9375-5685-968c-48ce8b15ae17"
---

```ruby
require 'digest'
ns_bytes = namespace.delete('-').scan(/../).map { |b| b.to_i(16) }.pack('C*')
hash = Digest::SHA1.digest(ns_bytes + name)
bytes = hash.bytes[0..15]
bytes[6] = (bytes[6] & 0x0f) | 0x50
bytes[8] = (bytes[8] & 0x3f) | 0x80
return '%08x-%04x-%04x-%04x-%012x' % [
  bytes[0..3].pack('C*').unpack1('N'),
  bytes[4..5].pack('C*').unpack1('n'),
  bytes[6..7].pack('C*').unpack1('n'),
  bytes[8..9].pack('C*').unpack1('n'),
  bytes[10..15].pack('C*').unpack1('Q>') & 0xffffffffffff
]
```
