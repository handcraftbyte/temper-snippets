---
title: "Is Even"
description: "Check if a number is even."
topic: "math"
relatedSlugs:
  - "is-even-javascript"
  - "is-even-python"
  - "is-even-ruby"
  - "is-even-php"
parameters:
  - name: "num"
    type: "number"
    default: 42
    description: "The number to check"
exampleOutputs:
  - input: { "num": 42 }
    output: "true"
  - input: { "num": 7 }
    output: "false"
---

```bash
[ $((num % 2)) -eq 0 ] && echo "true" || echo "false"
```
