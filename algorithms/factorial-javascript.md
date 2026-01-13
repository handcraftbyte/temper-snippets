---
title: "Factorial"
description: "Calculate the factorial of a number (n!)"
topic: "math"
parameters:
  - name: "n"
    type: "number"
    default: 5
    description: "The number to calculate factorial for"
exampleOutputs:
  - input: { "n": 5 }
    output: "120"
  - input: { "n": 10 }
    output: "3628800"
  - input: { "n": 0 }
    output: "1"
---

```javascript
n <= 1 ? 1 : Array.from({ length: n }, (_, i) => i + 1).reduce((a, b) => a * b);
```
