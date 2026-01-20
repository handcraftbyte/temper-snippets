---
title: "Generate UUID v5"
description: "Generate a name-based UUID v5 using SHA-1 hashing of namespace and name."
topic: "generators"
parameters:
  - name: "namespace"
    type: "string"
    default: "6ba7b810-9dad-11d1-80b4-00c04fd430c8"
    description: "Namespace UUID (use DNS, URL, OID, or X500 namespace)."
  - name: "name"
    type: "string"
    default: "example.com"
    description: "Name to hash within the namespace."
exampleOutputs:
  - input: { "namespace": "6ba7b810-9dad-11d1-80b4-00c04fd430c8", "name": "example.com" }
    output: "cfbff0d1-9375-5685-968c-48ce8b15ae17"
---

```python
import uuid
return str(uuid.uuid5(uuid.UUID(namespace), name))
```
