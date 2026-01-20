---
title: "Count Array Occurrences"
description: "Count occurrences of each value in an array and return a frequency map."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: ["a", "b", "a", "c", "b", "a"]
    description: "Array"
exampleOutputs:
  - input: { "arr": ["a", "b", "a", "c", "b", "a"] }
    output: "{\"a\":3,\"b\":2,\"c\":1}"
---

```javascript
arr.reduce((acc, val) => ({ ...acc, [val]: (acc[val] || 0) + 1 }), {});
```
