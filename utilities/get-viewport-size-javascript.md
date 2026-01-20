---
title: "Get Viewport Size"
description: "Get browser viewport dimensions."
topic: "browser"
parameters:
  - name: "example"
    type: "string"
    default: "demo"
    description: "Example parameter."
exampleOutputs:
  - input: { "example": "demo" }
    output: "{\"width\":1920,\"height\":1080}"
---

```javascript
return {
  width: Math.max(document.documentElement.clientWidth || 0, window.innerWidth || 0),
  height: Math.max(document.documentElement.clientHeight || 0, window.innerHeight || 0)
};
```
