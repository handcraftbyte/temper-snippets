---
title: "Pluck Property"
description: "Extract a specific property from each object in an array"
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[{\"name\":\"John\",\"age\":30},{\"name\":\"Jane\",\"age\":25},{\"name\":\"Bob\",\"age\":35}]"
    description: "JSON array of objects"
  - name: "key"
    type: "string"
    default: "name"
    description: "Property to extract"
exampleOutputs:
  - input: { "arr": "[{\"name\":\"John\",\"age\":30},{\"name\":\"Jane\",\"age\":25},{\"name\":\"Bob\",\"age\":35}]", "key": "name" }
    output: "[\"John\",\"Jane\",\"Bob\"]"
---

```bash
echo "$arr" | jq --arg k "$key" '[.[] | .[$k]]'
```
