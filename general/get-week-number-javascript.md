---
title: "Get Week Number"
description: "Get the ISO week number from a date."
topic: "dates"
parameters:
  - name: "dateStr"
    type: "string"
    default: "2024-01-15"
    description: "Date string (YYYY-MM-DD)"
exampleOutputs:
  - input: { "dateStr": "2024-01-15" }
    output: "3"
  - input: { "dateStr": "2024-12-31" }
    output: "1"
---

```javascript
const date = new Date(dateStr);
const firstDay = new Date(date.getFullYear(), 0, 1);
return Math.ceil(((date - firstDay) / 86400000 + firstDay.getDay() + 1) / 7);
```
