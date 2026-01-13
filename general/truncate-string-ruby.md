---
title: "Truncate String"
description: "Truncate a string to a specified length with ellipsis"
topic: "strings"
relatedSlugs:
  - "truncate-string-javascript"
  - "truncate-string-python"
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

```ruby
str.length > length ? str[0, length - 3] + '...' : str
```
