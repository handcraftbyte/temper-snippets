---
title: "Rotate Array Right"
description: "Rotate array elements to the right by n positions"
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[1, 2, 3, 4, 5]"
    description: "Array to rotate (JSON)"
  - name: "n"
    type: "number"
    default: 2
    description: "Positions to rotate"
exampleOutputs:
  - input: { "arr": "[1, 2, 3, 4, 5]", "n": 2 }
    output: "[4,5,1,2,3]"
---

```bash
echo "$arr" | jq --argjson n "$n" '($n % length) as $k | .[-$k:] + .[:-$k]'
```
