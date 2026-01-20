---
title: "Fibonacci Sequence"
description: "Generate the first N numbers of the Fibonacci sequence where each number is the sum of the two preceding ones."
topic: "math"
relatedSlugs:
  - "fibonacci-javascript"
  - "fibonacci-python"
  - "fibonacci-ruby"
  - "fibonacci-php"
parameters:
  - name: "n"
    type: "number"
    default: 10
    description: "Number of Fibonacci numbers to generate"
exampleOutputs:
  - input: { "n": 10 }
    output: "0 1 1 2 3 5 8 13 21 34"
  - input: { "n": 5 }
    output: "0 1 1 2 3"
---

```bash
a=0; b=1; for ((i=0; i<n; i++)); do echo -n "$a "; c=$((a+b)); a=$b; b=$c; done | sed 's/ $//'
```
