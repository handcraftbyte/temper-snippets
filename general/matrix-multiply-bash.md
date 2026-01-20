---
title: "Matrix Multiply"
description: "Multiply two matrices."
topic: "arrays"
parameters:
  - name: "a"
    type: "string"
    default: "[[1, 2], [3, 4]]"
    description: "First matrix (JSON)"
  - name: "b"
    type: "string"
    default: "[[5, 6], [7, 8]]"
    description: "Second matrix (JSON)"
exampleOutputs:
  - input: { "a": "[[1, 2], [3, 4]]", "b": "[[5, 6], [7, 8]]" }
    output: "[[19,22],[43,50]]"
---

```bash
jq -n --argjson m1 "$a" --argjson m2 "$b" '[$m1[] | . as $row | [range($m2[0] | length) as $j | reduce range($row | length) as $k (0; . + $row[$k] * $m2[$k][$j])]]'
```
