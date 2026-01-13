---
title: "Greatest Common Divisor"
description: "Find the greatest common divisor (GCD) of two numbers"
topic: "math"
relatedSlugs:
  - "gcd-javascript"
  - "gcd-ruby"
  - "gcd-php"
  - "gcd-bash"
parameters:
  - name: "a"
    type: "number"
    default: 48
    description: "First number"
  - name: "b"
    type: "number"
    default: 18
    description: "Second number"
exampleOutputs:
  - input: { "a": 48, "b": 18 }
    output: "6"
  - input: { "a": 100, "b": 25 }
    output: "25"
---

```python
import math
return math.gcd(a, b)
```
