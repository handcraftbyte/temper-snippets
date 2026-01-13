---
title: "Round to Decimals"
description: "Round a number to a specified number of decimal places"
topic: "math"
relatedSlugs:
  - "round-decimals-javascript"
  - "round-decimals-python"
  - "round-decimals-ruby"
  - "round-decimals-php"
parameters:
  - name: "num"
    type: "number"
    default: 3.14159265359
    description: "The number to round"
  - name: "decimals"
    type: "number"
    default: 2
    description: "Number of decimal places"
exampleOutputs:
  - input: { "num": 3.14159265359, "decimals": 2 }
    output: "3.14"
  - input: { "num": 2.5678, "decimals": 1 }
    output: "2.6"
---

```bash
printf "%.${decimals}f" "$num"
```
