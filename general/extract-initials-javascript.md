---
title: "Extract Initials"
description: "Extract initials from a name"
topic: "strings"
parameters:
  - name: "name"
    type: "string"
    default: "John Michael Doe"
    description: "The full name to extract initials from"
exampleOutputs:
  - input: { "name": "John Michael Doe" }
    output: "JMD"
  - input: { "name": "Alice Smith" }
    output: "AS"
---

```javascript
name.split(' ').map(word => word[0]).join('').toUpperCase();
```
