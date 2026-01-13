---
title: "Title Case"
description: "Capitalize the first letter of each word in a string"
topic: "strings"
relatedSlugs:
  - "title-case-javascript"
  - "title-case-ruby"
  - "title-case-php"
  - "title-case-bash"
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

```python
str.title()
```
