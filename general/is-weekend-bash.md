---
title: "Is Weekend"
description: "Check if a date falls on a weekend (Saturday or Sunday)"
topic: "dates"
parameters:
  - name: "dateStr"
    type: "string"
    default: "2024-01-13"
    description: "Date to check (YYYY-MM-DD)"
exampleOutputs:
  - input: { "dateStr": "2024-01-13" }
    output: "true"
  - input: { "dateStr": "2024-01-15" }
    output: "false"
---

```bash
day=$(date -d "$dateStr" +%u)
[[ $day -eq 6 || $day -eq 7 ]] && echo "true" || echo "false"
```
