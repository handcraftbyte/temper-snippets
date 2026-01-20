---
title: "Sample Array"
description: "Get N random items from an array without replacement."
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]"
    description: "JSON array"
  - name: "n"
    type: "number"
    default: 3
    description: "Number of items to sample"
exampleOutputs:
  - input: { "arr": "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]", "n": 3 }
    output: "[7, 2, 9]"
---

```bash
echo "$arr" | jq --argjson n "$n" '[.[] | {val: ., rand: (now | . * 1000000 | floor % 10000)}] | sort_by(.rand) | .[0:$n] | [.[].val]'
```
