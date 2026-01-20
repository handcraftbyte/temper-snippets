---
title: "Days Between Dates"
description: "Calculate the number of days between two dates."
topic: "dates"
parameters:
  - name: "date1"
    type: "string"
    default: "2024-01-01"
    description: "First date (YYYY-MM-DD)"
  - name: "date2"
    type: "string"
    default: "2024-01-15"
    description: "Second date (YYYY-MM-DD)"
exampleOutputs:
  - input: { "date1": "2024-01-01", "date2": "2024-01-15" }
    output: "14"
  - input: { "date1": "2024-01-01", "date2": "2024-12-31" }
    output: "365"
---

```javascript
Math.abs(Math.floor((new Date(date2) - new Date(date1)) / (1000 * 60 * 60 * 24)));
```
