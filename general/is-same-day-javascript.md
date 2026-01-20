---
title: "Is Same Day"
description: "Check if two dates are on the same day."
topic: "dates"
parameters:
  - name: "date1"
    type: "string"
    default: "2024-01-15T10:00:00"
    description: "First date"
  - name: "date2"
    type: "string"
    default: "2024-01-15T22:00:00"
    description: "Second date"
exampleOutputs:
  - input: { "date1": "2024-01-15T10:00:00", "date2": "2024-01-15T22:00:00" }
    output: "true"
  - input: { "date1": "2024-01-15", "date2": "2024-01-16" }
    output: "false"
---

```javascript
new Date(date1).toDateString() === new Date(date2).toDateString();
```
