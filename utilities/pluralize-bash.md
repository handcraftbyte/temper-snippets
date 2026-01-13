---
title: "Pluralize Word"
description: "Add plural suffix based on count"
topic: "formatting"
parameters:
  - name: "word"
    type: "string"
    default: "item"
    description: "Word to pluralize"
  - name: "count"
    type: "number"
    default: 5
    description: "Count for pluralization"
exampleOutputs:
  - input: { "word": "item", "count": 5 }
    output: "5 items"
  - input: { "word": "item", "count": 1 }
    output: "1 item"
---

```bash
[[ $count -eq 1 ]] && suffix="" || suffix="s"
echo "$count $word$suffix"
```
