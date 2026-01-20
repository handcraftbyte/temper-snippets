---
title: "Calculate Mode"
description: "Find the most frequent value(s) in an array."
topic: "math"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 2, 3, 3, 3, 4]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [1, 2, 2, 3, 3, 3, 4] }
    output: "[3]"
  - input: { "arr": [1, 1, 2, 2] }
    output: "[1, 2]"
---

```python
from collections import Counter
freq = Counter(arr)
max_freq = max(freq.values())
return [n for n, f in freq.items() if f == max_freq]
```
