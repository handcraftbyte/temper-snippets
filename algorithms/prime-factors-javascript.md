---
title: "Prime Factors"
description: "Find all prime factors of a number"
topic: "math"
parameters:
  - name: "n"
    type: "number"
    default: 84
    description: "Number to factorize"
exampleOutputs:
  - input: { "n": 84 }
    output: "[2, 2, 3, 7]"
---

```javascript
const factors = [];
let num = n;
for (let i = 2; i * i <= num; i++) {
  while (num % i === 0) { factors.push(i); num /= i; }
}
if (num > 1) factors.push(num);
return factors;
```
