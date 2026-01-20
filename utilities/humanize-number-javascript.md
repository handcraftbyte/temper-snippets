---
title: "Humanize Number"
description: "Convert large number to human readable format (K, M, B)."
topic: "formatting"
parameters:
  - name: "num"
    type: "number"
    default: 1234567
    description: "Number to humanize."
exampleOutputs:
  - input: { "num": 1234567 }
    output: "1.23M"
  - input: { "num": 1500 }
    output: "1.50K"
---

```javascript
const units = ['', 'K', 'M', 'B', 'T'];
let i = 0, n = Math.abs(num);
while (n >= 1000 && i < units.length - 1) { n /= 1000; i++; }
return (num < 0 ? '-' : '') + n.toFixed(2) + units[i];
```
