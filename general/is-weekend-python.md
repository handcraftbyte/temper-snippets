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
    output: "True"
  - input: { "dateStr": "2024-01-15" }
    output: "False"
---

```python
from datetime import datetime
return datetime.strptime(dateStr, '%Y-%m-%d').weekday() >= 5
```
