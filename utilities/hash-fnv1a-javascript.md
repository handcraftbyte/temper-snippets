---
title: "FNV-1a Hash"
description: "Fast non-cryptographic hash function"
topic: "security"
parameters:
  - name: "str"
    type: "string"
    default: "Hello, World!"
    description: "String to hash"
exampleOutputs:
  - input: { "str": "Hello, World!" }
    output: "3628585307"
---

```javascript
let hash = 2166136261;
for (let i = 0; i < str.length; i++) {
  hash ^= str.charCodeAt(i);
  hash = Math.imul(hash, 16777619);
}
return (hash >>> 0).toString();
```
