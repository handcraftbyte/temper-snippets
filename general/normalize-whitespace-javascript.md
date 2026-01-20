---
title: "Normalize Whitespace"
description: "Replace multiple consecutive whitespace characters with a single space and trim edges."
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "Hello    world   this    is   a    test"
    description: "String with irregular whitespace"
exampleOutputs:
  - input: { "str": "Hello    world   this    is   a    test" }
    output: "Hello world this is a test"
---

```javascript
str.replace(/\s+/g, ' ').trim();
```
