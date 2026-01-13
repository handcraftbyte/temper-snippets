---
title: "Get Day of Week"
description: "Get the day of the week name from a date"
topic: "dates"
parameters:
  - name: "dateStr"
    type: "string"
    default: "2024-01-15"
    description: "Date string (YYYY-MM-DD)"
exampleOutputs:
  - input: { "dateStr": "2024-01-15" }
    output: "Monday"
  - input: { "dateStr": "2024-01-13" }
    output: "Saturday"
---

```javascript
new Date(dateStr).toLocaleDateString('en-US', { weekday: 'long' });
```
