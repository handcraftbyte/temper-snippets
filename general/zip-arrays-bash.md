---
title: "Zip Arrays"
description: "Combine multiple arrays element-wise into pairs."
topic: "arrays"
parameters:
  - name: "arr1"
    type: "string"
    default: "[\"a\", \"b\", \"c\"]"
    description: "First JSON array"
  - name: "arr2"
    type: "string"
    default: "[1, 2, 3]"
    description: "Second JSON array"
exampleOutputs:
  - input: { "arr1": "[\"a\", \"b\", \"c\"]", "arr2": "[1, 2, 3]" }
    output: "[[\"a\",1],[\"b\",2],[\"c\",3]]"
---

```bash
jq -n --argjson a "$arr1" --argjson b "$arr2" '[$a, $b] | transpose'
```
