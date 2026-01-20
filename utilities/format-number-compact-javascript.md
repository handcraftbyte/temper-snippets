---
title: "Format Number Compact"
description: "Format a number in compact notation like 1K, 1M, or 1B."
topic: "formatting"
parameters:
  - name: "num"
    type: "number"
    default: 1500000
    description: "Number to format."
exampleOutputs:
  - input: { "num": 1500000 }
    output: "1.5M"
---

```javascript
new Intl.NumberFormat('en', { notation: 'compact', maximumFractionDigits: 1 }).format(num);
```
