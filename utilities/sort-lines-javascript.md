---
title: "Sort Lines"
description: "Sort lines of text alphabetically with optional reverse order."
topic: "strings"
parameters:
  - name: "text"
    type: "string"
    default: "banana\napple\ncherry"
    description: "Multi-line text to sort."
  - name: "reverse"
    type: "boolean"
    default: false
    description: "Sort in descending order."
exampleOutputs:
  - input: { "text": "banana\napple\ncherry", "reverse": false }
    output: "apple\nbanana\ncherry"
  - input: { "text": "banana\napple\ncherry", "reverse": true }
    output: "cherry\nbanana\napple"
---

```javascript
const lines = text.split('\n').filter(l => l.trim());
const sorted = lines.sort((a, b) => a.localeCompare(b));
return (reverse ? sorted.reverse() : sorted).join('\n');
```
