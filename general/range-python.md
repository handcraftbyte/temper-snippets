---
title: "Generate Range"
description: "Generate a sequence of numbers within a specified range with a configurable step value."
topic: "arrays"
relatedSlugs:
  - "range-javascript"
  - "range-ruby"
  - "range-php"
  - "range-bash"
parameters:
  - name: "start"
    type: "number"
    default: 1
    description: "Start of range"
  - name: "end"
    type: "number"
    default: 10
    description: "End of range (inclusive)"
  - name: "step"
    type: "number"
    default: 1
    description: "Step between numbers"
exampleOutputs:
  - input: { "start": 1, "end": 10, "step": 1 }
    output: "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]"
  - input: { "start": 0, "end": 20, "step": 5 }
    output: "[0, 5, 10, 15, 20]"
---

```python
list(range(start, end + 1, step))
```
