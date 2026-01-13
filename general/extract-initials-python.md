---
title: "Extract Initials"
description: "Extract initials from a name"
topic: "strings"
relatedSlugs:
  - "extract-initials-javascript"
  - "extract-initials-ruby"
  - "extract-initials-php"
  - "extract-initials-bash"
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

```python
''.join(word[0] for word in name.split()).upper()
```
