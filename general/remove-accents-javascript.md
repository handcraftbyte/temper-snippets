---
title: "Remove Accents"
description: "Remove diacritical marks (accents) from a string"
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "Crème brûlée café"
    description: "The string to normalize"
exampleOutputs:
  - input: { "str": "Crème brûlée café" }
    output: "Creme brulee cafe"
  - input: { "str": "résumé naïve" }
    output: "resume naive"
---

```javascript
str.normalize('NFD').replace(/[\u0300-\u036f]/g, '');
```
