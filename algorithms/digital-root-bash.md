---
title: "Digital Root"
description: "Calculate the digital root by repeatedly summing digits until a single digit remains."
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 942
    description: "Number"
exampleOutputs:
  - input: { "num": 942 }
    output: "6"
---

```bash
[[ $num -eq 0 ]] && echo 0 || echo $(( 1 + (${num#-} - 1) % 9 ))
```
