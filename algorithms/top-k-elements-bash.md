---
title: "Top K Elements"
description: "Find the k largest elements in an array"
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]"
    description: "Array of numbers (JSON)"
  - name: "k"
    type: "number"
    default: 3
    description: "Number of top elements to return"
exampleOutputs:
  - input: { "arr": "[3,1,4,1,5,9,2,6]", "k": 3 }
    output: "[9,6,5]"
---

```bash
echo "$arr" | jq --argjson k "$k" 'sort | reverse | .[:$k]'
```
