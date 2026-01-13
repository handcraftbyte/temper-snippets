---
title: "Count Array Occurrences"
description: "Count occurrences of each value in an array"
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[\"a\", \"b\", \"a\", \"c\", \"b\", \"a\"]"
    description: "JSON array"
exampleOutputs:
  - input: { "arr": "[\"a\", \"b\", \"a\", \"c\", \"b\", \"a\"]" }
    output: "{\"a\":3,\"b\":2,\"c\":1}"
---

```bash
echo "$arr" | jq 'group_by(.) | map({(.[0]): length}) | add'
```
