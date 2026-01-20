---
title: "Is Array"
description: "Check if a value is an array."
topic: "validation"
parameters:
  - name: "value"
    type: "array"
    default: [1, 2, 3]
    description: "Value to check"
exampleOutputs:
  - input: { "value": [1, 2, 3] }
    output: "true"
---

```javascript
Array.isArray(value);
```
