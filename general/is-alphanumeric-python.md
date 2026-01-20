---
title: "Is Alphanumeric"
description: "Check if a string contains only letters and numbers."
topic: "validation"
relatedSlugs:
  - "is-alphanumeric-javascript"
  - "is-alphanumeric-ruby"
  - "is-alphanumeric-php"
  - "is-alphanumeric-bash"
parameters:
  - name: "str"
    type: "string"
    default: "Hello123"
    description: "The string to check"
exampleOutputs:
  - input: { "str": "Hello123" }
    output: "True"
  - input: { "str": "Hello World" }
    output: "False"
  - input: { "str": "abc123xyz" }
    output: "True"
---

```python
str.isalnum()
```
