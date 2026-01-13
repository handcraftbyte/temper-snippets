---
title: "Array Frequencies"
description: "Count occurrences of each value in an array"
topic: "arrays"
parameters:
  - name: "arr"
    type: "string"
    default: "[\"a\", \"b\", \"a\", \"c\", \"a\", \"b\"]"
    description: "Array to count (JSON)"
exampleOutputs:
  - input: { "arr": "[\"a\", \"b\", \"a\", \"c\", \"a\", \"b\"]" }
    output: "{\"a\":3,\"b\":2,\"c\":1}"
---

```bash
echo "$arr" | jq 'group_by(.) | map({(.[0]): length}) | add'
```
