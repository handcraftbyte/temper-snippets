---
title: "Word Wrap"
description: "Wrap text to specified line width"
topic: "strings"
parameters:
  - name: "text"
    type: "string"
    default: "The quick brown fox jumps over the lazy dog"
    description: "Text to wrap"
  - name: "width"
    type: "number"
    default: 20
    description: "Maximum line width"
exampleOutputs:
  - input: { "text": "The quick brown fox jumps over the lazy dog", "width": 20 }
    output: "The quick brown fox\\njumps over the lazy\\ndog"
---

```ruby
text.gsub(/(.{1,#{width}})(\s+|$)/, "\\1\n").strip
```
