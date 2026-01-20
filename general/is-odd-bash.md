---
title: "Is Odd"
description: "Check if a number is odd."
topic: "math"
relatedSlugs:
  - "is-odd-javascript"
  - "is-odd-python"
  - "is-odd-ruby"
  - "is-odd-php"
parameters:
  - name: "num"
    type: "number"
    default: 7
    description: "The number to check"
exampleOutputs:
  - input: { "num": 7 }
    output: "true"
  - input: { "num": 42 }
    output: "false"
---

```bash
[ $((num % 2)) -ne 0 ] && echo "true" || echo "false"
```
