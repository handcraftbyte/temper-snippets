---
title: "Calculate Median"
description: "Calculate the median value of an array of numbers."
topic: "math"
parameters:
  - name: "arr"
    type: "string"
    default: "[1, 3, 5, 7, 9]"
    description: "JSON array of numbers"
exampleOutputs:
  - input: { "arr": "[1, 3, 5, 7, 9]" }
    output: "5"
  - input: { "arr": "[1, 2, 3, 4]" }
    output: "2.5"
---

```bash
sorted=($(echo "$arr" | tr -d '[]' | tr ',' '\n' | sort -n))
mid=$((${#sorted[@]} / 2))
if (( ${#sorted[@]} % 2 )); then
  echo "${sorted[$mid]}"
else
  echo "scale=1; (${sorted[$((mid-1))]} + ${sorted[$mid]}) / 2" | bc
fi
```
