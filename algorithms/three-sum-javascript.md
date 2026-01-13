---
title: "Three Sum"
description: "Find all unique triplets that sum to target"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [-1, 0, 1, 2, -1, -4]
    description: "Array of numbers"
  - name: "target"
    type: "number"
    default: 0
    description: "Target sum"
exampleOutputs:
  - input: { "arr": [-1, 0, 1, 2, -1, -4], "target": 0 }
    output: "[[-1, -1, 2], [-1, 0, 1]]"
---

```javascript
const a = [...arr].sort((x, y) => x - y);
const result = [];
for (let i = 0; i < a.length - 2; i++) {
  if (i > 0 && a[i] === a[i - 1]) continue;
  let l = i + 1, r = a.length - 1;
  while (l < r) {
    const sum = a[i] + a[l] + a[r];
    if (sum === target) {
      result.push([a[i], a[l], a[r]]);
      while (l < r && a[l] === a[l + 1]) l++;
      while (l < r && a[r] === a[r - 1]) r--;
      l++; r--;
    } else if (sum < target) l++;
    else r--;
  }
}
return result;
```
