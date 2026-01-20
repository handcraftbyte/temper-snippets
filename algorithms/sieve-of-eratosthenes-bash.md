---
title: "Sieve of Eratosthenes"
description: "Generate all prime numbers up to n using the Sieve of Eratosthenes algorithm."
topic: "math"
parameters:
  - name: "n"
    type: "number"
    default: 50
    description: "Upper limit"
exampleOutputs:
  - input: { "n": 50 }
    output: "[2,3,5,7,11,13,17,19,23,29,31,37,41,43,47]"
---

```bash
seq 2 "$n" | factor | awk -F: 'NF==2 && $2 ~ /^ [0-9]+$/ {print $1}' | jq -Rs 'split("\n") | map(select(. != "") | tonumber)'
```
