---
title: "Title Case"
description: "Capitalize the first letter of each word in a string."
topic: "strings"
relatedSlugs:
  - "title-case-javascript"
  - "title-case-python"
  - "title-case-ruby"
  - "title-case-php"
parameters:
  - name: "str"
    type: "string"
    default: "hello world example"
    description: "The string to convert to title case"
exampleOutputs:
  - input: { "str": "hello world example" }
    output: "Hello World Example"
  - input: { "str": "the quick brown fox" }
    output: "The Quick Brown Fox"
---

```bash
echo "$str" | sed 's/\b\(.\)/\u\1/g'
```
