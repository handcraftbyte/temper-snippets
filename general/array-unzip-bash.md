---
title: "Unzip Arrays"
description: "Separate zipped arrays back into individual arrays"
topic: "arrays"
parameters:
  - name: "zipped"
    type: "string"
    default: "[[1, \"a\"], [2, \"b\"], [3, \"c\"]]"
    description: "Zipped array (JSON)"
exampleOutputs:
  - input: { "zipped": "[[1, \"a\"], [2, \"b\"], [3, \"c\"]]" }
    output: "[[1,2,3],[\"a\",\"b\",\"c\"]]"
---

```bash
echo "$zipped" | jq 'transpose'
```
