---
title: "Merge Sort"
description: "Sort array using merge sort algorithm"
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
const merge = (l, r) => {
  const result = [];
  while (l.length && r.length) result.push(l[0] <= r[0] ? l.shift() : r.shift());
  return [...result, ...l, ...r];
};
const mergeSort = a => a.length <= 1 ? a : merge(
  mergeSort(a.slice(0, Math.floor(a.length / 2))),
  mergeSort(a.slice(Math.floor(a.length / 2)))
);
return mergeSort(arr);
```
