---
title: "Reverse String"
description: "Reverse the characters in a string"
topic: "strings"
relatedSlugs:
  - "reverse-string-javascript"
  - "reverse-string-ruby"
  - "reverse-string-php"
  - "reverse-string-bash"
parameters:
  - name: "str"
    type: "string"
    default: "Hello World"
    description: "The string to reverse"
exampleOutputs:
  - input: { "str": "Hello World" }
    output: "dlroW olleH"
  - input: { "str": "Python" }
    output: "nohtyP"
---

```python
str[::-1]
```
