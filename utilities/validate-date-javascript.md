---
title: "Validate Date String"
description: "Check if a string is a valid date."
topic: "validation"
parameters:
  - name: "dateStr"
    type: "string"
    default: "2024-01-15"
    description: "Date string to validate."
exampleOutputs:
  - input: { "dateStr": "2024-01-15" }
    output: "true"
  - input: { "dateStr": "not-a-date" }
    output: "false"
---

```javascript
!isNaN(new Date(dateStr).getTime());
```
