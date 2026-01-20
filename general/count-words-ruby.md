---
title: "Count Words"
description: "Count the number of whitespace-separated words in a string."
topic: "strings"
relatedSlugs:
  - "count-words-javascript"
  - "count-words-python"
  - "count-words-php"
  - "count-words-bash"
parameters:
  - name: "str"
    type: "string"
    default: "The quick brown fox jumps over the lazy dog"
    description: "The string to count words in"
exampleOutputs:
  - input: { "str": "The quick brown fox jumps over the lazy dog" }
    output: "9"
---

```ruby
str.split.length
```
