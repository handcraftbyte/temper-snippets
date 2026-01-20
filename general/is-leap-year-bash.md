---
title: "Is Leap Year"
description: "Check if a year is a leap year."
topic: "dates"
parameters:
  - name: "year"
    type: "number"
    default: 2024
    description: "Year to check"
exampleOutputs:
  - input: { "year": 2024 }
    output: "true"
  - input: { "year": 2023 }
    output: "false"
---

```bash
[[ $(( (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 )) -eq 1 ]] && echo "true" || echo "false"
```
