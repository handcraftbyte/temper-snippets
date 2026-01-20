---
title: "Days in Month"
description: "Get the number of days in a specific month."
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
---

```bash
date -d "$year-$month-01 +1 month -1 day" +%d
```
