---
title: "Is Alphanumeric"
description: "Check if a string contains only letters and numbers"
topic: "validation"
parameters:
  - name: "str"
    type: "string"
    default: "Hello123"
    description: "The string to check"
exampleOutputs:
  - input: { "str": "Hello123" }
    output: "true"
  - input: { "str": "Hello World" }
    output: "false"
  - input: { "str": "abc123xyz" }
    output: "true"
---

```javascript
/^[a-zA-Z0-9]+$/.test(str);
```
