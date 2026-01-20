---
title: "Start of Month"
description: "Get the first day of the month for a date."
topic: "dates"
parameters:
  - name: "dateStr"
    type: "string"
    default: "2024-01-15"
    description: "Date string"
exampleOutputs:
  - input: { "dateStr": "2024-01-15" }
    output: "2024-01-01"
---

```javascript
const date = new Date(dateStr);
return new Date(date.getFullYear(), date.getMonth(), 1).toISOString().split('T')[0];
```
