---
title: "Capitalize First Letter"
description: "Capitalize the first letter of a string while keeping the rest unchanged"
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "hello world"
    description: "The string to capitalize"
exampleOutputs:
  - input: { "str": "hello world" }
    output: "Hello world"
  - input: { "str": "javaScript" }
    output: "JavaScript"
---

```javascript
str.charAt(0).toUpperCase() + str.slice(1);
```
