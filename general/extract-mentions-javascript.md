---
title: "Extract @Mentions"
description: "Extract all @mentions from a text string."
topic: "strings"
parameters:
  - name: "text"
    type: "string"
    default: "Thanks @john and @jane for the help!"
    description: "Text containing @mentions"
exampleOutputs:
  - input: { "text": "Thanks @john and @jane for the help!" }
    output: "[\"@john\", \"@jane\"]"
---

```javascript
text.match(/@\w+/g) || [];
```
