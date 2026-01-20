---
title: "Read from Clipboard"
description: "Read text content from the user's clipboard asynchronously."
topic: "browser"
parameters:
  - name: "example"
    type: "string"
    default: "demo"
    description: "Example parameter."
exampleOutputs:
  - input: { "example": "demo" }
    output: "Clipboard read function created"
---

```javascript
const readClipboard = async () => navigator.clipboard.readText();
return "Clipboard read function created";
```
