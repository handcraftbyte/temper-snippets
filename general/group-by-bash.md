---
title: "Group By Property"
description: "Group array items by a property value."
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[{\"type\":\"fruit\",\"name\":\"apple\"},{\"type\":\"vegetable\",\"name\":\"carrot\"},{\"type\":\"fruit\",\"name\":\"banana\"}]"
    description: "JSON array of objects"
  - name: "key"
    type: "string"
    default: "type"
    description: "Property to group by"
exampleOutputs:
  - input: { "arr": "[{\"type\":\"fruit\",\"name\":\"apple\"},{\"type\":\"vegetable\",\"name\":\"carrot\"},{\"type\":\"fruit\",\"name\":\"banana\"}]", "key": "type" }
    output: "{\"fruit\":[...],\"vegetable\":[...]}"
---

```bash
echo "$arr" | jq --arg k "$key" 'group_by(.[$k]) | map({(.[0][$k]): .}) | add'
```
