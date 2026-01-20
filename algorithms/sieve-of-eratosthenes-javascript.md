---
title: "Sieve of Eratosthenes"
description: "Generate all prime numbers up to n using the Sieve of Eratosthenes algorithm."
topic: "math"
parameters:
  - name: "n"
    type: "number"
    default: 50
    description: "Upper limit"
exampleOutputs:
  - input: { "n": 50 }
    output: "[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]"
---

```javascript
const sieve = new Array(n + 1).fill(true);
sieve[0] = sieve[1] = false;
for (let i = 2; i * i <= n; i++) {
  if (sieve[i]) for (let j = i * i; j <= n; j += i) sieve[j] = false;
}
return sieve.map((v, i) => v ? i : -1).filter(i => i !== -1);
```
