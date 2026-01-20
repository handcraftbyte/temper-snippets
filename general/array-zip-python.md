---
title: "Zip Arrays"
description: "Combine multiple arrays element by element into tuples."
topic: "arrays"
parameters:
  - name: "arrays"
    type: "array"
    default: [[1, 2, 3], ["a", "b", "c"], [true, false, true]]
    description: "Arrays to zip"
exampleOutputs:
  - input: { "arrays": [[1, 2, 3], ["a", "b", "c"], [true, false, true]] }
    output: "[[1, 'a', True], [2, 'b', False], [3, 'c', True]]"
---

```python
from itertools import zip_longest
return [list(t) for t in zip_longest(*arrays)]
```
