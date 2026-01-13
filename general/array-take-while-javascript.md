---
title: "Take While"
description: "Take elements from start while condition is true"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5, 1, 2]
    description: "Array"
  - name: "threshold"
    type: "number"
    default: 4
    description: "Take while less than threshold"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5, 1, 2], "threshold": 4 }
    output: "[1, 2, 3]"
---

```javascript
const idx = arr.findIndex(x => x >= threshold);
return idx === -1 ? arr : arr.slice(0, idx);
```
