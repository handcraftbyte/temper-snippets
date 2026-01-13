---
title: "Find All Duplicates"
description: "Find all duplicate elements in an array"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 2, 4, 3, 5]
    description: "Array to check"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 2, 4, 3, 5] }
    output: "[2, 3]"
---

```python
from collections import Counter
return [k for k, v in Counter(arr).items() if v > 1]
```
