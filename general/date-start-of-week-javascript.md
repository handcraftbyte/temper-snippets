---
title: "Start of Week"
description: "Get the start of the week for a date."
topic: "dates"
parameters:
  - name: "date"
    type: "string"
    default: "2024-03-15"
    description: "Input date"
exampleOutputs:
  - input: { "date": "2024-03-15" }
    output: "2024-03-10"
---

```javascript
const d = new Date(date);
const day = d.getDay();
d.setDate(d.getDate() - day);
return d.toISOString().split('T')[0];
```
