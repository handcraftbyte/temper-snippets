---
title: "Two Sum"
description: "Find indices of two numbers that add up to target"
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[2, 7, 11, 15]"
    description: "Array of numbers (JSON)"
  - name: "target"
    type: "number"
    default: 9
    description: "Target sum"
exampleOutputs:
  - input: { "arr": "[2, 7, 11, 15]", "target": 9 }
    output: "[0, 1]"
---

```bash
echo "$arr" | jq --argjson t "$target" 'to_entries | . as $a | first(range(length) as $i | range($i+1; length) as $j | select($a[$i].value + $a[$j].value == $t) | [$i, $j]) // null'
```
