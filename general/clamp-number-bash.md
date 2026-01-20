---
title: "Clamp Number"
description: "Restrict a number to be within a minimum and maximum range."
topic: "math"
relatedSlugs:
  - "clamp-number-javascript"
  - "clamp-number-python"
  - "clamp-number-ruby"
  - "clamp-number-php"
parameters:
  - name: "num"
    type: "number"
    default: 150
    description: "The number to clamp"
  - name: "min"
    type: "number"
    default: 0
    description: "Minimum value"
  - name: "max"
    type: "number"
    default: 100
    description: "Maximum value"
exampleOutputs:
  - input: { "num": 150, "min": 0, "max": 100 }
    output: "100"
  - input: { "num": -50, "min": 0, "max": 100 }
    output: "0"
  - input: { "num": 50, "min": 0, "max": 100 }
    output: "50"
---

```bash
[ "$num" -lt "$min" ] && echo "$min" || ([ "$num" -gt "$max" ] && echo "$max" || echo "$num")
```
