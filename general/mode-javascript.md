---
title: "Calculate Mode"
description: "Find the most frequent value(s) in an array."
topic: "math"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 2, 3, 3, 3, 4]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [1, 2, 2, 3, 3, 3, 4] }
    output: "[3]"
  - input: { "arr": [1, 1, 2, 2] }
    output: "[1, 2]"
---

```javascript
const freq = arr.reduce((m, n) => m.set(n, (m.get(n) || 0) + 1), new Map());
const maxFreq = Math.max(...freq.values());
return [...freq.entries()].filter(([_, f]) => f === maxFreq).map(([n]) => n);
```
