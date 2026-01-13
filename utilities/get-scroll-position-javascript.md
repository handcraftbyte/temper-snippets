---
title: "Get Scroll Position"
description: "Get current scroll position of the page"
topic: "browser"
parameters:
  - name: "example"
    type: "string"
    default: "demo"
    description: "Example parameter"
exampleOutputs:
  - input: { "example": "demo" }
    output: "{\"x\":0,\"y\":0}"
---

```javascript
return {
  x: window.pageXOffset || document.documentElement.scrollLeft,
  y: window.pageYOffset || document.documentElement.scrollTop
};
```
