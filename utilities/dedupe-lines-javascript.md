---
title: "Dedupe Lines"
description: "Remove duplicate lines from text"
topic: "strings"
parameters:
  - name: "text"
    type: "string"
    default: "apple\nbanana\napple\ncherry\nbanana"
    description: "Multi-line text with potential duplicates"
  - name: "caseSensitive"
    type: "boolean"
    default: true
    description: "Treat lines with different case as different"
exampleOutputs:
  - input: { "text": "apple\nbanana\napple\ncherry\nbanana", "caseSensitive": true }
    output: "apple\nbanana\ncherry"
  - input: { "text": "Apple\napple\nBANANA\nbanana", "caseSensitive": false }
    output: "Apple\nBANANA"
---

```javascript
const lines = text.split('\n');
const seen = new Set();
const result = [];
for (const line of lines) {
  const key = caseSensitive ? line : line.toLowerCase();
  if (!seen.has(key)) {
    seen.add(key);
    result.push(line);
  }
}
return result.join('\n');
```
