---
title: "Is Empty"
description: "Check if a value is empty (null, undefined, empty string, array, or object)"
topic: "validation"
parameters:
  - name: "value"
    type: "object"
    default: {}
    description: "Value to check"
exampleOutputs:
  - input: { "value": "" }
    output: "true"
  - input: { "value": [] }
    output: "true"
  - input: { "value": {} }
    output: "true"
  - input: { "value": [1, 2, 3] }
    output: "false"
---

```javascript
value == null || (typeof value === 'object' ? Object.keys(value).length === 0 : value === '');
```
