---
title: "Add Days to Date"
description: "Add a specified number of days to a date"
topic: "dates"
parameters:
  - name: "dateStr"
    type: "string"
    default: "2024-01-15"
    description: "Starting date (YYYY-MM-DD)"
  - name: "days"
    type: "number"
    default: 7
    description: "Number of days to add"
exampleOutputs:
  - input: { "dateStr": "2024-01-15", "days": 7 }
    output: "2024-01-22"
  - input: { "dateStr": "2024-01-30", "days": 5 }
    output: "2024-02-04"
---

```javascript
const date = new Date(dateStr);
date.setDate(date.getDate() + days);
return date.toISOString().split('T')[0];
```
