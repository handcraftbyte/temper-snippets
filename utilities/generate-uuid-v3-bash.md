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

```bash
ns=$(echo -n "${namespace//-/}" | sed 's/../\\x&/g')
hash=$(printf "${ns}${name}" | md5sum | cut -c1-32)
v=$(printf '%x' $(( (0x${hash:12:2} & 0x0f) | 0x30 )))${hash:14:2}
c=$(printf '%x' $(( (0x${hash:16:2} & 0x3f) | 0x80 )))${hash:18:2}
echo "${hash:0:8}-${hash:8:4}-${v}-${c}-${hash:20:12}"
```
