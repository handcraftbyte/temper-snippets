---
title: "Extract Initials"
description: "Extract initials from a name"
topic: "strings"
relatedSlugs:
  - "extract-initials-javascript"
  - "extract-initials-python"
  - "extract-initials-ruby"
  - "extract-initials-php"
parameters:
  - name: "name"
    type: "string"
    default: "John Michael Doe"
    description: "The full name to extract initials from"
exampleOutputs:
  - input: { "name": "John Michael Doe" }
    output: "JMD"
  - input: { "name": "Alice Smith" }
    output: "AS"
---

```bash
echo "$name" | sed 's/\([A-Za-z]\)[^ ]* */\1/g' | tr '[:lower:]' '[:upper:]'
```
