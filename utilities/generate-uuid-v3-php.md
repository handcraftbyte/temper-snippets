---
title: "Generate UUID v3"
description: "Generate a name-based UUID v3 using MD5 hashing of namespace and name"
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
    output: "9073926b-929f-31c2-abc9-fad77ae3e8eb"
---

```php
$nsHex = str_replace('-', '', $namespace);
$nsBytes = pack('H*', $nsHex);
$hash = md5($nsBytes . $name, true);
$hash[6] = chr((ord($hash[6]) & 0x0f) | 0x30);
$hash[8] = chr((ord($hash[8]) & 0x3f) | 0x80);
return vsprintf('%s%s-%s-%s-%s-%s%s%s', str_split(bin2hex($hash), 4));
```
