---
title: "Merge Objects"
description: "Merge two objects together (shallow merge)"
topic: "objects"
parameters:
  - name: "obj1"
    type: "string"
    default: "{\"a\": 1, \"b\": 2}"
    description: "First JSON object"
  - name: "obj2"
    type: "string"
    default: "{\"b\": 3, \"c\": 4}"
    description: "Second JSON object (overwrites first)"
exampleOutputs:
  - input: { "obj1": "{\"a\": 1, \"b\": 2}", "obj2": "{\"b\": 3, \"c\": 4}" }
    output: "{\"a\":1,\"b\":3,\"c\":4}"
---

```bash
echo "$obj1" | jq --argjson o2 "$obj2" '. * $o2'
```
