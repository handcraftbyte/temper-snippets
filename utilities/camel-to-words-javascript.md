---
title: "Camel Case to Words"
description: "Convert camelCase string to separate words"
topic: "converters"
parameters:
  - name: "str"
    type: "string"
    default: "helloWorldExample"
    description: "camelCase string to convert"
exampleOutputs:
  - input: { "str": "helloWorldExample" }
    output: "hello World Example"
  - input: { "str": "getUserById" }
    output: "get User By Id"
---

```javascript
str.replace(/([A-Z])/g, ' $1').trim();
```
