---
title: "Query String to Object"
description: "Parse a URL query string into an object"
topic: "objects"
parameters:
  - name: "queryString"
    type: "string"
    default: "name=John&age=30&city=New%20York"
    description: "Query string to parse"
exampleOutputs:
  - input: { "queryString": "name=John&age=30&city=New%20York" }
    output: "{\"name\": \"John\", \"age\": \"30\", \"city\": \"New York\"}"
---

```javascript
Object.fromEntries(new URLSearchParams(queryString));
```
