---
title: "End of Month"
description: "Get the last day of the month for a date."
topic: "dates"
parameters:
  - name: "dateStr"
    type: "string"
    default: "2024-01-15"
    description: "Date string"
exampleOutputs:
  - input: { "dateStr": "2024-01-15" }
    output: "2024-01-31"
  - input: { "dateStr": "2024-02-15" }
    output: "2024-02-29"
---

```javascript
const date = new Date(dateStr);
return new Date(date.getFullYear(), date.getMonth() + 1, 0).toISOString().split('T')[0];
```
