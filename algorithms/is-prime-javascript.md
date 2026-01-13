---
title: "Is Prime"
description: "Check if a number is a prime number"
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 17
    description: "The number to check"
exampleOutputs:
  - input: { "num": 17 }
    output: "true"
  - input: { "num": 15 }
    output: "false"
  - input: { "num": 2 }
    output: "true"
---

```javascript
num > 1 && Array.from({ length: Math.floor(Math.sqrt(num)) - 1 }, (_, i) => i + 2).every(i => num % i !== 0);
```
