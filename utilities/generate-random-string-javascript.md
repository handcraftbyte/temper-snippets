---
title: "Generate Random String"
description: "Generate a cryptographically secure random string of specified length using the Web Crypto API"
topic: "strings"
tags: ["random", "crypto", "security", "alphanumeric"]
relatedSlugs: []
parameters:
  - name: "length"
    type: "number"
    default: 16
    description: "Length of the random string to generate"
exampleOutputs:
  - input: { "length": 8 }
    output: "a7Bx9KmQ"
  - input: { "length": 16 }
    output: "k3Lm9PqRs2TuVwXy"
  - input: { "length": 32 }
    output: "aB3cD4eF5gH6iJ7kL8mN9oP0qR1sT2uV"
---

```javascript
const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
const randomValues = new Uint32Array(length);
crypto.getRandomValues(randomValues);
return Array.from(randomValues, v => chars[v % chars.length]).join('');
```
