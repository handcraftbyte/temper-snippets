---
title: "Copy to Clipboard"
description: "Copy text to the clipboard using the Clipboard API."
topic: "browser"
parameters:
  - name: "text"
    type: "string"
    default: "Hello, World!"
    description: "Text to copy to clipboard."
exampleOutputs:
  - input: { "text": "Hello, World!" }
    output: "Copied to clipboard!"
---

```javascript
await navigator.clipboard.writeText(text);
return "Copied to clipboard!";
```
