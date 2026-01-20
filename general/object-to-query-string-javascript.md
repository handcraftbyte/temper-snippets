---
title: "Object to Query String"
description: "Convert an object to a URL-encoded query string for use in URLs."
topic: "objects"
parameters:
  - name: "obj"
    type: "object"
    default: {"name": "John", "age": 30, "city": "New York"}
    description: "Object to convert"
exampleOutputs:
  - input: { "obj": {"name": "John", "age": 30, "city": "New York"} }
    output: "name=John&age=30&city=New%20York"
---

```javascript
new URLSearchParams(obj).toString();
```
