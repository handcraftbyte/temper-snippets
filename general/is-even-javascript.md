---
title: "Is Even"
description: "Check if a number is even."
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 42
    description: "The number to check"
exampleOutputs:
  - input: { "num": 42 }
    output: "true"
  - input: { "num": 7 }
    output: "false"
---

```javascript
num % 2 === 0;
```
