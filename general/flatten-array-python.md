---
title: "Flatten Array"
description: "Flatten a nested array to a single level"
topic: "arrays"
relatedSlugs:
  - "flatten-array-javascript"
  - "flatten-array-ruby"
  - "flatten-array-php"
parameters:
  - name: "arr"
    type: "array"
    default: [[1, 2], [3, [4, 5]], [6]]
    description: "Nested array to flatten"
  - name: "depth"
    type: "number"
    default: 1
    description: "Depth to flatten (use large number for complete)"
exampleOutputs:
  - input: { "arr": [[1, 2], [3, [4, 5]], [6]], "depth": 1 }
    output: "[1, 2, 3, [4, 5], 6]"
  - input: { "arr": [[1, 2], [3, [4, 5]], [6]], "depth": 2 }
    output: "[1, 2, 3, 4, 5, 6]"
---

```python
def flatten(lst, d):
    if d == 0: return lst
    result = []
    for item in lst:
        if isinstance(item, list): result.extend(flatten(item, d-1))
        else: result.append(item)
    return result
flatten(arr, depth)
```
