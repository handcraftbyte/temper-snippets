---
title: "Remove Common Indent"
description: "Remove the common leading whitespace from all lines in a multi-line string, normalizing indentation."
topic: "strings"
parameters:
  - name: "s"
    type: "string"
    default: "    line1\\n    line2\\n      line3"
    description: "Indented multi-line string"
exampleOutputs:
  - input: { "s": "    line1\\n    line2\\n      line3" }
    output: "line1\\nline2\\n  line3"
---

```bash
min_indent=$(echo -e "$s" | grep -v '^$' | sed 's/[^ ].*//' | awk '{print length}' | sort -n | head -1)
echo -e "$s" | sed "s/^.\{$min_indent\}//"
```
