---
title: "Shuffle Array"
description: "Randomly shuffle the elements of an array (Fisher-Yates algorithm)"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    description: "Array to shuffle"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5] }
    output: "[3, 1, 5, 2, 4]"
  - input: { "arr": ["a", "b", "c", "d"] }
    output: "[\"c\", \"a\", \"d\", \"b\"]"
---

```javascript
const array = [...arr];
for (let i = array.length - 1; i > 0; i--) {
  const j = Math.floor(Math.random() * (i + 1));
  [array[i], array[j]] = [array[j], array[i]];
}
return array;
```
