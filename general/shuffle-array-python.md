---
title: "Shuffle Array"
description: "Randomly shuffle the elements of an array (Fisher-Yates algorithm)."
topic: "arrays"
relatedSlugs:
  - "shuffle-array-javascript"
  - "shuffle-array-ruby"
  - "shuffle-array-php"
  - "shuffle-array-bash"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    description: "Array to shuffle"
exampleOutputs:
  - input: { "arr": [1, 2, 3, 4, 5] }
    output: "[3, 1, 5, 2, 4]"
  - input: { "arr": ["a", "b", "c", "d"] }
    output: "['c', 'a', 'd', 'b']"
---

```python
import random
items = arr.copy()
random.shuffle(items)
return items
```
