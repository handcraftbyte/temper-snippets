---
title: "Format List"
description: "Format an array as a human-readable list with 'and' or 'or'"
topic: "formatting"
parameters:
  - name: "arr"
    type: "array"
    default: ["apple", "banana", "cherry"]
    description: "Array of items"
  - name: "type"
    type: "string"
    default: "conjunction"
    description: "Type: conjunction (and) or disjunction (or)"
exampleOutputs:
  - input: { "arr": ["apple", "banana", "cherry"], "type": "conjunction" }
    output: "apple, banana, and cherry"
  - input: { "arr": ["red", "blue", "green"], "type": "disjunction" }
    output: "red, blue, or green"
---

```javascript
new Intl.ListFormat('en', { style: 'long', type }).format(arr);
```
