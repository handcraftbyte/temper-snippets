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

```python
def is_prime(x):
    if x < 2: return False
    for i in range(2, int(x**0.5) + 1):
        if x % i == 0: return False
    return True

count, num = 0, 1
while count < n:
    num += 1
    if is_prime(num): count += 1
return num
```
