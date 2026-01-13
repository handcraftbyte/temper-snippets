---
title: "Sieve of Eratosthenes"
description: "Generate all primes up to n using the sieve algorithm"
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

```python
sieve = [True] * (n + 1)
sieve[0] = sieve[1] = False
for i in range(2, int(n**0.5) + 1):
    if sieve[i]:
        for j in range(i*i, n + 1, i):
            sieve[j] = False
return [i for i, is_prime in enumerate(sieve) if is_prime]
```
