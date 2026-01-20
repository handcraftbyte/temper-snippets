---
title: "Validate Alphanumeric"
description: "Check if a string contains only letters and numbers."
topic: "validation"
parameters:
  - name: "str"
    type: "string"
    default: "Hello123"
    description: "String to validate."
exampleOutputs:
  - input: { "str": "Hello123" }
    output: "true"
  - input: { "str": "Hello World!" }
    output: "false"
---

```javascript
/^[a-zA-Z0-9]+$/.test(str);
```
