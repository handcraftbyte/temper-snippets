---
title: "Longest Increasing Subsequence"
description: "Find the length of the longest increasing subsequence in an array using dynamic programming."
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[10, 9, 2, 5, 3, 7, 101, 18]"
    description: "Array of numbers (JSON)"
exampleOutputs:
  - input: { "arr": "[10, 9, 2, 5, 3, 7, 101, 18]" }
    output: "4"
---

```bash
echo "$arr" | jq 'length as $n | [range($n)] | map(1) | . as $dp | reduce range(1; $n) as $i ($dp; reduce range($i) as $j (.; if (input_filename | . as $a | $a[$i] > $a[$j]) then .[$i] = ([.[$i], .[$j] + 1] | max) else . end)) | max' --slurpfile a <(echo "$arr") -n 'def lis: . as $arr | length as $n | [range($n) | 1] | reduce range(1; $n) as $i (.; reduce range($i) as $j (.; if $arr[$i] > $arr[$j] then .[$i] = ([.[$i], .[$j] + 1] | max) else . end)) | max; $a[0] | lis'
```
