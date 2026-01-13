---
title: "Binary Search"
description: "Find element index in sorted array using binary search"
topic: "searching"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 3, 5, 7, 9, 11, 13]
    description: "Sorted array"
  - name: "target"
    type: "number"
    default: 7
    description: "Element to find"
exampleOutputs:
  - input: { "arr": [1, 3, 5, 7, 9, 11, 13], "target": 7 }
    output: "3"
---

```javascript
let lo = 0, hi = arr.length - 1, result = -1;
while (lo <= hi) {
  const mid = Math.floor((lo + hi) / 2);
  if (arr[mid] === target) { result = mid; break; }
  else if (arr[mid] < target) lo = mid + 1;
  else hi = mid - 1;
}
return result;
```
