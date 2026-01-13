---
title: "Array Frequencies"
description: "Count occurrences of each value in an array"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: ["a", "b", "a", "c", "a", "b"]
    description: "Array to count"
exampleOutputs:
  - input: { "arr": ["a", "b", "a", "c", "a", "b"] }
    output: "{'a': 3, 'b': 2, 'c': 1}"
---

```python
from collections import Counter
return dict(Counter(arr))
```
