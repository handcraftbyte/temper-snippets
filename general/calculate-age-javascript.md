---
title: "Calculate Age"
description: "Calculate age in years from a birth date, accounting for month and day."
topic: "dates"
parameters:
  - name: "birthDate"
    type: "string"
    default: "1990-05-15"
    description: "Birth date (YYYY-MM-DD)"
exampleOutputs:
  - input: { "birthDate": "1990-05-15" }
    output: "33"
  - input: { "birthDate": "2000-01-01" }
    output: "24"
---

```javascript
const today = new Date();
const birth = new Date(birthDate);
let age = today.getFullYear() - birth.getFullYear();
const m = today.getMonth() - birth.getMonth();
if (m < 0 || (m === 0 && today.getDate() < birth.getDate())) age--;
return age;
```
