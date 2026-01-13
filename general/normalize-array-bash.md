---
title: "Normalize Array"
description: "Normalize array values to 0-1 range"
topic: "math"
parameters:
  - name: "arr"
    type: "string"
    default: "[10, 20, 30, 40, 50]"
    description: "Array of numbers (JSON)"
exampleOutputs:
  - input: { "arr": "[10, 20, 30, 40, 50]" }
    output: "[0,0.25,0.5,0.75,1]"
---

```bash
echo "$arr" | jq 'min as $min | max as $max | ($max - $min) as $r | map(if $r == 0 then 0 else (. - $min) / $r end)'
```
