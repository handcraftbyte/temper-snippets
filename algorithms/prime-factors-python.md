---
title: "Prime Factors"
description: "Find all prime factors of a number using trial division."
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

```python
factors = []
num = n
i = 2
while i * i <= num:
    while num % i == 0:
        factors.append(i)
        num //= i
    i += 1
if num > 1:
    factors.append(num)
return factors
```
