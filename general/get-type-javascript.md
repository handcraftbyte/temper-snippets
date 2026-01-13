---
title: "Get Type"
description: "Get the precise type of any value"
topic: "validation"
parameters:
  - name: "value"
    type: "array"
    default: [1, 2, 3]
    description: "Value to check type"
exampleOutputs:
  - input: { "value": [1, 2, 3] }
    output: "Array"
  - input: { "value": {} }
    output: "Object"
---

```javascript
Object.prototype.toString.call(value).slice(8, -1);
```
