---
title: "End of Day"
description: "Get the end of day (23:59:59.999) for a date"
topic: "dates"
parameters:
  - name: "dateStr"
    type: "string"
    default: "2024-01-15T14:30:00"
    description: "Date string"
exampleOutputs:
  - input: { "dateStr": "2024-01-15T14:30:00" }
    output: "2024-01-15T23:59:59.999Z"
---

```javascript
const date = new Date(dateStr);
date.setHours(23, 59, 59, 999);
return date.toISOString();
```
