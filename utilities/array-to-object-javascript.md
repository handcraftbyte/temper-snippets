---
title: "Array to Object"
description: "Convert an array of key-value pairs to an object"
topic: "converters"
parameters:
  - name: "arr"
    type: "array"
    default: [["a", 1], ["b", 2], ["c", 3]]
    description: "Array of [key, value] pairs"
exampleOutputs:
  - input: { "arr": [["a", 1], ["b", 2], ["c", 3]] }
    output: "{\"a\": 1, \"b\": 2, \"c\": 3}"
---

```javascript
Object.fromEntries(arr);
```
