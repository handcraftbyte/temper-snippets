---
title: "Remove Common Indent"
description: "Remove common leading whitespace from all lines"
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

```ruby
lines = s.split("\n")
min_indent = lines.reject(&:empty?).map { |l| l[/^\s*/].length }.min || 0
return lines.map { |l| l[min_indent..] || '' }.join("\n")
```
