---
title: "Fibonacci Sequence"
description: "Generate the first N numbers of the Fibonacci sequence"
topic: "math"
parameters:
  - name: "n"
    type: "number"
    default: 10
    description: "Number of Fibonacci numbers to generate"
exampleOutputs:
  - input: { "n": 10 }
    output: "[0, 1, 1, 2, 3, 5, 8, 13, 21, 34]"
  - input: { "n": 5 }
    output: "[0, 1, 1, 2, 3]"
---

```javascript
Array.from({ length: n }).reduce((acc, _, i) => [...acc, i < 2 ? i : acc[i-1] + acc[i-2]], []);
```
