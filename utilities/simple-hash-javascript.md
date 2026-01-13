---
title: "Simple String Hash"
description: "Simple hash function for strings"
topic: "security"
parameters:
  - name: "str"
    type: "string"
    default: "Hello"
    description: "String to hash"
exampleOutputs:
  - input: { "str": "Hello" }
    output: "69609650"
---

```javascript
let hash = 0;
for (let i = 0; i < str.length; i++) {
  hash = ((hash << 5) - hash) + str.charCodeAt(i);
  hash |= 0;
}
return Math.abs(hash).toString();
```
