---
title: "Find Longest Word"
description: "Find the longest word in a string."
topic: "strings"
relatedSlugs:
  - "longest-word-javascript"
  - "longest-word-python"
  - "longest-word-ruby"
  - "longest-word-php"
parameters:
  - name: "str"
    type: "string"
    default: "The quick brown fox jumps over the lazy dog"
    description: "The string to search"
exampleOutputs:
  - input: { "str": "The quick brown fox jumps over the lazy dog" }
    output: "quick"
  - input: { "str": "JavaScript is awesome" }
    output: "JavaScript"
---

```bash
echo "$str" | tr ' ' '\n' | awk '{ print length, $0 }' | sort -rn | head -1 | cut -d' ' -f2
```
