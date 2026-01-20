---
title: "Take While"
description: "Take elements from the start of an array while a condition is true."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5, 1, 2]
    description: "Array"
  - name: "threshold"
    type: "number"
    default: 4
    description: "Take while less than threshold"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5, 1, 2], "threshold": 4 }
    output: "[1, 2, 3]"
---

```python
from itertools import takewhile
return list(takewhile(lambda x: x < threshold, arr))
```
