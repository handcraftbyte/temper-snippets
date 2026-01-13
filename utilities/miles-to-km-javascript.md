---
title: "Miles to Kilometers"
description: "Convert distance from miles to kilometers"
topic: "converters"
parameters:
  - name: "miles"
    type: "number"
    default: 10
    description: "Distance in miles"
exampleOutputs:
  - input: { "miles": 10 }
    output: "16.0934"
---

```javascript
+(miles * 1.60934).toFixed(4);
```
