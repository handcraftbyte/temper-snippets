---
title: "Least Common Multiple"
description: "Find the least common multiple (LCM) of two numbers using the GCD-based formula."
topic: "math"
parameters:
  - name: "a"
    type: "number"
    default: 12
    description: "First number"
  - name: "b"
    type: "number"
    default: 18
    description: "Second number"
exampleOutputs:
  - input: { "a": 12, "b": 18 }
    output: "36"
  - input: { "a": 4, "b": 6 }
    output: "12"
---

```bash
gcd() { [ "$2" -eq 0 ] && echo "$1" || gcd "$2" $(($1 % $2)); }
echo $(( (a * b) / $(gcd $a $b) ))
```
