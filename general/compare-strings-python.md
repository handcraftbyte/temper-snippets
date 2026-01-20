---
title: "Compare Strings (Case Insensitive)"
description: "Compare two strings ignoring case differences."
topic: "strings"
relatedSlugs:
  - "compare-strings-javascript"
  - "compare-strings-ruby"
  - "compare-strings-php"
  - "compare-strings-bash"
parameters:
  - name: "str1"
    type: "string"
    default: "Hello"
    description: "First string to compare"
  - name: "str2"
    type: "string"
    default: "HELLO"
    description: "Second string to compare"
exampleOutputs:
  - input: { "str1": "Hello", "str2": "HELLO" }
    output: "True"
  - input: { "str1": "foo", "str2": "bar" }
    output: "False"
---

```python
str1.lower() == str2.lower()
```
