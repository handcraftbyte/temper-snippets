---
title: "Map Value to Range"
description: "Map a value from one range to another."
topic: "math"
parameters:
  - name: "value"
    type: "number"
    default: 50
    description: "Value to map"
  - name: "inMin"
    type: "number"
    default: 0
    description: "Input range min"
  - name: "inMax"
    type: "number"
    default: 100
    description: "Input range max"
  - name: "outMin"
    type: "number"
    default: 0
    description: "Output range min"
  - name: "outMax"
    type: "number"
    default: 255
    description: "Output range max"
exampleOutputs:
  - input: { "value": 50, "inMin": 0, "inMax": 100, "outMin": 0, "outMax": 255 }
    output: "127.5"
---

```python
(value - inMin) * (outMax - outMin) / (inMax - inMin) + outMin
```
