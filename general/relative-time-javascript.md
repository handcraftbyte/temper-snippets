---
title: "Relative Time (Time Ago)"
description: "Convert a date to a human-readable relative time format such as '2 hours ago' or 'in 3 days'."
topic: "dates"
parameters:
  - name: "dateStr"
    type: "string"
    default: "2024-01-15T08:00:00Z"
    description: "ISO date string"
exampleOutputs:
  - input: { "dateStr": "2024-01-15T08:00:00Z" }
    output: "2 days ago"
---

```javascript
const rtf = new Intl.RelativeTimeFormat('en', { numeric: 'auto' });
const diff = new Date(dateStr) - new Date();
const days = Math.round(diff / (1000 * 60 * 60 * 24));
const hours = Math.round(diff / (1000 * 60 * 60));
const minutes = Math.round(diff / (1000 * 60));
return Math.abs(days) >= 1 ? rtf.format(days, 'day') : Math.abs(hours) >= 1 ? rtf.format(hours, 'hour') : rtf.format(minutes, 'minute');
```
