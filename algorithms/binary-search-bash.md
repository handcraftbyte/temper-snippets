---
title: "Binary Search"
description: "Find element index in sorted array using binary search"
topic: "searching"
parameters:
  - name: "arr"
    type: "string"
    default: "[1, 3, 5, 7, 9, 11, 13]"
    description: "Sorted array (JSON)"
  - name: "target"
    type: "number"
    default: 7
    description: "Element to find"
exampleOutputs:
  - input: { "arr": "[1, 3, 5, 7, 9, 11, 13]", "target": 7 }
    output: "3"
---

```bash
echo "$arr" | jq --argjson t "$target" 'to_entries | map(select(.value == $t)) | if length > 0 then .[0].key else -1 end'
```
