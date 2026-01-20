---
title: "Get Random Array Item"
description: "Select and return a random element from an array."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: ["apple", "banana", "cherry", "date", "elderberry"]
    description: "Array to pick from"
exampleOutputs:
  - input: { "arr": ["apple", "banana", "cherry"] }
    output: "banana"
  - input: { "arr": [1, 2, 3, 4, 5] }
    output: "3"
---

```javascript
arr[Math.floor(Math.random() * arr.length)];
```
