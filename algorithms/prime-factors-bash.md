---
title: "Prime Factors"
description: "Find all prime factors of a number"
topic: "math"
parameters:
  - name: "n"
    type: "number"
    default: 84
    description: "Number to factorize"
exampleOutputs:
  - input: { "n": 84 }
    output: "[2,2,3,7]"
---

```bash
factor "$n" | cut -d: -f2 | tr ' ' '\n' | grep -v '^$' | jq -Rs 'split("\n") | map(select(. != "") | tonumber)'
```
