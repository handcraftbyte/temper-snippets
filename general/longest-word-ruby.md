---
title: "Find Longest Word"
description: "Find the longest word in a string"
topic: "strings"
relatedSlugs:
  - "longest-word-javascript"
  - "longest-word-python"
  - "longest-word-php"
  - "longest-word-bash"
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

```ruby
str.split.max_by(&:length)
```
