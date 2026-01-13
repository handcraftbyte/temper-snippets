---
title: "Least Common Multiple"
description: "Find the least common multiple (LCM) of two numbers"
topic: "math"
parameters:
  - name: "a"
    type: "number"
    default: 12
    description: "First number"
  - name: "b"
    type: "number"
    default: 18
    description: "Second number"
exampleOutputs:
  - input: { "a": 12, "b": 18 }
    output: "36"
  - input: { "a": 4, "b": 6 }
    output: "12"
---

```javascript
const gcd = (x, y) => y === 0 ? x : gcd(y, x % y);
return Math.abs(a * b) / gcd(a, b);
```
