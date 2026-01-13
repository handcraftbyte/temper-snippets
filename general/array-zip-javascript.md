---
title: "Zip Arrays"
description: "Combine multiple arrays element by element"
topic: "arrays"
parameters:
  - name: "arrays"
    type: "array"
    default: [[1, 2, 3], ["a", "b", "c"], [true, false, true]]
    description: "Arrays to zip"
exampleOutputs:
  - input: { "arrays": [[1, 2, 3], ["a", "b", "c"], [true, false, true]] }
    output: "[[1, \"a\", true], [2, \"b\", false], [3, \"c\", true]]"
---

```javascript
const maxLen = Math.max(...arrays.map(a => a.length));
return Array.from({ length: maxLen }, (_, i) => arrays.map(a => a[i]));
```
