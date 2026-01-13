---
title: "Detect Dark Mode"
description: "Check if user prefers dark mode"
topic: "browser"
parameters:
  - name: "example"
    type: "string"
    default: "demo"
    description: "Example parameter"
exampleOutputs:
  - input: { "example": "demo" }
    output: "true"
---

```javascript
window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches;
```
