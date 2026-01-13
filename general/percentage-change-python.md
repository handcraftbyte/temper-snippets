---
title: "Percentage Change"
description: "Calculate the percentage change between two values"
topic: "math"
parameters:
  - name: "old_value"
    type: "number"
    default: 100
    description: "Original value"
  - name: "new_value"
    type: "number"
    default: 125
    description: "New value"
exampleOutputs:
  - input: { "old_value": 100, "new_value": 125 }
    output: "25.0"
  - input: { "old_value": 200, "new_value": 150 }
    output: "-25.0"
---

```python
((new_value - old_value) / old_value) * 100
```
