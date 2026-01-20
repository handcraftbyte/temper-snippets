---
title: "Format Duration"
description: "Format a duration in seconds to a human readable format like '1h 2m 3s'."
topic: "dates"
parameters:
  - name: "seconds"
    type: "number"
    default: 3661
    description: "Duration in seconds."
exampleOutputs:
  - input: { "seconds": 3661 }
    output: "1h 1m 1s"
  - input: { "seconds": 90 }
    output: "1m 30s"
---

```javascript
const h = Math.floor(seconds / 3600);
const m = Math.floor((seconds % 3600) / 60);
const s = seconds % 60;
return [h && `${h}h`, m && `${m}m`, `${s}s`].filter(Boolean).join(' ');
```
