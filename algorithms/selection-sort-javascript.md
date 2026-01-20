---
title: "Selection Sort"
description: "Sort an array using the selection sort algorithm by repeatedly finding the minimum element."
topic: "sorting"
parameters:
  - name: "arr"
    type: "array"
    default: [64, 34, 25, 12, 22, 11, 90]
    description: "Array to sort"
exampleOutputs:
  - input: { "arr": [64, 34, 25, 12, 22, 11, 90] }
    output: "[11, 12, 22, 25, 34, 64, 90]"
---

```javascript
const a = [...arr];
for (let i = 0; i < a.length; i++) {
  let minIdx = i;
  for (let j = i + 1; j < a.length; j++) {
    if (a[j] < a[minIdx]) minIdx = j;
  }
  if (minIdx !== i) [a[i], a[minIdx]] = [a[minIdx], a[i]];
}
return a;
```
