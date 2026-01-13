---
title: "Is Power of Two"
description: "Check if a number is a power of two"
topic: "math"
parameters:
  - name: "n"
    type: "number"
    default: 16
    description: "Number to check"
exampleOutputs:
  - input: { "n": 16 }
    output: "true"
  - input: { "n": 15 }
    output: "false"
---

```javascript
n > 0 && (n & (n - 1)) === 0;
```
