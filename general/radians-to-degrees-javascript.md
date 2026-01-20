---
title: "Radians to Degrees"
description: "Convert an angle from radians to degrees."
topic: "math"
parameters:
  - name: "radians"
    type: "number"
    default: 3.14159
    description: "Angle in radians"
exampleOutputs:
  - input: { "radians": 3.14159 }
    output: "179.99984796050427"
  - input: { "radians": 1.5708 }
    output: "90.00021045914971"
---

```javascript
radians * (180 / Math.PI);
```
