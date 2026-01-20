---
title: "Camel Case to Words"
description: "Convert a camelCase string to separate words by inserting spaces before capitals."
topic: "converters"
parameters:
  - name: "str"
    type: "string"
    default: "helloWorldExample"
    description: "camelCase string to convert."
exampleOutputs:
  - input: { "str": "helloWorldExample" }
    output: "hello World Example"
  - input: { "str": "getUserById" }
    output: "get User By Id"
---

```javascript
str.replace(/([A-Z])/g, ' $1').trim();
```
