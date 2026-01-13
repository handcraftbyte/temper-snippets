---
title: "Find Index"
description: "Find the index of the first element matching a condition"
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[{\"id\":1},{\"id\":2},{\"id\":3}]"
    description: "JSON array"
  - name: "targetId"
    type: "number"
    default: 2
    description: "ID to find"
exampleOutputs:
  - input: { "arr": "[{\"id\":1},{\"id\":2},{\"id\":3}]", "targetId": 2 }
    output: "1"
  - input: { "arr": "[{\"id\":1},{\"id\":2},{\"id\":3}]", "targetId": 5 }
    output: "-1"
---

```bash
echo "$arr" | jq --argjson t "$targetId" 'to_entries | map(select(.value.id == $t)) | if length > 0 then .[0].key else -1 end'
```
