---
title: "Three Sum"
description: "Find all unique triplets in an array that sum to a target value."
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[-1, 0, 1, 2, -1, -4]"
    description: "Array of numbers (JSON)"
  - name: "target"
    type: "number"
    default: 0
    description: "Target sum"
exampleOutputs:
  - input: { "arr": "[-1, 0, 1, 2, -1, -4]", "target": 0 }
    output: "[[-1,-1,2],[-1,0,1]]"
---

```bash
echo "$arr" | jq --argjson t "$target" 'sort | . as $a | [range(length - 2) as $i | if $i > 0 and $a[$i] == $a[$i-1] then empty else (($i + 1) as $l | (length - 1) as $r | [range($l; $r + 1)] | combinations(2) | select(.[0] < .[1]) | [$a[$i], $a[.[0]], $a[.[1]]] | select(add == $t)) end] | unique'
```
