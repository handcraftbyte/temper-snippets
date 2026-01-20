---
title: "Is Weekend"
description: "Check if a date falls on a weekend (Saturday or Sunday)."
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

```javascript
[0, 6].includes(new Date(dateStr).getDay());
```
