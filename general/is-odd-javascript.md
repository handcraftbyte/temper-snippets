---
title: "Is Odd"
description: "Check if a number is odd"
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 7
    description: "The number to check"
exampleOutputs:
  - input: { "num": 7 }
    output: "true"
  - input: { "num": 42 }
    output: "false"
---

```javascript
num % 2 !== 0;
```
