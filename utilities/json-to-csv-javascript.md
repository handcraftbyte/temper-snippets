---
title: "JSON to CSV"
description: "Convert JSON array to CSV string"
topic: "converters"
parameters:
  - name: "json"
    type: "array"
    default: [{"name": "John", "age": 30}, {"name": "Jane", "age": 25}]
    description: "Array of objects to convert"
exampleOutputs:
  - input: { "json": [{"name": "John", "age": 30}, {"name": "Jane", "age": 25}] }
    output: "name,age\nJohn,30\nJane,25"
---

```javascript
const headers = Object.keys(json[0]);
return [headers.join(','), ...json.map(obj => headers.map(h => obj[h]).join(','))].join('\n');
```
