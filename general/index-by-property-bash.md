---
title: "Index by Property"
description: "Convert an array of objects to an object indexed by a property"
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[{\"id\":\"a\",\"name\":\"Alice\"},{\"id\":\"b\",\"name\":\"Bob\"}]"
    description: "JSON array of objects"
  - name: "key"
    type: "string"
    default: "id"
    description: "Property to use as index"
exampleOutputs:
  - input: { "arr": "[{\"id\":\"a\",\"name\":\"Alice\"},{\"id\":\"b\",\"name\":\"Bob\"}]", "key": "id" }
    output: "{\"a\":{\"id\":\"a\",\"name\":\"Alice\"},\"b\":{\"id\":\"b\",\"name\":\"Bob\"}}"
---

```bash
echo "$arr" | jq --arg k "$key" 'map({(.[$k]): .}) | add'
```
