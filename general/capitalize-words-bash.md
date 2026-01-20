---
title: "Capitalize Words"
description: "Capitalize the first letter of each word in a string (title case)."
topic: "strings"
relatedSlugs:
  - "capitalize-words-javascript"
  - "capitalize-words-python"
  - "capitalize-words-ruby"
  - "capitalize-words-php"
parameters:
  - name: "str"
    type: "string"
    default: "hello world from bash"
    description: "The string to capitalize"
exampleOutputs:
  - input: { "str": "hello world from bash" }
    output: "Hello World From Bash"
---

```bash
echo "$str" | sed 's/\b\(.\)/\u\1/g'
```
