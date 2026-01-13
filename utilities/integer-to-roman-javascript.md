---
title: "Integer to Roman"
description: "Convert integer to Roman numeral"
topic: "converters"
parameters:
  - name: "num"
    type: "number"
    default: 1994
    description: "Integer (1-3999)"
exampleOutputs:
  - input: { "num": 1994 }
    output: "MCMXCIV"
---

```javascript
const numerals = [[1000,'M'],[900,'CM'],[500,'D'],[400,'CD'],[100,'C'],[90,'XC'],[50,'L'],[40,'XL'],[10,'X'],[9,'IX'],[5,'V'],[4,'IV'],[1,'I']];
let result = '', n = num;
for (const [val, sym] of numerals) {
  while (n >= val) { result += sym; n -= val; }
}
return result;
```
