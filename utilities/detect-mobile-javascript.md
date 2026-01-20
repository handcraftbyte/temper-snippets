---
title: "Detect Mobile Device"
description: "Check if user is on a mobile device by examining the user agent string."
topic: "browser"
parameters:
  - name: "example"
    type: "string"
    default: "demo"
    description: "Example parameter."
exampleOutputs:
  - input: { "example": "demo" }
    output: "false"
---

```javascript
/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
```
