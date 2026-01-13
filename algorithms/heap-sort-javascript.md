---
title: "Heap Sort"
description: "Sort array using heap sort algorithm"
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
const heapify = (n, i) => {
  let largest = i, l = 2 * i + 1, r = 2 * i + 2;
  if (l < n && a[l] > a[largest]) largest = l;
  if (r < n && a[r] > a[largest]) largest = r;
  if (largest !== i) { [a[i], a[largest]] = [a[largest], a[i]]; heapify(n, largest); }
};
for (let i = Math.floor(a.length / 2) - 1; i >= 0; i--) heapify(a.length, i);
for (let i = a.length - 1; i > 0; i--) { [a[0], a[i]] = [a[i], a[0]]; heapify(i, 0); }
return a;
```
