---
title: "Extract Hashtags"
description: "Extract all hashtags from a text string."
topic: "strings"
parameters:
  - name: "text"
    type: "string"
    default: "Just posted my #coding project! #javascript #webdev"
    description: "Text containing hashtags"
exampleOutputs:
  - input: { "text": "Just posted my #coding project! #javascript #webdev" }
    output: "[\"#coding\", \"#javascript\", \"#webdev\"]"
---

```javascript
text.match(/#\w+/g) || [];
```
