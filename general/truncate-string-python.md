---
title: "Truncate String"
description: "Truncate a string to a specified length with ellipsis."
topic: "strings"
relatedSlugs:
  - "truncate-string-javascript"
  - "truncate-string-ruby"
  - "truncate-string-php"
  - "truncate-string-bash"
parameters:
  - name: "str"
    type: "string"
    default: "This is a long string that needs to be truncated"
    description: "The string to truncate"
  - name: "length"
    type: "number"
    default: 20
    description: "Maximum length including ellipsis"
exampleOutputs:
  - input: { "str": "This is a long string that needs to be truncated", "length": 20 }
    output: "This is a long st..."
---

```python
str[:length-3] + '...' if len(str) > length else str
```
