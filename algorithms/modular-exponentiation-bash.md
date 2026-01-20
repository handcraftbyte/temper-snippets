---
title: "Modular Exponentiation"
description: "Calculate (base^exp) % mod efficiently using binary exponentiation."
topic: "math"
parameters:
  - name: "base"
    type: "number"
    default: 2
    description: "Base number"
  - name: "exp"
    type: "number"
    default: 10
    description: "Exponent"
  - name: "mod"
    type: "number"
    default: 1000
    description: "Modulus"
exampleOutputs:
  - input: { "base": 2, "exp": 10, "mod": 1000 }
    output: "24"
---

```bash
python3 -c "print(pow($base, $exp, $mod))"
```
