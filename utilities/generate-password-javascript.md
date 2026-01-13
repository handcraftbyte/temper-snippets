---
title: "Generate Password"
description: "Generate a secure random password"
topic: "security"
parameters:
  - name: "length"
    type: "number"
    default: 16
    description: "Password length"
  - name: "includeSymbols"
    type: "boolean"
    default: true
    description: "Include special characters"
exampleOutputs:
  - input: { "length": 16, "includeSymbols": true }
    output: "aB3$kL9@mN2#pQ5!"
  - input: { "length": 12, "includeSymbols": false }
    output: "aB3kL9mN2pQ5"
---

```javascript
const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789' + (includeSymbols ? '!@#$%^&*()_+-=[]{}' : '');
const randomValues = new Uint32Array(length);
crypto.getRandomValues(randomValues);
return Array.from(randomValues, v => chars[v % chars.length]).join('');
```
