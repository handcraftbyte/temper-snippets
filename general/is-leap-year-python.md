---
title: "Is Leap Year"
description: "Check if a year is a leap year"
topic: "dates"
parameters:
  - name: "year"
    type: "number"
    default: 2024
    description: "Year to check"
exampleOutputs:
  - input: { "year": 2024 }
    output: "True"
  - input: { "year": 2023 }
    output: "False"
---

```python
import calendar
return calendar.isleap(year)
```
