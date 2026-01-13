---
title: "Nth Prime"
description: "Find the nth prime number"
topic: "math"
parameters:
  - name: "n"
    type: "number"
    default: 10
    description: "Position (1-indexed)"
exampleOutputs:
  - input: { "n": 10 }
    output: "29"
---

```javascript
const isPrime = x => { if (x < 2) return false; for (let i = 2; i * i <= x; i++) if (x % i === 0) return false; return true; };
let count = 0, num = 1;
while (count < n) { num++; if (isPrime(num)) count++; }
return num;
```
