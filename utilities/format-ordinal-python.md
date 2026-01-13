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

```python
suffixes = ['th', 'st', 'nd', 'rd'] + ['th'] * 6
v = num % 100
suffix = suffixes[v - 20] if 20 < v < 30 else suffixes[min(v, 4)]
return f'{num}{suffix}'
```
