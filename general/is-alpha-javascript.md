---
title: "Is Alpha Only"
description: "Check if a string contains only alphabetic characters"
topic: "validation"
parameters:
  - name: "str"
    type: "string"
    default: "HelloWorld"
    description: "The string to check"
exampleOutputs:
  - input: { "str": "HelloWorld" }
    output: "true"
  - input: { "str": "Hello123" }
    output: "false"
  - input: { "str": "Hello World" }
    output: "false"
---

```javascript
/^[a-zA-Z]+$/.test(str);
```
