---
title: "CSV to JSON"
description: "Convert a CSV string to a JSON array of objects with headers as keys."
topic: "converters"
parameters:
  - name: "csv"
    type: "string"
    default: "name,age,city\nJohn,30,NYC\nJane,25,LA"
    description: "CSV string to convert."
exampleOutputs:
  - input: { "csv": "name,age\nJohn,30\nJane,25" }
    output: "[{\"name\":\"John\",\"age\":\"30\"},{\"name\":\"Jane\",\"age\":\"25\"}]"
---

```javascript
const [header, ...rows] = csv.split('\n').map(row => row.split(','));
return rows.map(row => Object.fromEntries(header.map((h, i) => [h, row[i]])));
```
