---
title: "Days in Month"
description: "Get the number of days in a specific month"
topic: "dates"
parameters:
  - name: "year"
    type: "number"
    default: 2024
    description: "Year"
  - name: "month"
    type: "number"
    default: 2
    description: "Month (1-12)"
exampleOutputs:
  - input: { "year": 2024, "month": 2 }
    output: "29"
  - input: { "year": 2023, "month": 2 }
    output: "28"
  - input: { "year": 2024, "month": 1 }
    output: "31"
---

```javascript
new Date(year, month, 0).getDate();
```
