---
title: "Nth Prime"
description: "Find the nth prime number using primality testing."
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

```bash
python3 -c "
def is_prime(x):
    if x < 2: return False
    for i in range(2, int(x**0.5) + 1):
        if x % i == 0: return False
    return True
count, num = 0, 1
while count < $n:
    num += 1
    if is_prime(num): count += 1
print(num)
"
```
