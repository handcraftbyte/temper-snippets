---
title: "Get Quarter"
description: "Get the quarter (1-4) for a date"
topic: "dates"
parameters:
  - name: "date"
    type: "string"
    default: "2024-07-15"
    description: "Input date"
exampleOutputs:
  - input: { "date": "2024-07-15" }
    output: "3"
---

```javascript
Math.ceil((new Date(date).getMonth() + 1) / 3);
```
