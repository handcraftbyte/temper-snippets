---
title: "Find Duplicate"
description: "Find the first duplicate element that appears in an array using a hash set for efficient lookup."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 2, 5]
    description: "Array to check"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 2, 5] }
    output: "2"
---

```javascript
const seen = new Set();
let duplicate = undefined;
for (const x of arr) {
  if (seen.has(x)) { duplicate = x; break; }
  seen.add(x);
}
return duplicate;
```
