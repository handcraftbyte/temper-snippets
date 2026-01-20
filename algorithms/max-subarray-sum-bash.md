---
title: "Maximum Subarray Sum"
description: "Find the maximum sum of a contiguous subarray using Kadane's algorithm."
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[-2, 1, -3, 4, -1, 2, 1, -5, 4]"
    description: "Array of numbers (JSON)"
exampleOutputs:
  - input: { "arr": "[-2, 1, -3, 4, -1, 2, 1, -5, 4]" }
    output: "6"
---

```bash
echo "$arr" | jq 'reduce .[] as $x ({max: .[0], cur: .[0]}; .cur = [($x), (.cur + $x)] | max | .max = [.max, .cur] | max) | .max'
```
