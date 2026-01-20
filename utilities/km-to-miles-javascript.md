---
title: "Kilometers to Miles"
description: "Convert distance from kilometers to miles."
topic: "converters"
parameters:
  - name: "km"
    type: "number"
    default: 10
    description: "Distance in kilometers."
exampleOutputs:
  - input: { "km": 10 }
    output: "6.21371"
---

```javascript
+(km * 0.621371).toFixed(5);
```
