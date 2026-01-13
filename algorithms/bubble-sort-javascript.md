---
title: "Bubble Sort"
description: "Sort array using bubble sort algorithm"
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
  for (let j = 0; j < a.length - i - 1; j++) {
    if (a[j] > a[j + 1]) [a[j], a[j + 1]] = [a[j + 1], a[j]];
  }
}
return a;
```
