---
title: "Is Prime"
description: "Check if a number is a prime number"
topic: "math"
relatedSlugs:
  - "is-prime-javascript"
  - "is-prime-python"
  - "is-prime-ruby"
  - "is-prime-php"
parameters:
  - name: "num"
    type: "number"
    default: 17
    description: "The number to check"
exampleOutputs:
  - input: { "num": 17 }
    output: "true"
  - input: { "num": 15 }
    output: "false"
  - input: { "num": 2 }
    output: "true"
---

```bash
[ "$num" -le 1 ] && echo "false" && exit; for ((i=2; i*i<=num; i++)); do [ $((num%i)) -eq 0 ] && echo "false" && exit; done; echo "true"
```
