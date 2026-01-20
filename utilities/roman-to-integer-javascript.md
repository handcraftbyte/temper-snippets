---
title: "Roman to Integer"
description: "Convert a Roman numeral string to its integer value."
topic: "converters"
parameters:
  - name: "roman"
    type: "string"
    default: "MCMXCIV"
    description: "Roman numeral."
exampleOutputs:
  - input: { "roman": "MCMXCIV" }
    output: "1994"
---

```javascript
const values = { I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000 };
let result = 0;
for (let i = 0; i < roman.length; i++) {
  const curr = values[roman[i]], next = values[roman[i + 1]] || 0;
  result += curr < next ? -curr : curr;
}
return result;
```
