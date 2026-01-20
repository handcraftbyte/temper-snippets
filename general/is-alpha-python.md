---
title: "Is Alpha Only"
description: "Check if a string contains only alphabetic characters."
topic: "validation"
relatedSlugs:
  - "is-alpha-javascript"
  - "is-alpha-ruby"
  - "is-alpha-php"
  - "is-alpha-bash"
parameters:
  - name: "str"
    type: "string"
    default: "HelloWorld"
    description: "The string to check"
exampleOutputs:
  - input: { "str": "HelloWorld" }
    output: "True"
  - input: { "str": "Hello123" }
    output: "False"
  - input: { "str": "Hello World" }
    output: "False"
---

```python
str.isalpha()
```
