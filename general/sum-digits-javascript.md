---
title: "Sum of Digits"
description: "Calculate the sum of all digits in a number."
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 12345
    description: "Number"
exampleOutputs:
  - input: { "num": 12345 }
    output: "15"
---

```javascript
String(Math.abs(num)).split('').reduce((sum, d) => sum + Number(d), 0);
```
