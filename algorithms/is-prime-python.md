---
title: "Is Prime"
description: "Check if a number is a prime number"
topic: "math"
relatedSlugs:
  - "is-prime-javascript"
  - "is-prime-ruby"
  - "is-prime-php"
  - "is-prime-bash"
parameters:
  - name: "num"
    type: "number"
    default: 17
    description: "The number to check"
exampleOutputs:
  - input: { "num": 17 }
    output: "True"
  - input: { "num": 15 }
    output: "False"
  - input: { "num": 2 }
    output: "True"
---

```python
num > 1 and all(num % i != 0 for i in range(2, int(num**0.5) + 1))
```
