---
title: "Start of Day"
description: "Get the start of day (midnight) for a date."
topic: "dates"
parameters:
  - name: "dateStr"
    type: "string"
    default: "2024-01-15T14:30:00"
    description: "Date string"
exampleOutputs:
  - input: { "dateStr": "2024-01-15T14:30:00" }
    output: "2024-01-15T00:00:00.000Z"
---

```javascript
const date = new Date(dateStr);
date.setHours(0, 0, 0, 0);
return date.toISOString();
```
