---
title: "Prettify JSON"
description: "Format JSON with indentation for readability"
topic: "json"
parameters:
  - name: "jsonStr"
    type: "string"
    default: "{\"name\":\"John\",\"age\":30,\"city\":\"New York\"}"
    description: "JSON string to format"
  - name: "indent"
    type: "number"
    default: 2
    description: "Number of spaces for indentation"
exampleOutputs:
  - input: { "jsonStr": "{\"name\":\"John\",\"age\":30}", "indent": 2 }
    output: "{\n  \"name\": \"John\",\n  \"age\": 30\n}"
---

```bash
echo "$jsonStr" | jq --indent "$indent" '.'
```
