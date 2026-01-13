---
title: "Count Working Days"
description: "Count working days (excluding weekends) between dates"
topic: "dates"
parameters:
  - name: "start"
    type: "string"
    default: "2024-01-01"
    description: "Start date"
  - name: "end"
    type: "string"
    default: "2024-01-31"
    description: "End date"
exampleOutputs:
  - input: { "start": "2024-01-01", "end": "2024-01-31" }
    output: "23"
---

```javascript
const d1 = new Date(start), d2 = new Date(end);
let count = 0;
for (let d = new Date(d1); d <= d2; d.setDate(d.getDate() + 1)) {
  const day = d.getDay();
  if (day !== 0 && day !== 6) count++;
}
return count;
```
