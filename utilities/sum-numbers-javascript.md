---
title: "Sum Numbers"
description: "Extract and sum all numbers found in a text string."
topic: "math"
parameters:
  - name: "text"
    type: "string"
    default: "I have 5 apples, 3 oranges, and 12 bananas"
    description: "Text containing numbers to sum."
exampleOutputs:
  - input: { "text": "I have 5 apples, 3 oranges, and 12 bananas" }
    output: "20"
  - input: { "text": "Price: $19.99 + $5.50 shipping" }
    output: "25.49"
---

```javascript
const numbers = text.match(/-?\d+\.?\d*/g) || [];
const sum = numbers.reduce((acc, n) => acc + parseFloat(n), 0);
return Number.isInteger(sum) ? sum.toString() : sum.toFixed(2);
```
