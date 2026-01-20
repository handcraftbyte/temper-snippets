---
title: "Distance Between Points"
description: "Calculate the Euclidean distance between two points."
topic: "math"
parameters:
  - name: "x1"
    type: "number"
    default: 0
    description: "X coordinate of first point"
  - name: "y1"
    type: "number"
    default: 0
    description: "Y coordinate of first point"
  - name: "x2"
    type: "number"
    default: 3
    description: "X coordinate of second point"
  - name: "y2"
    type: "number"
    default: 4
    description: "Y coordinate of second point"
exampleOutputs:
  - input: { "x1": 0, "y1": 0, "x2": 3, "y2": 4 }
    output: "5.0"
---

```ruby
Math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2)
```
