---
title: "Merge Intervals"
description: "Merge overlapping intervals into consolidated ranges"
topic: "arrays"
parameters:
  - name: "intervals"
    type: "string"
    default: "[[1,3],[2,6],[8,10],[15,18]]"
    description: "Array of [start, end] intervals (JSON)"
exampleOutputs:
  - input: { "intervals": "[[1,3],[2,6],[8,10],[15,18]]" }
    output: "[[1,6],[8,10],[15,18]]"
---

```bash
echo "$intervals" | jq 'sort_by(.[0]) | reduce .[] as $i ([]; if length == 0 then [$i] elif .[-1][1] >= $i[0] then .[-1][1] = ([.[-1][1], $i[1]] | max) else . + [$i] end)'
```
