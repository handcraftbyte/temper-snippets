---
title: "Indent String"
description: "Add indentation to each line of a string."
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "line1\\nline2\\nline3"
    description: "Multi-line string"
  - name: "spaces"
    type: "number"
    default: 4
    description: "Number of spaces to indent"
exampleOutputs:
  - input: { "str": "line1\\nline2\\nline3", "spaces": 4 }
    output: "    line1\\n    line2\\n    line3"
---

```javascript
str.replace(/^/gm, ' '.repeat(spaces));
```
