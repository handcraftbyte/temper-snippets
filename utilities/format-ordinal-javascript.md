---
title: "Format Ordinal"
description: "Convert number to ordinal (1st, 2nd, 3rd, etc.)"
topic: "formatting"
parameters:
  - name: "num"
    type: "number"
    default: 42
    description: "Number to convert"
exampleOutputs:
  - input: { "num": 1 }
    output: "1st"
  - input: { "num": 22 }
    output: "22nd"
  - input: { "num": 42 }
    output: "42nd"
---

```javascript
const suffixes = ['th', 'st', 'nd', 'rd'];
const v = num % 100;
return num + (suffixes[(v - 20) % 10] || suffixes[v] || suffixes[0]);
```
