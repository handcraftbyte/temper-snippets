---
title: "Factorial"
description: "Calculate the factorial of a number (n!) using iterative multiplication."
topic: "math"
relatedSlugs:
  - "factorial-javascript"
  - "factorial-ruby"
  - "factorial-php"
  - "factorial-bash"
parameters:
  - name: "n"
    type: "number"
    default: 5
    description: "The number to calculate factorial for"
exampleOutputs:
  - input: { "n": 5 }
    output: "120"
  - input: { "n": 10 }
    output: "3628800"
  - input: { "n": 0 }
    output: "1"
---

```python
import math
return math.factorial(n)
```
