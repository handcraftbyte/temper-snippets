---
title: "Remove Common Indent"
description: "Remove common leading whitespace from all lines"
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "    line1\\n    line2\\n      line3"
    description: "Indented multi-line string"
exampleOutputs:
  - input: { "str": "    line1\\n    line2\\n      line3" }
    output: "line1\\nline2\\n  line3"
---

```javascript
const lines = str.split('\n');
const minIndent = Math.min(...lines.filter(l => l.trim()).map(l => l.match(/^(\s*)/)[1].length));
lines.map(l => l.slice(minIndent)).join('\n');
```
