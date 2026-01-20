---
title: "Celsius to Fahrenheit"
description: "Convert temperature from Celsius to Fahrenheit using the standard formula."
topic: "math"
parameters:
  - name: "celsius"
    type: "number"
    default: 25
    description: "Temperature in Celsius"
exampleOutputs:
  - input: { "celsius": 25 }
    output: "77"
  - input: { "celsius": 0 }
    output: "32"
  - input: { "celsius": 100 }
    output: "212"
---

```javascript
(celsius * 9/5) + 32;
```
