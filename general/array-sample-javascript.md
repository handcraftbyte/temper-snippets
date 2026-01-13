---
title: "Sample Array"
description: "Get N random items from an array"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    description: "Array"
  - name: "n"
    type: "number"
    default: 3
    description: "Number of items to sample"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], "n": 3 }
    output: "[7, 2, 9]"
---

```javascript
[...arr].sort(() => Math.random() - 0.5).slice(0, n);
```
